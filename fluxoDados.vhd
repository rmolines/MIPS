library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS is
  port (
  clock : in std_logic
  );
end entity;

architecture MIPSarch of MIPS is

  signal inst, muxRtRdOut, muxULAMemOut, regDataOut1,
         regDataOut2,
         sigExt, nextPC, PCOut, memDataOut,
         memAddr, muxRtImmOut, ULAPCOut, ULABEQOut,
         muxBEQOut, muxNextPCOut: std_logic_vector (31 downto 0);
  signal muxBeqJmpSel, muxRtRdSel, writeEnableReg, muxRtImmSel,
         muxULAMemSel, BEQ, writeEnableMem, BEQAndOut : std_logic;
  signal ULAOp : std_logic_vector (1 downto 0);
  signal ULACtrl : std_logic_vector (3 downto 0);

begin
  MainULA        : entity work.ULA port map (
    A => regDataOut1, B => muxRtImmOut, OP => ULACtrl, C => memAddr
  );
  RegBank        : entity work.bancoRegistradores
  generic map (larguraDados => 32, larguraEndBancoRegs => 3);
  port map (
    enderecoA => inst(25 downto 21), enderecoB => inst(20 downto 16),
    enderecoC => muxRtRdOut, dadoEscritaC => muxULAMemOut,
    escreveC => writeEnableReg, saidaA => regDataOut1,
    saidaB => regDataOut2, clk => clock
  );
  


end architecture;
