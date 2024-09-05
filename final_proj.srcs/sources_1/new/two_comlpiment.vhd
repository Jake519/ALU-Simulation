----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2022 02:19:19 PM
-- Design Name: 
-- Module Name: two_comlpiment - Behavioral
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

entity two_comlpiment is
    Port ( a_in : in STD_LOGIC_VECTOR (3 downto 0);
           a_out : out STD_LOGIC_VECTOR (3 downto 0);
           overflow : out STD_LOGIC);
end two_comlpiment;

architecture Behavioral of two_comlpiment is

signal one, a_comp: STD_LOGIC_VECTOR (3 downto 0);

component ripple_carry_adder
    Port ( 
    x : in STD_LOGIC_VECTOR (3 downto 0);
    y : in STD_LOGIC_VECTOR (3 downto 0);
    k : in STD_LOGIC;
    overflow : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR (3 downto 0));
end component;

begin

one <= "0001";

a_comp(0) <= not a_in(0);
a_comp(1) <= not a_in(1);
a_comp(2) <= not a_in(2);
a_comp(3) <= not a_in(3);

add_one: ripple_carry_adder port map(x=>a_comp, y=>one, k=>'0', overflow=>overflow, sum=>a_out);

end Behavioral;
