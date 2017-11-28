library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity bancoPipeline is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5
    );

-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;

        inst       : in std_logic_vector((larguraDados-1) downto 0) := (others => '0');
        readData1   : in std_logic_vector((larguraDados-1) downto 0) := (others => '0');
        readData2   : in std_logic_vector((larguraDados-1) downto 0) := (others => '0');
        signExtend   : in std_logic_vector((larguraDados-1) downto 0) := (others => '0');
        wb   : in std_logic_vector(1 downto 0) := (others => '0');
        m   : in std_logic_vector(2 downto 0) := (others => '0');
        ex   : in std_logic_vector(3 downto 0) := (others => '0');
        pc   : in std_logic_vector((larguraDados-1) downto 0) := (others => '0');
        instRt   : in std_logic_vector(4 downto 0) := (others => '0');
        instRd   : in std_logic_vector(4 downto 0) := (others => '0');
        addimm   : in std_logic_vector((larguraDados-1) downto 0) := (others => '0');
        zeroFlag   : in std_logic := '0';
        ulaout   : in std_logic_vector((larguraDados-1) downto 0) := (others => '0');
        muxrtrd   : in std_logic_vector(4 downto 0) := (others => '0');
        memdata   : in std_logic_vector((larguraDados-1) downto 0) := (others => '0');


        instout   : out std_logic_vector((larguraDados-1) downto 0);
        readData1out   : out std_logic_vector((larguraDados-1) downto 0);
        readData2out   : out std_logic_vector((larguraDados-1) downto 0);
        signExtendout   : out std_logic_vector((larguraDados-1) downto 0);
        wbout   : out std_logic_vector(1 downto 0);
        mout   : out std_logic_vector(2 downto 0);
        exout   : out std_logic_vector(3 downto 0);
        pcout   : out std_logic_vector((larguraDados-1) downto 0);
        instRtout   : out std_logic_vector(4 downto 0);
        instRdout   : out std_logic_vector(4 downto 0);
        addimmout   : out std_logic_vector((larguraDados-1) downto 0);
        zeroFlagout   : out std_logic;
        ulaoutout   : out std_logic_vector((larguraDados-1) downto 0);
        muxrtrdout   : out std_logic_vector(4 downto 0);
        memdataout   : out std_logic_vector((larguraDados-1) downto 0)


    );
end entity;

architecture behaviour of bancoPipeline is
  signal insttemp, readData1temp, readData2temp, pctemp, addimmtemp,
         ulaouttemp, memdatatemp, signExtendtemp : std_logic_vector(31 downto 0);
  signal extemp : std_logic_vector(3 downto 0);
  signal wbtemp : std_logic_vector(1 downto 0);
  signal mtemp : std_logic_vector(2 downto 0);
  signal instRttemp, instRdtemp, muxRtRdtemp : std_logic_vector(4 downto 0);
  signal zeroFlagtemp : std_logic;

begin

	process (clk)
	begin
		if (rising_edge(clk)) then
      insttemp <= inst;
      readData1temp <= readData1;
      readData2temp <=readData2;
      signExtendtemp <= signExtend;
      wbtemp <= wb;
      mtemp <= m;
      extemp <= ex;
      pctemp <= pc;
      instRttemp <= instRt;
      instRdtemp <= instRd;
      addimmtemp <= addimm;
      ulaouttemp <= ulaout;
      muxrtrdtemp <= muxrtrd;
      memdatatemp <= memdata;
      zeroFlagtemp	<= zeroFlag;
    end if;
	end process;


  instout <= insttemp;
  readData1out <= readData1temp;
  readData2out <= readData2temp;
  signExtendout <= signExtendtemp;
  wbout <= wbtemp;
  mout <= mtemp;
  exout <= extemp;
  pcout <= pctemp;
  instRtout <= instRttemp;
  instRdout <= instRdtemp;
  addimmout <= addimmtemp;
  ulaoutout <= ulaouttemp;
  muxrtrdout <= muxRtRdtemp;
  memdataout <= memdatatemp;
  zeroFlagout <= zeroFlagtemp;


end behaviour;
