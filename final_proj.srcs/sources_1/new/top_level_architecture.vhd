----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2022 08:26:50 PM
-- Design Name: 
-- Module Name: top_level_architecture - Structure
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

entity top_level_architecture is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           sel : in STD_LOGIC_VECTOR (3 downto 0);
           reset : in STD_LOGIC;
           load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           flag_out : inout STD_LOGIC;
           res_out : inout STD_LOGIC_VECTOR (3 downto 0));
end top_level_architecture;

architecture Structure of top_level_architecture is

signal flags: STD_LOGIC;
signal result: STD_LOGIC_VECTOR (3 downto 0);
signal f_adder,f_subtractor,f_ai,f_bi: STD_LOGIC;
signal r_adder,r_subtractor,r_ai,r_bi: STD_LOGIC_VECTOR (3 downto 0);
signal r_and,r_or,r_xor,r_xnor: STD_LOGIC_VECTOR (3 downto 0);
signal A1, B1, S1: STD_LOGIC_VECTOR (3 downto 0);
signal A_inv, B_inv: STD_LOGIC_VECTOR (3 downto 0);
signal f_comp, f_two_comp_a, f_two_comp_b, f_comp_wt, f_mult: STD_LOGIC;
signal A_two_comp, B_two_comp, mult_res: STD_LOGIC_VECTOR (3 downto 0);
signal useless: STD_LOGIC_VECTOR (3 downto 0);

component ripple_carry_adder
    Port ( 
    x : in STD_LOGIC_VECTOR (3 downto 0);
    y : in STD_LOGIC_VECTOR (3 downto 0);
    k : in STD_LOGIC;
    overflow : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Compare
    Port ( 
    X : in STD_LOGIC_VECTOR (3 downto 0);
    Y : in STD_LOGIC_VECTOR (3 downto 0);
    Res : out STD_LOGIC);
end component;

component two_comlpiment
    Port ( 
    a_in : in STD_LOGIC_VECTOR (3 downto 0);
    a_out : out STD_LOGIC_VECTOR (3 downto 0);
    overflow : out STD_LOGIC);
end component;

component Compare_WT
    Port ( 
    X : in STD_LOGIC_VECTOR (3 downto 0);
    Y : in STD_LOGIC_VECTOR (3 downto 0);
    Result : out STD_LOGIC);
end component;

component Multiplier
    Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           Y : in STD_LOGIC_VECTOR (3 downto 0);
           F_out : out STD_LOGIC;
           Prod : out STD_LOGIC_VECTOR (3 downto 0));
end component;

begin

A1 <= A;
B1 <= B;
S1 <= sel;

adder: ripple_carry_adder port map(x=>A1, y=>B1, k=>'0', overflow=>f_adder, sum=>r_adder);
subtractor: ripple_carry_adder port map(x=>A1, y=>B1, k=>'1', overflow=>f_subtractor, sum=>r_subtractor);
a_inc: ripple_carry_adder port map(x=>A1, y=>"0001", k=>'0', overflow=>f_ai, sum=>r_ai);
b_inc: ripple_carry_adder port map(x=>B1, y=>"0001", k=>'0', overflow=>f_bi, sum=>r_bi);
comp: Compare port map(X=>A1, Y=>B1, Res=>f_comp);
two_comp_a: two_comlpiment port map(a_in=>A1, a_out=>A_two_comp, overflow=>f_two_comp_a);
two_comp_b: two_comlpiment port map(a_in=>B1, a_out=>B_two_comp, overflow=>f_two_comp_b);
comp_wt: Compare_WT port map(X=>A1, Y=>B1, Result=>f_comp_wt);
mult: Multiplier port map(X=>A1, Y=>B1, F_out=>f_mult, Prod=>mult_res);

PROCESS(r_adder, f_adder, f_subtractor, r_subtractor, f_ai, f_bi, r_ai, r_bi, S1, mult_res, f_mult, f_comp_wt, f_comp, A1, B1, r_and, r_or, r_xor, r_xnor, A_two_comp, f_two_comp_a, B_two_comp, f_two_comp_b)
BEGIN
CASE S1 IS
WHEN "0000" =>
    result <= "0000";
    flags <= '0';
WHEN "0001" =>
    result(0) <= (not A1(0));
    result(1) <= (not A1(1));
    result(2) <= (not A1(2));
    result(3) <= (not A1(3));
    flags <= '0';
WHEN "0010" =>
    result(0) <= (not B1(0));
    result(1) <= (not B1(1));
    result(2) <= (not B1(2));
    result(3) <= (not B1(3));
    flags <= '0';
WHEN "0011" =>
    result <= A_two_comp;
    flags <= f_two_comp_a;
WHEN "0100" =>
    result <= B_two_comp;
    flags <= f_two_comp_b;
WHEN "0101" =>
    result <= r_ai;
    flags <= f_ai;
WHEN "0110" =>
    result <= r_bi;
    flags <= f_bi;
WHEN "0111" =>
    result <= r_adder;   
    flags <= f_adder;
WHEN "1000" =>
    result <= r_subtractor;
    flags <= f_subtractor;
WHEN "1001" =>
    result <= mult_res;
    flags <= f_mult;
WHEN "1010" =>
    result <= "0000";
    flags <= f_comp_wt;
WHEN "1011" =>
    result <= "0000";
    flags <= f_comp;
WHEN "1100" =>
    r_and(0) <= A1(0) and B1(0);
    r_and(1) <= A1(1) and B1(1);
    r_and(2) <= A1(2) and B1(2);
    r_and(3) <= A1(3) and B1(3);
    result <= r_and;
    IF r_and = "0000" THEN
        flags <= '0';
        ELSE
        flags <= '1';
    END IF;
WHEN "1101" =>
    r_or(0) <= A1(0) or B1(0);
    r_or(1) <= A1(1) or B1(1);
    r_or(2) <= A1(2) or B1(2);
    r_or(3) <= A1(3) or B1(3);
    result <= r_or;
    IF r_or = "0000" THEN
        flags <= '0';
        ELSE
        flags <= '1';
    END IF;
WHEN "1110" =>
    r_xor(0) <= A1(0) xor B1(0);
    r_xor(1) <= A1(1) xor B1(1);
    r_xor(2) <= A1(2) xor B1(2);
    r_xor(3) <= A1(3) xor B1(3);
    result <= r_xor;
    IF r_xor = "0000" THEN
        flags <= '0';
        ELSE
        flags <= '1';
    END IF;
WHEN "1111" =>
    r_xnor(0) <= A1(0) xnor B1(0);
    r_xnor(1) <= A1(1) xnor B1(1);
    r_xnor(2) <= A1(2) xnor B1(2);
    r_xnor(3) <= A1(3) xnor B1(3);
    result <= r_xnor;
    IF r_xnor = "0000" THEN
        flags <= '0';
        ELSE
        flags <= '1';
    END IF;
WHEN OTHERS =>
    result <= "XXXX";
    flags <= 'X';
END CASE;
END PROCESS;

PROCESS(reset, load, flags, result)
BEGIN
IF reset = '0' THEN
    IF load = '1' THEN
        res_out <= result;
        flag_out <= flags;
    ELSE
        res_out <= "0000";
        flag_out <= '0';
    END IF;
END IF;
END PROCESS;

end Structure;
