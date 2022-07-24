library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity AND1 is
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
CARRY : out STD_LOGIC);
end AND1;
architecture Behavioral of AND1 is
begin
CARRY <= A AND B;
end Behavioral;
