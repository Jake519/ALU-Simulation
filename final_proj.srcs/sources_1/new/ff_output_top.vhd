----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2022 02:08:09 PM
-- Design Name: 
-- Module Name: ff_output_top - Behavioral
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

entity ff_output_top is
    Port ( results : in STD_LOGIC_VECTOR (3 downto 0);
           reset : in STD_LOGIC;
           results_out : inout STD_LOGIC_VECTOR (3 downto 0);
           flags : in STD_LOGIC;
           flags_out : inout STD_LOGIC);
end ff_output_top;

architecture Behavioral of ff_output_top is

component ff_output
    Port ( 
    d : in STD_LOGIC;
    r : in STD_LOGIC;
    dout : inout STD_LOGIC);
end component;

begin

--Result
Stage0_res: ff_output port map(d=>results(0), r=>reset, dout=>results_out(0));
Stage1_res: ff_output port map(d=>results(1), r=>reset, dout=>results_out(1));
Stage2_res: ff_output port map(d=>results(2), r=>reset, dout=>results_out(2));
Stage3_res: ff_output port map(d=>results(3), r=>reset, dout=>results_out(3));

--Flags
Stage0_flags: ff_output port map(d=>flags, r=>reset, dout=>flags_out);

end Behavioral;
