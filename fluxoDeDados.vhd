library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fluxoDeDados is
  port (
    clk : in std_logic;
    regTestEnd : in std_logic_vector (4 downto 0);
	  memTestEnd : in std_logic_vector (31 downto 0);
    regTestOut, memTestOut : out std_logic_vector (31 downto 0);
    readData1Out, readData2Out, writeData,
    PCOutTeste, ULAINA, ULAINB, ULAOUTTESTE, ULAOUTTESTE1, beqadder,
    beqadder2, beqadderout, signExtendOutteste : out std_logic_vector(31 downto 0);
    word : out std_logic_vector(9 downto 0);
	  ULASEL : out std_logic_vector(3 downto 0);
    EXTESTE : out std_logic_vector(3 downto 0);
    WBTESTE : out std_logic_vector(1 downto 0);
    MTESTE  : out std_logic_vector(2 downto 0);
    rt, rs, rd : out std_logic_vector(4 downto 0)
  );
end entity;

architecture fluxoDeDadosarch of fluxoDeDados is

  signal      dataMemOut, readData1, readData2, extendedSignalOut, readMemData, PCOut,
              muxBEQOut, muxRtImmOut, ULAOut, muxJumpOut, muxULAMemOut, adderPCOut, adderBEQOut,
              instMemOut, inst, immShifterOut, four, muxJumpIn, signExtendOut,
              readData22, insttemp, ulaouttemp, adderpctemp1, signExtendtemp,
              addimmtemp, memdatatemp, readData1temp, readData2temp,
				  readMemDatatemp, adderBEQtemp, adderpctemp, ulaout1 : std_logic_vector (31 downto 0);

  signal      instRs, instRt, instRd, muxRtRdOut, muxRtRdtemp,
              instRttemp, instRstemp, instRdtemp, muxRtRdOut1
              : std_logic_vector (4 downto 0);

  signal      instImmBig, instShifterOut : std_logic_vector (25 downto 0);

  signal      instImmSmall : std_logic_vector (15 downto 0);

  signal      instFunct, instOP : std_logic_vector (5 downto 0);

  signal      ULACtrl, extemp, ex : std_logic_vector (3 downto 0);

  signal      ULAOP, wbtemp, wb1, wb2, wb : std_logic_vector (1 downto 0);

  signal      mtemp, m1, m : std_logic_vector(2 downto 0);

  signal      memReadEnb, memWriteEnb, BEQ, muxRtRdSel, muxJumpSel,
              regWriteEnb, muxRtImmSel, muxULAMemSel, zeroFlag,
              ANDBeqOut, zeroFlagtemp: std_logic;


begin

  muxJumpIn <= adderPCOut(31 downto 28) & "00" & instImmBig(25 downto 0);
  instRttemp <= instMemOut(20 downto 16);
  instRdtemp <= instMemOut(15 downto 11);
  instRstemp <= instMemOut(25 downto 21);
  instImmBig <= instMemOut(25 downto 0);
  instImmSmall <= instMemOut(15 downto 0);
  instOP <= instMemOut(31 downto 26);
  instFunct <= signExtendOut(5 downto 0);
  readData1Out <= readData1temp;
  readData2Out <= readData2temp;
  writeData <= muxULAMemOut;
  ULAINA <= readData1;
  ULAINB <= muxRtImmOut;
  ULAOUTTESTE <= ULAOut;
  ULAOUTTESTE1 <= ulaout1;
  ULASEL <= ULACtrl;
  extemp <= muxRtRdSel & ULAOP & muxRtImmSel;
  mtemp <= memReadEnb & memWriteEnb & BEQ;
  wbtemp <= regWriteEnb & muxULAMemSel;
  EXTESTE <= ex;
  MTESTE <= m1;
  WBTESTE <= wb2;
  rt <= instRttemp;
  rs <= instRstemp;
  rd <= muxRtRdOut1;
  signExtendOutteste <= signExtendOut;

  -- variable INST : std_logic_vector(31 downto 0) :=  "000000" & "00001" & "00010" & "00100" & "00000000000";
  -- variable INSTTWO		  : std_logic_vector(31 downto 0) :=
  -- "100011" & "00100" & "00101" & "0000000000000001";
  -- variable INSTTHREE		  : std_logic_vector(31 downto 0) :=
  -- "101011" & "00100" & "00101" & "0000000000000011";
  -- variable INSTFOUR		  : std_logic_vector(31 downto 0) :=
  -- "000100" & "01000" & "01001" & "0000000000000001";
  -- variable INSTFIVE		  : std_logic_vector(31 downto 0) :=
  -- "000010" & "00000000000000000000000001";
  --
  -- -- Build a 2-D array type for the RAM
  -- subtype wt is std_logic_vector(31 downto 0);
  -- type mt is array(15 downto 0) of wt;
  --
  -- function init_inst return mt is
  --   variable tmp : mt := (others => (others => '0'));
  -- begin
  --   -- Initialize each address with the address itself
  --   tmp(0) := INST;
  --   tmp(1) := (others => '0');
  --   tmp(2) := (others => '0');
  --   tmp(3) := (others => '0');
  --   tmp(4) := (others => '0');
  --   tmp(5) := INSTTWO;
  --   tmp(6) := std_logic_vector(to_signed(1965, DATA_WIDTH));
  --   tmp(7) := std_logic_vector(to_signed(8, DATA_WIDTH));
  --   tmp(8) := std_logic_vector(to_signed(4, DATA_WIDTH));
  --   tmp(9) := std_logic_vector(to_signed(4, DATA_WIDTH));
  --   return tmp;
  -- end init_inst;
  --
  -- function init_ram return memory_t is
  --   variable tmp : memory_t := (others => (others => '0'));
  -- begin
  --   -- Initialize each address with the address itself
  --   tmp(0) := std_logic_vector(to_signed(0, larguraDados));
  --   tmp(1) := std_logic_vector(to_signed(8, larguraDados));
  --   tmp(2) := std_logic_vector(to_signed(-3, larguraDados));
  --   tmp(3) := std_logic_vector(to_signed(3, larguraDados));
  --   tmp(4) := std_logic_vector(to_signed(15, larguraDados));
  --   tmp(5) := std_logic_vector(to_signed(404, larguraDados));
  --   tmp(6) := std_logic_vector(to_signed(1965, larguraDados));
  --   tmp(8) := std_logic_vector(to_signed(97, larguraDados));
  --   tmp(9) := std_logic_vector(to_signed(97, larguraDados));
  --   return tmp;
  -- end;


  word <= muxJumpSel & muxRtRdSel & regWriteEnb & muxRtImmSel
          & muxULAMemSel & BEQ & memReadEnb & memWriteEnb & ULAOP;


  -- insttemp := init_inst;
  -- readMemDatatemp := init_ram;

  four <= std_logic_vector(to_unsigned(1, four'length));
  ANDBeqOut <= zeroFlag AND m1(0);

  PC          : entity work.registradorGenerico port map
              (DIN => muxJumpOut, DOUT => PCOut, CLK => clk);

  PCOutTeste <= PCOut;

  InstMem     : entity work.RAM port map
              (clk => clk, addr => to_integer(signed(PCOut)),
              re => '1', we => '0', q => insttemp, data => muxJumpIn);

  MuxRtRd     : entity work.MUX generic map (DATA_WIDTH => 5)
                port map (A => instRt, B => instRd, C => muxRtRdtemp,
                SEL => ex(3));

  BancoReg    : entity work.bancoRegistradores port map
              (clk => clk, enderecoA => instRstemp, enderecoB => instRttemp,
              enderecoC => muxRtRdOut1, dadoEscritaC => muxULAMemOut,
              escreveC => wb2(1), saidaA => readData1temp, saidaB => readData2temp,
              endTeste => regTestEnd, saidaTeste => regTestOut);

  muxRtImm    : entity work.MUX port map
              (SEL => ex(0), A => readData2, B => signExtendOut,
              C => muxRtImmOut);

  ULA         : entity work.ULA port map
              (A => readData1, B => muxRtImmOut, Sel => ULACtrl,
              zeroFlag => zeroFlagtemp, C => ulaouttemp);

  SigExt      : entity work.signExtend port map
              (A => instImmSmall, B => signExtendtemp);

  MemDados    : entity work.RAM port map
              (clk => clk, addr => to_integer(signed(ULAOut)), data => readData22,
              re => m1(2), we => m1(1), q => readMemDatatemp,
              endTeste => memTestEnd, saidaTeste => memTestOut);

  MuxULAMem   : entity work.MUX port map
              (A => ulaout1, B => readMemData, SEL => wb2(0),
              C => muxULAMemOut);

  MuxBEQ      : entity work.MUX port map
              (SEL => ANDBeqOut, A => adderpctemp, B => adderBEQOut,
              C => muxBEQOut);

  AdderBEQ    : entity work.ULA port map
              (A => adderPCOut, B => signExtendOut, C => adderBEQtemp,
              SEL => "0010");

  beqadder <= immShifterOut;
  beqadder2 <= adderPCOut;
  beqadderout <= adderBEQOut;

  ShifterImm  : entity work.shifter port map
              (A => signExtendOut, B => immShifterOut);

  AdderPC     : entity work.ULA port map
              (A => PCOut, B => four, SEL => "0010", C => adderpctemp);

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
              (clk => clk, OP => ex(2 downto 1), funct => instFunct, ctrl => ULACtrl);

  ifid        : entity work.bancoPipeline port map
              (pc => adderpctemp, pcout => adderpctemp1, inst=> insttemp,
              instout => instMemOut, clk => clk);

  idex        : entity work.bancoPipeline port map
              (pc => adderpctemp1, pcout => adderpcout, readData1 => readData1temp,
              readData1out => readData1, readData2 => readData2temp,
              readData2out => readData2, signExtend => signExtendtemp,
              signExtendOut => signExtendOut, instRt => instRttemp,
              instRtOut => instRt, instRd => instRdtemp, instRdOut => instRd,
              wb => wbtemp, wbout => wb, m => mtemp, mout => m,
              ex => extemp, exout => ex, clk => clk);

  exmem       : entity work.bancoPipeline port map
              (wb => wb, wbout => wb1, m => m, mout => m1, addimm => adderBEQtemp,
              addimmout => adderBEQOut, zeroFlag => zeroFlagtemp,
              zeroFlagout => zeroFlag, ulaout => ulaouttemp, ulaoutout => ulaout,
              readData2 => readData2, readData2out => readData22,
              muxRtRd => muxRtRdtemp, muxRtRdOut => muxRtRdOut, clk => clk);

  memwb          : entity work.bancoPipeline port map
              (wb => wb1, wbout => wb2, memdata => readMemDatatemp,
              memdataout => readMemData, ulaout => ulaout, ulaoutout => ulaout1,
              muxRtRd => muxRtRdOut, muxRtRdOut => muxRtRdOut1, clk => clk);

end architecture;
