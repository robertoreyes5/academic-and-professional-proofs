library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--- descripcion de la entidad ---
entity practicabcd is
	port(
	reset, clk,pausa: in std_logic;
	uni, dec	 : out std_logic_vector(3 downto 0));
end entity  practicabcd ;

--- descripcion de la arquitectua ---
architecture decodd of practicabcd is
    signal contUni : std_logic_vector(3 downto 0);
    signal contDec : std_logic_vector(3 downto 0);
begin
    process (clk, reset,pausa)
    begin
        if (reset='0') then
				contUni <= "0000";
            contDec <= "0000";
				elsif (pausa='0') then
				contUni <= contUni;
				contDec <= contDec;

        elsif clk'event and clk = '1' then
              if (contUni = "1001") then
                  contUni <= "0000";
                  contDec <= contDec + 1;


                  if (contDec = "0101") then
                      contDec <= "0000";
                  end if;
              else
              contUni <= contUni + 1;
              end if;
        end if;
    end process;
    uni <= contUni;
    dec  <= contDec;
end decodd;