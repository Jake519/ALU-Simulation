----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2022 08:36:12 PM
-- Design Name: 
-- Module Name: ripple_carry_adder - Structure
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

entity ripple_carry_adder is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           k : in STD_LOGIC;
           overflow : out STD_LOGIC;
           sum : out STD_LOGIC_VECTOR (3 downto 0));
end ripple_carry_adder;

architecture Structure of ripple_carry_adder is

signal c1,c2,c3,c4: STD_LOGIC;

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

Stage0: full_adder port map(x=>x(0), y=>y(0), cin=>k, k=>k, sum=>sum(0), cout=>c1);
Stage1: full_adder port map(x=>x(1), y=>y(1), cin=>c1, k=>k, sum=>sum(1), cout=>c2);
Stage2: full_adder port map(x=>x(2), y=>y(2), cin=>c2, k=>k, sum=>sum(2), cout=>c3);
Stage3: full_adder port map(x=>x(3), y=>y(3), cin=>c3, k=>k, sum=>sum(3), cout=>c4);

overflow <= c4 xor c3;

end Structure;
