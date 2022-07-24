library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity half_addertest is
--(Port)
end half_addertest;

architecture Behavioral of half_addertest is
component half_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end component;
signal a :std_logic :='0';
signal b :std_logic :='0';
signal sum :std_logic ;
signal carry :std_logic ;

begin
uut:half_adder port map
    (a=>a,b=>b,sum=>sum,carry=>carry);
stim_proc: process
    begin
        a <= '0';
        b <= '0';
        wait for 100ns;
        a <= '0';
        b <= '1';
         wait for 100ns;
        a <= '1';
        b <= '0';
         wait for 100ns;
        a <= '1';
        b <= '1';
         wait for 100ns;
   end process;
end Behavioral;
