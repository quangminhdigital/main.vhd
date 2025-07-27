library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity MAIN is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           Y1 : out STD_LOGIC);
end MAIN;

architecture Behavioral of MAIN is
component AND1 
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;
component NOT1 
    Port ( A : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;
component OR1 
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;
component XOR1 
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;
signal S1, S2, S3, S4, S5, S6: STD_LOGIC;
begin
    K1: AND1 PORT MAP (A, B, S1);
    K2: OR1 PORT MAP (C, D , S2);
    K3: NOT1 PORT MAP (S1, S3);
    K4: XOR1 PORT MAP (S3, S2, S4);
    K5: NOT1 PORT MAP (S2, S5);
    K6: AND1 PORT MAP (S5, S1, S6);
    K7: AND1 PORT MAP (S4, S6, Y1);
end Behavioral;
