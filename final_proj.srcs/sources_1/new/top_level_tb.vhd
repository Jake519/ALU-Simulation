----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2022 01:08:04 PM
-- Design Name: 
-- Module Name: top_level_tb - Behavioral
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

entity top_level_tb is
--  Port ( );
end top_level_tb;

architecture Behavioral of top_level_tb is

component top_level_architecture
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (3 downto 0);
           reset : in STD_LOGIC;
           load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           flag_out : inout STD_LOGIC;
           res_out : inout STD_LOGIC_VECTOR (3 downto 0));
end component;

signal A, B, sel, res_out: STD_LOGIC_VECTOR (3 downto 0);
signal reset, load, CLK, flag_out: STD_LOGIC;

--Clock
constant clk_period : time := 50ns;

begin

UUT: top_level_architecture port map(
    A => A,
    B => B,
    sel => sel,
    reset => reset,
    load => load,
    CLK => CLK,
    flag_out => flag_out,
    res_out => res_out
);

clk_process :process
    begin
        CLK <= '0';
        wait for clk_period/2;
        CLK <= '1';
        wait for clk_period/2;
    end process;
    
--Begin Tests--
tb1 : process
begin

load <= '0';
reset <= '1';
wait for 25ns;
load <= '1';
reset <= '0';
sel <= "0000";
A <= "0000";
B <= "0000";
wait for 25ns;
load <= '0';
----Compliment A
--sel <= "0001";
--A <= "0101";
--B <= "0101";
--load <= '1';
--reset <= '0';
--wait for 50ns;
--reset <= '1';
--wait for 50ns;
--reset <= '0';
--load <= '0';
--wait for 50ns;
----Compliment B
--sel <= "0010";
--A <= "0101";
--B <= "0101";
--load <= '1';
--reset <= '0';
--wait for 50ns;
--reset <= '1';
--wait for 50ns;
--reset <= '0';
--load <= '0';
--wait for 50ns;

----2'S Complement
--wait for 50ns;
--sel <= "0011";
--A <= "0101";
--B <= "0101";
--load <= '1';
--reset <= '0';
--wait for 50ns;
--load <= '0';
--wait for 50ns;

--sel <= "0100";
--A <= "0101";
--B <= "0101";
--load <= '1';
--reset <= '0';
--wait for 50ns;
--load <= '0';
--wait for 50ns;

--sel <= "0011";
--A <= "0101";
--B <= "0101";
--load <= '1';
--reset <= '0';
--wait for 50ns;
--load <= '0';
--wait for 50ns;

----Inc, Add, Subtract
--wait for 50ns;
--load <= '1';
--reset <= '0';
--sel <= "0101";
--A <= "0011";
--B <= "1111";
--wait for 50ns;
--load <= '0';
--wait for 50ns;

--sel <= "0110";
--A <= "0101";
--B <= "1111";
--load <= '1';
--reset <= '0';
--wait for 50ns;
--load <= '0';
--wait for 50ns;

--sel <= "0111";
--A <= "0101";
--B <= "1111";
--load <= '1';
--reset <= '0';
--wait for 50ns;
--load <= '0';
--wait for 50ns;

--sel <= "0111";
--A <= "0101";
--B <= "0111";
--load <= '1';
--reset <= '0';
--wait for 50ns;
--load <= '0';
--wait for 50ns;

--sel <= "1000";
--A <= "0101";
--B <= "1111";
--load <= '1';
--reset <= '0';
--wait for 50ns;
--load <= '0';
--wait for 50ns;

----Multiply
--wait for 50ns;
--load <= '1';
--reset <= '0';
--sel <= "1001";
--A <= "0011";
--B <= "0010";
--wait for 50ns;
--load <= '0';
--wait for 50ns;

--load <= '1';
--reset <= '0';
--sel <= "1001";
--A <= "0011";
--B <= "1111";
--wait for 50ns;
--load <= '0';
--wait for 50ns;

--load <= '1';
--reset <= '0';
--sel <= "1001";
--A <= "0111";
--B <= "0111";
--wait for 50ns;
--load <= '0';
--wait for 50ns;

----Compare
--wait for 50ns;
--load <= '1';
--reset <= '0';
--sel <= "1010";
--A <= "0111";
--B <= "0101";
--wait for 50ns;
--load <= '0';
--wait for 50ns;

--load <= '1';
--reset <= '0';
--sel <= "1010";
--A <= "0101";
--B <= "0111";
--wait for 50ns;
--load <= '0';
--wait for 50ns;

--load <= '1';
--reset <= '0';
--sel <= "1011";
--A <= "0111";
--B <= "0101";
--wait for 50ns;
--load <= '0';
--wait for 50ns;


--Bitwise
wait for 50ns;
load <= '1';
reset <= '0';
sel <= "1100";
A <= "0111";
B <= "0101";
wait for 50ns;
load <= '0';
wait for 50ns;

load <= '1';
reset <= '0';
sel <= "1101";
A <= "0010";
B <= "0000";
wait for 50ns;
load <= '0';
wait for 50ns;

load <= '1';
reset <= '0';
sel <= "1110";
A <= "0101";
B <= "0101";
wait for 50ns;
load <= '0';
wait for 50ns;

load <= '1';
reset <= '0';
sel <= "1111";
A <= "0111";
B <= "0101";
wait for 50ns;
load <= '0';
wait for 50ns;

wait; --Wait Forever
end process;

end Behavioral;
