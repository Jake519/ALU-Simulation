----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2022 01:56:39 PM
-- Design Name: 
-- Module Name: ff_output - Behavioral
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

entity ff_output is
    Port ( d : in STD_LOGIC;
           r : in STD_LOGIC;
           dout : inout STD_LOGIC);
end ff_output;

architecture Behavioral of ff_output is

signal a1, a2, b1: STD_LOGIC;

begin

a2 <= (not r) and dout;
a1 <= a2 or d;
b1 <= a1 nor dout;
dout <= (not a1) nor b1;

end Behavioral;
