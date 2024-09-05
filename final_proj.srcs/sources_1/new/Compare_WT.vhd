----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2022 10:19:49 AM
-- Design Name: 
-- Module Name: Compare_WT - Behavioral
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

entity Compare_WT is
    Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           Y : in STD_LOGIC_VECTOR (3 downto 0);
           Result : out STD_LOGIC);
end Compare_WT;

architecture Behavioral of Compare_WT is

signal num_x, num_y, s_out: STD_LOGIC_VECTOR (3 downto 0);
signal useless: STD_LOGIC;

component ripple_carry_adder
    Port ( 
    x : in STD_LOGIC_VECTOR (3 downto 0);
    y : in STD_LOGIC_VECTOR (3 downto 0);
    k : in STD_LOGIC;
    overflow : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR (3 downto 0));
end component;

begin

PROCESS(X)
BEGIN
CASE X IS
WHEN "0000" =>
    num_x <= "0000";
WHEN "0001" =>
    num_x <= "0001";
WHEN "0010" =>
    num_x <= "0001";
WHEN "0011" =>
    num_x <= "0010";
WHEN "0100" =>
    num_x <= "0001";
WHEN "0101" =>
    num_x <= "0010";
WHEN "0110" =>
    num_x <= "0010";
WHEN "0111" =>
    num_x <= "0011";
WHEN "1000" =>
    num_x <= "0001";
WHEN "1001" =>
    num_x <= "0010";
WHEN "1010" =>
    num_x <= "0010";
WHEN "1011" =>
    num_x <= "0011";
WHEN "1100" =>
    num_x <= "0010";
WHEN "1101" =>
    num_x <= "0011";
WHEN "1110" =>
    num_x <= "0011";
WHEN OTHERS =>
    num_x <= "0100";
END CASE;
END PROCESS;

PROCESS(Y)
BEGIN
CASE Y IS
WHEN "0000" =>
    num_y <= "0000";
WHEN "0001" =>
    num_y <= "0001";
WHEN "0010" =>
    num_y <= "0001";
WHEN "0011" =>
    num_y <= "0010";
WHEN "0100" =>
    num_y <= "0001";
WHEN "0101" =>
    num_y <= "0010";
WHEN "0110" =>
    num_y <= "0010";
WHEN "0111" =>
    num_y <= "0011";
WHEN "1000" =>
    num_y <= "0001";
WHEN "1001" =>
    num_y <= "0010";
WHEN "1010" =>
    num_y <= "0010";
WHEN "1011" =>
    num_y <= "0011";
WHEN "1100" =>
    num_y <= "0010";
WHEN "1101" =>
    num_y <= "0011";
WHEN "1110" =>
    num_y <= "0011";
WHEN OTHERS =>
    num_y <= "0100";
END CASE;
END PROCESS;

subtract: ripple_carry_adder port map(x=>num_x, y=>num_y, k=>'1', overflow=>useless, sum=>s_out);

PROCESS(s_out)
BEGIN
CASE s_out IS
WHEN "0000" =>
    Result <= '0';
WHEN OTHERS =>
    Result <= s_out(3);
END CASE;
END PROCESS;

end Behavioral;
