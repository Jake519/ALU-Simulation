----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2022 11:31:43 AM
-- Design Name: 
-- Module Name: flip_flop_top_level - Behavioral
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

entity flip_flop_top_level is
    Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
           Y : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC;
           L : in STD_LOGIC;
           X2 : inout STD_LOGIC_VECTOR (3 downto 0);
           X_inv : inout STD_LOGIC_VECTOR (3 downto 0);
           Y2 : inout STD_LOGIC_VECTOR (3 downto 0);
           Y_inv : inout STD_LOGIC_VECTOR (3 downto 0);
           S2: inout STD_LOGIC_VECTOR (3 downto 0);
           S_inv: inout STD_LOGIC_VECTOR (3 downto 0));
end flip_flop_top_level;

architecture Structure of flip_flop_top_level is

component flip_flop
    Port ( d : in STD_LOGIC;
           CLK : in STD_LOGIC;
           load : in STD_LOGIC;
           Q : inout STD_LOGIC;
           Q_inv : inout STD_LOGIC);
end component;

begin

--X Vector
X_Stage0: flip_flop port map(d=>X(0), CLK=>CLK, load=>L, Q=>X2(0), Q_inv=>X_inv(0));
X_Stage1: flip_flop port map(d=>X(1), CLK=>CLK, load=>L, Q=>X2(1), Q_inv=>X_inv(1));
X_Stage2: flip_flop port map(d=>X(2), CLK=>CLK, load=>L, Q=>X2(2), Q_inv=>X_inv(2));
X_Stage3: flip_flop port map(d=>X(3), CLK=>CLK, load=>L, Q=>X2(3), Q_inv=>X_inv(3));

--Y Vector
Y_Stage0: flip_flop port map(d=>Y(0), CLK=>CLK, load=>L, Q=>Y2(0), Q_inv=>Y_inv(0));
Y_Stage1: flip_flop port map(d=>Y(1), CLK=>CLK, load=>L, Q=>Y2(1), Q_inv=>Y_inv(1));
Y_Stage2: flip_flop port map(d=>Y(2), CLK=>CLK, load=>L, Q=>Y2(2), Q_inv=>Y_inv(2));
Y_Stage3: flip_flop port map(d=>Y(3), CLK=>CLK, load=>L, Q=>Y2(3), Q_inv=>Y_inv(3));

--S Vector
S_Stage0: flip_flop port map(d=>S(0), CLK=>CLK, load=>L, Q=>S2(0), Q_inv=>S_inv(0));
S_Stage1: flip_flop port map(d=>S(1), CLK=>CLK, load=>L, Q=>S2(1), Q_inv=>S_inv(1));
S_Stage2: flip_flop port map(d=>S(2), CLK=>CLK, load=>L, Q=>S2(2), Q_inv=>S_inv(2));
S_Stage3: flip_flop port map(d=>S(3), CLK=>CLK, load=>L, Q=>S2(3), Q_inv=>S_inv(3));

end Structure;
