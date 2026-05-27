library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--- descripcion de la entidad ---
entity tarea1 is
	port(
	reset, clk, x: in std_logic;
	Q				  : out std_logic_vector(3 downto 0));
end entity tarea1 ;

--- descripcion de la arquitectua ---
architecture Behavioral of tarea1 is
	signal contador: std_logic_vector (3 downto 0);
begin
PROCESS (CLK, reset)
begin
	if reset='1' then
		contador <= "0000";
	elsif clk'event and clk = '1' then
		if x = '1' then
			contador <= contador + 1;
			else 
			contador <= contador - 1;
		end if;
	end if; 
	Q <= contador;
END PROCESS;
Q <= contador;
end  Behavioral;