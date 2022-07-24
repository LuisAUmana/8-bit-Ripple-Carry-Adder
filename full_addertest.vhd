library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity full_addertest is
--Port();
end full_addertest;
architecture Behavioral of full_addertest is
component full_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end component;
signal a :std_logic :='0';
signal b :std_logic :='0';
signal Cin:std_logic :='0';
signal sum :std_logic;
signal carry :std_logic ;
begin
uut:full_adder port map
    (a=>a,b=>b,Cin=>Cin,sum=>sum,carry=>carry);
stim_proc: process
begin
a <= '0';
b <= '0';
Cin <= '0';
wait for 125 ns;

a <= '0';
b <= '0';
Cin <= '1';
wait for 125 ns;

a <= '0';
b <= '1';
Cin <= '0';
wait for 125 ns;

a <= '0';
b <= '1';
Cin <= '1';
wait for 125 ns;

a <= '1';
b <= '0';
Cin <= '0';
wait for 125 ns;

a <= '1';
b <= '0';
Cin <= '1';
wait for 125 ns;

a <= '1';
b <= '1';
Cin <= '0';
wait for 125 ns;

a <= '1';
b <= '1';
Cin <= '1';
wait for 125 ns;
end process;
end Behavioral;
