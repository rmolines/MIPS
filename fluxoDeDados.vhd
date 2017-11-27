library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fluxoDeDados is
  port (
    clk : in std_logic;
    regTestEnd : in std_logic_vector (4 downto 0);
	  memTestEnd : in std_logic_vector (31 downto 0);
    regTestOut, memTestOut : out std_logic_vector (31 downto 0);
    instRsOut, instRtOut, instRdOut : out std_logic_vector(4 downto 0);
    readData1Out, readData2Out, writeData,
    PCOutTeste, ULAINA, ULAINB, ULAOUTTESTE, beqadder,
    beqadder2, beqadderout : out std_logic_vector(31 downto 0);
    word : out std_logic_vector(9 downto 0);
	  ULASEL : out std_logic_vector(3 downto 0)
  );
end entity;

architecture fluxoDeDadosarch of fluxoDeDados is

  signal      dataMemOut, readData1, readData2, extendedSignalOut, readMemData, PCOut,
              muxBEQOut, muxRtImmOut, ULAOut, muxJumpOut, muxULAMemOut, adderPCOut, adderBEQOut,
              instMemOut, inst, immShifterOut, four, muxJumpIn, signExtendOut,
              ifid, idex, exmem,  : std_logic_vector (31 downto 0);

  signal      instRs, instRt, instRd, muxRtRdOut   : std_logic_vector (4 downto 0);

  signal      instImmBig, instShifterOut : std_logic_vector (25 downto 0);

  signal      instImmSmall : std_logic_vector (15 downto 0);

  signal      instFunct, instOP : std_logic_vector (5 downto 0);

  signal      ULACtrl : std_logic_vector (3 downto 0);

  signal      ULAOP : std_logic_vector (1 downto 0);

  signal      memReadEnb, memWriteEnb, BEQ, muxRtRdSel, muxJumpSel,
              regWriteEnb, muxRtImmSel, muxULAMemSel, zeroFlag,
              ANDBeqOut: std_logic;


begin

  muxJumpIn <= adderPCOut(31 downto 28) & instShifterOut(25 downto 0) & "00";
  instRt <= instMemOut(20 downto 16);
  instRd <= instMemOut(15 downto 11);
  instRs <= instMemOut(25 downto 21);
  instImmBig <= instMemOut(25 downto 0);
  instImmSmall <= instMemOut(15 downto 0);
  instOP <= instMemOut(31 downto 26);
  instFunct <= instMemOut(5 downto 0);
  instRtOut <= instRt;
  instRsOut <= instRs;
  instRdOut <= instRd;
  readData1Out <= readData1;
  readData2Out <= readData2;
  writeData <= muxULAMemOut;
  ULAINA <= readData1;
  ULAINB <= muxRtImmOut;
  ULAOUTTESTE <= ULAOut;
  ULASEL <= ULACtrl;


  word <= muxJumpSel & muxRtRdSel & regWriteEnb & muxRtImmSel
          & muxULAMemSel & BEQ & memReadEnb & memWriteEnb & ULAOP;




  four <= std_logic_vector(to_unsigned(1, four'length));
  ANDBeqOut <= zeroFlag AND BEQ;

  PC          : entity work.registradorGenerico port map
              (DIN => muxJumpOut, DOUT => PCOut, CLK => clk);

  PCOutTeste <= PCOut;

  InstMem     : entity work.RAM port map
              (clk => clk, addr => to_integer(signed(PCOut)),
              re => '1', we => '0', q => instMemOut, data => muxJumpIn);

  MuxRtRd     : entity work.MUX generic map (DATA_WIDTH => 5)
                port map (A => instRt, B => instRd, C => muxRtRdOut,
                SEL => muxRtRdSel);

  BancoReg    : entity work.bancoRegistradores port map
              (clk => clk, enderecoA => instRs, enderecoB => instRt,
              enderecoC => muxRtRdOut, dadoEscritaC => muxULAMemOut,
              escreveC => regWriteEnb, saidaA => readData1, saidaB => readData2,
              endTeste => regTestEnd, saidaTeste => regTestOut);

  muxRtImm    : entity work.MUX port map
              (SEL => muxRtImmSel, A => readData2, B => signExtendOut,
              C => muxRtImmOut);

  ULA         : entity work.ULA port map
              (A => readData1, B => muxRtImmOut, Sel => ULACtrl,
              zeroFlag => zeroFlag, C => ULAOut);

  SigExt      : entity work.signExtend port map
              (A => instImmSmall, B => signExtendOut);

  MemDados    : entity work.RAM port map
              (clk => clk, addr => to_integer(signed(ULAOut)), data => readData22,
              re => memReadEnb, we => memWriteEnb, q => readMemData,
              endTeste => memTestEnd, saidaTeste => memTestOut);

  MuxULAMem   : entity work.MUX port map
              (A => ULAOut, B => readMemData, SEL => muxULAMemSel,
              C => muxULAMemOut);

  MuxBEQ      : entity work.MUX port map
              (SEL => ANDBeqOut, A => adderPCOut, B => adderBEQOut,
              C => muxBEQOut);

  AdderBEQ    : entity work.ULA port map
              (A => adderPCOut, B => signExtendOut, C => adderBEQOut,
              SEL => "0010");
  beqadder <= immShifterOut;
  beqadder2 <= adderPCOut;
  beqadderout <= adderBEQOut;

  ShifterImm  : entity work.shifter port map
              (A => signExtendOut, B => immShifterOut);

  AdderPC     : entity work.ULA port map
              (A => PCOut1, B => four, SEL => "0010", C => adderPCOut);

  MuxJUMP     : entity work.MUX port map
              (SEL => muxJumpSel, A => muxBEQOut,
              B => muxJumpIn, C => muxJumpOut);

  ShifterInst : entity work.shifter generic map (DATA_WIDTH => 26)
				  port map
              (A => instImmBig, B => instShifterOut);

  UCFD        : entity work.UCFD port map
              (clk => clk, OP => instOP, muxJump => muxJumpSel,
              muxRtRd => muxRtRdSel, regWriteEnb => regWriteEnb,
              muxRtImm => muxRtImmSel, ULAOP => ULAOP,
              muxULAMem => muxULAMemSel, BEQ => BEQ, memReadEnb => memReadEnb,
              memWriteEnb => memWriteEnb);

  UCULA       : entity work.UCULA port map
              (clk => clk, OP => ULAOP, funct => instFunct, ctrl => ULACtrl);

  ifid        : entity work.bancoPipeline port map
              (pc => pctemp, pcout => pcout, inst=> insttemp,
              instout => instMemOut);

  idex        : entity work.bancoPipeline port map
              (pc => pcout, pcout => pcout1, readData1 => readData1temp,
              readData1out => readData1, readData2 => readData2temp,
              readData2out => readData2, signExtend => signExtendtemp,
              signExtendOut => signExtendOut, instRt => instRttemp,
              instRtOut => instRt, instRd => instRdtemp instRdOut => instRd,
              wb => wbtemp, wbout => wbout, m => mtemp, mout => m,
              ex => extemp, exout => ex, inst => instMemOut,
              instout => instMemOut1);

  ex          : entity work.bancoPipeline port map
              (wb => wb, wbout => wb1, m => m, m => m1, addimm => addimmtemp,
              addimmout => immShifterOut, zeroFlag => zeroFlagtemp,
              zeroFlagout => zeroFlag, ulaout => ulaouttemp, ulaoutout => ulaout,
              readData2 => readData2, readData2out => readData22,
              muxRtRd => muxRtRdtemp, muxRtRdOut => muxRtRdOut);

  wb          : entity work.bancoPipeline port map
              (wb => wb1, wbout => wb2, memdata => readMemDatatemp,
              memdataout => readMemData, ulaout => ulaout, ulaoutout => ulaout1);

end architecture;
