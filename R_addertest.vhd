library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity R_addertest is
--Port();
end R_addertest;
architecture Behavioral of R_addertest is
component R_adder is
    Port ( a : in STD_LOGIC_VECTOR(7 downto 0);
           b : in STD_LOGIC_VECTOR(7 downto 0);
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR(7 downto 0);
           carry : out STD_LOGIC);
end component;

signal a : std_logic_vector(7 downto 0);
signal b : std_logic_vector(7 downto 0);
signal Cin: std_logic;
signal sum : std_logic_vector(7 downto 0);
signal carry : std_logic ;
begin
uut:R_adder port map
    (a=>a,b=>b,Cin=>Cin,sum=>sum,carry=>carry);
stim_proc: process
begin
  a <= "01001010";
  b <= "11110100";
  Cin <= '0';
  wait for 100 ns;
  
  a <= "10010001";
  b <= "01110001";
  Cin <= '1';
  wait for 100 ns;
  
  a <= "11111000";
  b <= "11011000";
  Cin <= '0';
  wait for 100 ns;
  
  a <= "11000101";
  b <= "00100101";
  Cin <= '1';
  wait for 100 ns;
  
  a <= "11110001";
  b <= "10111000";
  Cin <= '0';
  wait for 100 ns;
  
  a <= "01111100";
  b <= "10110001";
  Cin <= '1';
  wait for 100 ns;
  
  a <= "11010011";
  b <= "10110000";
  Cin <= '0';
  wait for 100 ns;
  
  a <= "10110001";
  b <= "01010010";
  Cin <= '1';
  wait for 100 ns;
  
  a <= "01010000";
  b <= "00000110";
  Cin <= '0';
  wait for 100 ns;
  
  a <= "10111101";
  b <= "11111111";
  Cin <= '1';
  wait for 100 ns;
end process;
end Behavioral;
