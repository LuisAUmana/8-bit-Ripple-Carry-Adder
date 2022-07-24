library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity OR1 is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : out STD_LOGIC);
end OR1;
architecture Behavioral of OR1 is
begin
Z <= X OR Y;
end Behavioral;
