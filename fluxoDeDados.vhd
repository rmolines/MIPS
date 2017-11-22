entity  is
  port (
    clk : in std_logic
  );
end entity;

architecture MIPSarch of MIPS is

  signal      dataMemOut, readData1, readData2, extendedSignalOut, readMemData, PCOut,
              muxBEQOut, muxRtImmOut, ULAOut, muxJumpOut, muxULAMemOut, adderPCOut, adderBEQOut,
              instMemOut, inst, immShifterOut, four: std_logic_vector (31 downto 0);

  signal      instRs, instRt, instRd, muxRtRdOut   : std_logic_vector (4 downto 0);

  signal      instImmBig, instShifterOut : std_logic_vector (25 downto 0);

  signal      instImmSmall, signExtendOut : std_logic_vector (15 downto 0);

  signal      instFunct, instOP : std_logic_vector (5 downto 0);

  signal      ULACtrl : std_logic_vector (3 downto 0);

  signal      ULAOP : std_logic_vector (1 downto 0);

  signal      memReadEnb, memWriteEnb, BEQ, muxRtRdSel, muxJumpSel,
              regWriteEnb, muxRtImmSel, muxULAMemSel, zeroFlag
              ANDBeqOut: std_logic;


begin

  instRt <= instMemOut(20 downto 16);
  instRd <= instMemOut(15 downto 11);
  instRs <= instMemOut(25 downto 21);
  instImmBig <= instMemOut(25 downto 0);
  instImmSmall <= instMemOut(15 downto 0);
  instOP <= instMemOut(31 downto 26);
  instFunct <= instMemOut(5 downto 0);

  muxProxPC <= (adderPCOut(31 downto 28)
                & instMemOut(25 downto 0);
                & "00");

  four <= std_logic_vector(to_unsigned(4, four'length))

  PC          : entity work.registradorGenerico port map
              (DIN => muxJumpOut, DOUT => PCOut, CLK => clk);

  InstMem     : entity work.memoria portmap
              (clk => clk, addr => PCOut,
              re => '1', we => '0', q => instMemOut);

  MuxRtRd     : entity work.MUX generic map (DATA_WIDTH => 5)
                port map (A => instRt, B => instRd, C => muxRtImmOut
                SEL => muxRtImmSel);

  BancoReg    : entity work.bancoRegistradores port map
              (clk => clk, enderecoA => instRs, enderecoB => instRt,
              enderecoC => muxRtRdOut, dadoEscritaC => muxULAMemOut,
              escreveC => regWriteEnb, saidaA => readData1, saidaB => readData2);

  muxRtImm    : entity work.MUX port map
              (SEL => muxRtImmSel, A => readData2, B => signExtendOut,
              C => muxRtImmOut);

  ULA         : entity work.ULA port map
              (A => readData1, B => muxRtImmOut, Sel => ULACtrl,
              zeroFlag => zeroFlag, C => ULAOut);

  SigExt      : entity work.signExtend port map
              (A => instImmSmall, B => signExtendOut);

  BEQAnd      : entity work.AND port map
              (A => BEQ, B => zeroFlag, C => ANDBeqOut);

  MemDados    : entity work.memory port map
              (clk => clk, addr => ULAOut, data => readData2,
              re => memReadEnb, we => memWriteEnb, q => readMemData);

  MuxULA      : entity work.ULA port map
              (A => readMemData, B => ULAOut, SEL => muxULAMemSel,
              C => muxULAMemOut);

  MuxBEQ      : entity work.MUX port map
              (SEL => ANDBeqOut, A => adderBEQOut, B => adderPCOut,
              C => muxBEQOut);

  AdderBEQ    : entity work.ULA port map
              (A => adderPCOut, B => immShifterOut, C => adderBEQOut,
              SEL => '00');

  ShifterImm  : entity work.shifter port map
              (A => signExtendOut, B => immShifterOut);

  AdderPC     : entity work.ULA port map
              (A => PCOut, B => four, SEL => '00', C => adderPCOut);

  MuxJUMP     : entity work.MUX port map
              (SEL => muxJumpSel, A => instShifterOut,
              B => muxBEQOut, C => muxJumpOut);

  ShifterInst : entity work.shifter port map
              (A => instImmBig, B => instShifterOut);




end architecture;
