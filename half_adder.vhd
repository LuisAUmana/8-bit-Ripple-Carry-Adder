library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity half_adder is
Port ( a : in STD_LOGIC;
b : in STD_LOGIC;
sum : out STD_LOGIC;
carry : out STD_LOGIC);
end half_adder;
architecture Behavioral of half_adder is
component XOR1 is
port (A, B: in std_logic;
SUM: out std_logic);
end component;
component AND1 is
port (A, B: in std_logic;
CARRY: out std_logic);
end component;
begin
u1: XOR1 port map (A => a, B => b, SUM => sum);
u2: AND1 port map 
