library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity sdram is
generic(
direc:positive:=3;
bits:positive:=4);
port(clk:in std_logic;
dir:in std_logic_vector(direc-1 downto 0);
ies:in std_logic;
iwes:in std_logic;
into:in std_logic;
reset  : in  std_logic;
dati:in std_logic_vector(bits-1 downto 0);
dato:out std_logic_vector(bits-1 downto 0);
count  : out std_logic_vector (2 downto 0));
end entity sdram;
architecture fin of sdram is
type mem is array(0 to(2**direc)-1)of std_logic_vector(bits-1 downto 0);
signal ram:mem;
signal count_i: std_logic_vector (2 downto 0);
signal feedback: std_logic;
begin
feedback <= not(count_i(2) xor count_i(1));          
	process(reset,clk)is begin
		if (reset = '1') then
         count_i <= (others=>'0');
		elsif rising_edge(clk)then
			count_i <= count_i(1 downto 0) & feedback;
			if iwes='1'and into='1'then
				ram(to_integer(unsigned(dir)))<=dati;
			elsif ies='1'and into='1'then
				dato<=ram(to_integer(unsigned(dir)));
		else
			dato<=(others=>'Z');
			end if;
		end if;
	end process;
	count <= count_i;
end architecture fin;