----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2022 07:41:39 PM
-- Design Name: 
-- Module Name: FourBit_FullAdder - Behavioral
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

entity FourBit_FullAdder is
    Port ( x : in STD_LOGIC_VECTOR (7 downto 0);
           y : in STD_LOGIC_VECTOR (7 downto 0);
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           sum : out STD_LOGIC_VECTOR (7 downto 0));
end FourBit_FullAdder;

architecture Structure of FourBit_FullAdder is

signal c1,c2,c3,c4,c5,c6,c7: STD_LOGIC;

component full_adder
    Port(
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    cin : in STD_LOGIC;
    k : in STD_LOGIC;
    sum : out STD_LOGIC;
    cout : out STD_LOGIC);
end component;

begin

Stage0: full_adder port map(x=>x(0), y=>y(0), cin=>cin, k=>'0', sum=>sum(0), cout=>c1);
Stage1: full_adder port map(x=>x(1), y=>y(1), cin=>c1, k=>'0', sum=>sum(1), cout=>c2);
Stage2: full_adder port map(x=>x(2), y=>y(2), cin=>c2, k=>'0', sum=>sum(2), cout=>c3);
Stage3: full_adder port map(x=>x(3), y=>y(3), cin=>c3, k=>'0', sum=>sum(3), cout=>c4);
Stage4: full_adder port map(x=>x(4), y=>y(4), cin=>c4, k=>'0', sum=>sum(4), cout=>c5);
Stage5: full_adder port map(x=>x(5), y=>y(5), cin=>c5, k=>'0', sum=>sum(5), cout=>c6);
Stage6: full_adder port map(x=>x(6), y=>y(6), cin=>c6, k=>'0', sum=>sum(6), cout=>c7);
Stage7: full_adder port map(x=>x(7), y=>y(7), cin=>c7, k=>'0', sum=>sum(7), cout=>cout);

end Structure;
