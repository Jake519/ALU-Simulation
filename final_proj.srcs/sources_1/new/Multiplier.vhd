----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2022 09:47:09 AM
-- Design Name: 
-- Module Name: Multiplier - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Multiplier is
    Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           Y : in STD_LOGIC_VECTOR (3 downto 0);
           F_out : out STD_LOGIC;
           Prod : out STD_LOGIC_VECTOR (3 downto 0));
end Multiplier;

architecture Behavioral of Multiplier is

component FourBit_FullAdder
    Port ( 
    x : in STD_LOGIC_VECTOR (7 downto 0);
    y : in STD_LOGIC_VECTOR (7 downto 0);
    cin : in STD_LOGIC;
    cout : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component two_comlpiment
    Port ( 
    a_in : in STD_LOGIC_VECTOR (3 downto 0);
    a_out : out STD_LOGIC_VECTOR (3 downto 0);
    overflow : out STD_LOGIC);
end component;

signal Stage1_AB, Stage2_AB, Stage3_AB, Stage4_AB, Stage5_AB: STD_LOGIC_VECTOR (3 downto 0);
signal AIn_1, AIn_2, AIn_3, AIn_4, sum1, sum2, sum3: STD_LOGIC_VECTOR (7 downto 0);
signal Overflow1, Overflow2, Overflow3: STD_LOGIC;
--signal Prod_pre: STD_LOGIC_VECTOR (7 downto 0);
signal O_and, O_or, c1, c2, c3, co: STD_LOGIC;

begin

Stage1_AB(0) <= X(0) and Y(0);
Stage1_AB(1) <= X(1) and Y(0);
Stage1_AB(2) <= X(2) and Y(0);
Stage1_AB(3) <= X(3) and Y(0);

Stage2_AB(0) <= X(0) and Y(1);
Stage2_AB(1) <= X(1) and Y(1);
Stage2_AB(2) <= X(2) and Y(1);
Stage2_AB(3) <= X(3) and Y(1);

Stage3_AB(0) <= X(0) and Y(2);
Stage3_AB(1) <= X(1) and Y(2);
Stage3_AB(2) <= X(2) and Y(2);
Stage3_AB(3) <= X(3) and Y(2);

Stage4_AB(0) <= X(0) and Y(3);
Stage4_AB(1) <= X(1) and Y(3);
Stage4_AB(2) <= X(2) and Y(3);
Stage4_AB(3) <= X(3) and Y(3);

compliment: two_comlpiment port map(a_in=>Stage4_AB, a_out=>Stage5_AB, overflow=>co);

AIn_1(0) <= Stage1_AB(0);
AIn_1(1) <= Stage1_AB(1);
AIn_1(2) <= Stage1_AB(2);
AIn_1(3) <= Stage1_AB(3);
AIn_1(4) <= Stage1_AB(3);
AIn_1(5) <= Stage1_AB(3);
AIn_1(6) <= Stage1_AB(3);
AIn_1(7) <= Stage1_AB(3);

AIn_2(0) <= '0';
AIn_2(1) <= Stage2_AB(0);
AIn_2(2) <= Stage2_AB(1);
AIn_2(3) <= Stage2_AB(2);
AIn_2(4) <= Stage2_AB(3);
AIn_2(5) <= Stage2_AB(3);
AIn_2(6) <= Stage2_AB(3);
AIn_2(7) <= Stage2_AB(3);

AIn_3(0) <= '0';
AIn_3(1) <= '0';
AIn_3(2) <= Stage3_AB(0);
AIn_3(3) <= Stage3_AB(1);
AIn_3(4) <= Stage3_AB(2);
AIn_3(5) <= Stage3_AB(3);
AIn_3(6) <= Stage3_AB(3);
AIn_3(7) <= Stage3_AB(3);

AIn_4(0) <= '0';
AIn_4(1) <= '0';
AIn_4(2) <= '0';
AIn_4(3) <= Stage5_AB(0);
AIn_4(4) <= Stage5_AB(1);
AIn_4(5) <= Stage5_AB(2);
AIn_4(6) <= Stage5_AB(3);
AIn_4(7) <= Stage5_AB(3);

Stage0: FourBit_FullAdder port map(x=>AIn_1, y=>AIn_2, cin=>'0', cout=>c1, sum=>sum1);
Stage1: FourBit_FullAdder port map(x=>AIn_3, y=>AIn_4, cin=>'0', cout=>c2, sum=>sum2);
Stage2: FourBit_FullAdder port map(x=>sum1, y=>sum2, cin=>'0', cout=>c3, sum=>sum3);

Prod(0) <= sum3(0);
Prod(1) <= sum3(1);
Prod(2) <= sum3(2);
Prod(3) <= X(3) xor Y(3);

O_and <= ((sum3(6) and sum3(5)) and sum3(4)) and sum3(3);
O_or <= ((sum3(6) or sum3(5)) or sum3(4)) or sum3(3);

F_out <= (sum3(7) and (not O_and)) or ((not sum3(7)) and O_or);

end Behavioral;
