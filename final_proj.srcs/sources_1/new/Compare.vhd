----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2022 01:57:48 PM
-- Design Name: 
-- Module Name: Compare - Behavioral
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

entity Compare is
    Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           Y : in STD_LOGIC_VECTOR (3 downto 0);
           Res : out STD_LOGIC);
end Compare;

architecture Behavioral of Compare is

signal c1, c2, d1, d2, l1, useless: STD_LOGIC;
signal s_out: STD_LOGIC_VECTOR (3 downto 0);

component ripple_carry_adder
    Port ( 
    x : in STD_LOGIC_VECTOR (3 downto 0);
    y : in STD_LOGIC_VECTOR (3 downto 0);
    k : in STD_LOGIC;
    overflow : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR (3 downto 0));
end component;

begin

subtractor: ripple_carry_adder port map(x=>X, y=>Y, k=>'1', overflow=>useless, sum=>s_out);

c1 <= X(3) xor Y(3);
c2 <= (not X(3)) and Y(3);
d1 <= c1 and c2;

PROCESS(s_out)
BEGIN
CASE s_out IS
WHEN "0000" =>
    l1 <= '1';
WHEN OTHERS =>
    l1 <= (not s_out(3));
END CASE;
END PROCESS;

d2 <= (not c1) and l1;
Res <= (not (d1 or d2));

end Behavioral;
