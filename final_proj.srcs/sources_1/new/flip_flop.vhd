----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2022 10:26:36 AM
-- Design Name: 
-- Module Name: flip_flop - Behavioral
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

entity flip_flop is
    Port ( d : in STD_LOGIC;
           CLK : in STD_LOGIC;
           load : in STD_LOGIC;
           Q : inout STD_LOGIC;
           Q_inv : inout STD_LOGIC);
end flip_flop;

architecture Behavioral of flip_flop is

signal d2, a1, a2: STD_LOGIC;

begin

d2 <= d and load;
a1 <= d2 nand CLK;
a2 <= (not d2) nand CLK;
Q <= a1 nand Q_inv;
Q_inv <= a2 nand Q;

end Behavioral;
