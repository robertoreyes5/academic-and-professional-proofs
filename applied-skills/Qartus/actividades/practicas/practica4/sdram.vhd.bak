library ieee;
    use ieee.std_logic_1164.all;

entity sdram is
  port (
    reset  : in  std_logic;
    clk    : in  std_logic;                    
    count  : out std_logic_vector (2 downto 0)
  );
end entity;

architecture rtl of sdram is
    signal count_i      : std_logic_vector (2 downto 0);
    signal feedback     : std_logic;

begin
    feedback <= not(count_i(2) xor count_i(1));              -- LFSR size 4

    process (reset, clk) 
        begin
        if (reset = '1') then
            count_i <= (others=>'0');
        elsif (rising_edge(clk)) then
            count_i <= count_i(1 downto 0) & feedback;
        end if;
    end process;
    count <= count_i;
end architecture;