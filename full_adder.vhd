library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity full_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end full_adder;
architecture Behavioral of full_adder is
component half_adder is
port(a,b : in std_logic;         
sum,carry : out std_logic);
end component;
component OR1 is
port(X,Y : in std_logic;  
Z : out std_logic);
end component ;
signal S0,S1,S2:std_logic;
begin
U1:half_adder port map(a=>a,b=>b,sum=>S0,carry=>S1);
U2:half_adder port map(a=>S0,b=>Cin,sum=>sum,carry=>S2);
U3:OR1 port map(X=>S2,Y=>S1,Z=>carry);
end Behavioral
