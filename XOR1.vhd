library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity XOR1 is
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
SUM : out STD_LOGIC);
end XOR1;
architecture Behavioral of XOR1 is
begin
SUM <= A XOR B;
end Behavioral;
