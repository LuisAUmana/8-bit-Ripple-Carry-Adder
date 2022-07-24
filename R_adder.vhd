library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity R_adder is
    Port ( a : in STD_LOGIC_VECTOR(7 downto 0);
           b : in STD_LOGIC_VECTOR(7 downto 0);
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR(7 downto 0);
           carry : out STD_LOGIC);
end R_adder;
architecture Behavioral of R_adder is
component half_adder is
port(a,b : in std_logic;         
sum,carry : out std_logic);
end component;
component full_adder is
port(a,b,Cin : in std_logic;         
sum,carry : out std_logic);
end component;
signal output :std_logic_vector(6 downto 0);
begin
U1:half_adder port map(a=>a(0),b=>b(0),sum=>sum(0),carry=>output(0));
U2:full_adder port map(a=>a(1),b=>b(1),Cin=>output(0),sum=>sum(1),carry=>output(1));
U3:full_adder port map(a=>a(2),b=>b(2),Cin=>output(1),sum=>sum(2),carry=>output(2));
U4:full_adder port map(a=>a(3),b=>b(3),Cin=>output(2),sum=>sum(3),carry=>output(3));
U5:full_adder port map(a=>a(4),b=>b(4),Cin=>output(3),sum=>sum(4),carry=>output(4));
U6:full_adder port map(a=>a(5),b=>b(5),Cin=>output(4),sum=>sum(5),carry=>output(5));
U7:full_adder port map(a=>a(6),b=>b(6),Cin=>output(5),sum=>sum(6),carry=>output(6));
U8:full_adder port map(a=>a(7),b=>b(7),Cin=>output(6),sum=>sum(7),carry=>carry);
end Behavioral
