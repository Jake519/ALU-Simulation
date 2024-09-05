-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Dec  8 00:00:24 2022
-- Host        : RDSVDI-67 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               M:/ece230/final_proj/final_proj.sim/sim_1/impl/func/xsim/Multiplier_func_impl.vhd
-- Design      : top_level_architecture
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_level_architecture is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    A_test : out STD_LOGIC_VECTOR ( 3 downto 0 );
    B_test : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    load : in STD_LOGIC;
    CLK : in STD_LOGIC;
    flags : out STD_LOGIC;
    result : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_level_architecture : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of top_level_architecture : entity is "e1cea5d0";
end top_level_architecture;

architecture STRUCTURE of top_level_architecture is
  signal A_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal A_test_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \A_test_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \A_test_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \A_test_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \A_test_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal B_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_test_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \B_test_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \B_test_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \B_test_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \B_test_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal CLK_IBUF : STD_LOGIC;
  signal Res : STD_LOGIC;
  signal S2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \a_inc/c2\ : STD_LOGIC;
  signal \a_inc/c3\ : STD_LOGIC;
  signal \adder/c2\ : STD_LOGIC;
  signal \adder/c3\ : STD_LOGIC;
  signal \b_inc/c3\ : STD_LOGIC;
  signal \comp_wt/x\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \comp_wt/y\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal f_two_comp_a : STD_LOGIC;
  signal flags_OBUF : STD_LOGIC;
  signal flags_reg_i_10_n_0 : STD_LOGIC;
  signal flags_reg_i_12_n_0 : STD_LOGIC;
  signal flags_reg_i_13_n_0 : STD_LOGIC;
  signal flags_reg_i_14_n_0 : STD_LOGIC;
  signal flags_reg_i_15_n_0 : STD_LOGIC;
  signal flags_reg_i_16_n_0 : STD_LOGIC;
  signal flags_reg_i_1_n_0 : STD_LOGIC;
  signal flags_reg_i_21_n_0 : STD_LOGIC;
  signal flags_reg_i_22_n_0 : STD_LOGIC;
  signal flags_reg_i_23_n_0 : STD_LOGIC;
  signal flags_reg_i_24_n_0 : STD_LOGIC;
  signal flags_reg_i_25_n_0 : STD_LOGIC;
  signal flags_reg_i_26_n_0 : STD_LOGIC;
  signal flags_reg_i_2_n_0 : STD_LOGIC;
  signal flags_reg_i_3_n_0 : STD_LOGIC;
  signal flags_reg_i_4_n_0 : STD_LOGIC;
  signal flags_reg_i_7_n_0 : STD_LOGIC;
  signal flags_reg_i_8_n_0 : STD_LOGIC;
  signal load_IBUF : STD_LOGIC;
  signal p_6_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_and : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_and_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal r_or : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_or_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_or_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_or_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_or_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_or_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal r_xnor : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_xnor_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_xnor_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_xnor_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_xnor_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_xnor_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal r_xor : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_xor_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_xor_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_xor_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_xor_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_xor_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal result_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \result_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \result_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[2]_inst_i_8_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_10_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_11_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_12_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_13_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_15_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_9_n_0\ : STD_LOGIC;
  signal sel_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \subtractor/c2\ : STD_LOGIC;
  signal \subtractor/c3\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of flags_reg : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of flags_reg_i_16 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of flags_reg_i_17 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of flags_reg_i_18 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of flags_reg_i_19 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of flags_reg_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of flags_reg_i_20 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of flags_reg_i_21 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of flags_reg_i_22 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of flags_reg_i_9 : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \r_and_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_and_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_and_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_and_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_and_reg[3]_i_2\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \r_or_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_or_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_or_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_or_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_or_reg[3]_i_2\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \r_xnor_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_xnor_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_xnor_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_xnor_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_xnor_reg[3]_i_2\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \r_xor_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_xor_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_xor_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \r_xor_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_xor_reg[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result_OBUF[2]_inst_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result_OBUF[2]_inst_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result_OBUF[3]_inst_i_13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result_OBUF[3]_inst_i_14\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result_OBUF[3]_inst_i_17\ : label is "soft_lutpair7";
begin
\A_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(0),
      O => A_IBUF(0)
    );
\A_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(1),
      O => A_IBUF(1)
    );
\A_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(2),
      O => A_IBUF(2)
    );
\A_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A(3),
      O => A_IBUF(3)
    );
\A_test_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_test_OBUF(0),
      O => A_test(0)
    );
\A_test_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => A_IBUF(0),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => \A_test_OBUF[0]_inst_i_2_n_0\,
      O => A_test_OBUF(0)
    );
\A_test_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => \A_test_OBUF[0]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => A_IBUF(0),
      I4 => CLK_IBUF,
      O => \A_test_OBUF[0]_inst_i_2_n_0\
    );
\A_test_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_test_OBUF(1),
      O => A_test(1)
    );
\A_test_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => A_IBUF(1),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => \A_test_OBUF[1]_inst_i_2_n_0\,
      O => A_test_OBUF(1)
    );
\A_test_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => \A_test_OBUF[1]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => A_IBUF(1),
      I4 => CLK_IBUF,
      O => \A_test_OBUF[1]_inst_i_2_n_0\
    );
\A_test_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_test_OBUF(2),
      O => A_test(2)
    );
\A_test_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => A_IBUF(2),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => \A_test_OBUF[2]_inst_i_2_n_0\,
      O => A_test_OBUF(2)
    );
\A_test_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => \A_test_OBUF[2]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => A_IBUF(2),
      I4 => CLK_IBUF,
      O => \A_test_OBUF[2]_inst_i_2_n_0\
    );
\A_test_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_test_OBUF(3),
      O => A_test(3)
    );
\A_test_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => A_IBUF(3),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => \A_test_OBUF[3]_inst_i_2_n_0\,
      O => A_test_OBUF(3)
    );
\A_test_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => \A_test_OBUF[3]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => A_IBUF(3),
      I4 => CLK_IBUF,
      O => \A_test_OBUF[3]_inst_i_2_n_0\
    );
\B_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(0),
      O => B_IBUF(0)
    );
\B_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(1),
      O => B_IBUF(1)
    );
\B_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(2),
      O => B_IBUF(2)
    );
\B_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B(3),
      O => B_IBUF(3)
    );
\B_test_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_test_OBUF(0),
      O => B_test(0)
    );
\B_test_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => B_IBUF(0),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => \B_test_OBUF[0]_inst_i_2_n_0\,
      O => B_test_OBUF(0)
    );
\B_test_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => \B_test_OBUF[0]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => B_IBUF(0),
      I4 => CLK_IBUF,
      O => \B_test_OBUF[0]_inst_i_2_n_0\
    );
\B_test_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_test_OBUF(1),
      O => B_test(1)
    );
\B_test_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => B_IBUF(1),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => \B_test_OBUF[1]_inst_i_2_n_0\,
      O => B_test_OBUF(1)
    );
\B_test_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => \B_test_OBUF[1]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => B_IBUF(1),
      I4 => CLK_IBUF,
      O => \B_test_OBUF[1]_inst_i_2_n_0\
    );
\B_test_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_test_OBUF(2),
      O => B_test(2)
    );
\B_test_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => B_IBUF(2),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => \B_test_OBUF[2]_inst_i_2_n_0\,
      O => B_test_OBUF(2)
    );
\B_test_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => \B_test_OBUF[2]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => B_IBUF(2),
      I4 => CLK_IBUF,
      O => \B_test_OBUF[2]_inst_i_2_n_0\
    );
\B_test_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => B_test_OBUF(3),
      O => B_test(3)
    );
\B_test_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => B_IBUF(3),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => \B_test_OBUF[3]_inst_i_2_n_0\,
      O => B_test_OBUF(3)
    );
\B_test_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => \B_test_OBUF[3]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => B_IBUF(3),
      I4 => CLK_IBUF,
      O => \B_test_OBUF[3]_inst_i_2_n_0\
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
flags_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => flags_OBUF,
      O => flags
    );
flags_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => flags_reg_i_1_n_0,
      G => flags_reg_i_2_n_0,
      GE => '1',
      Q => flags_OBUF
    );
flags_reg_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => flags_reg_i_3_n_0,
      I1 => flags_reg_i_4_n_0,
      O => flags_reg_i_1_n_0,
      S => S2(3)
    );
flags_reg_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BB888"
    )
        port map (
      I0 => flags_reg_i_15_n_0,
      I1 => flags_reg_i_16_n_0,
      I2 => \subtractor/c3\,
      I3 => B_test_OBUF(3),
      I4 => A_test_OBUF(3),
      O => flags_reg_i_10_n_0
    );
flags_reg_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D44DD4D"
    )
        port map (
      I0 => B_test_OBUF(3),
      I1 => A_test_OBUF(3),
      I2 => \subtractor/c2\,
      I3 => B_test_OBUF(2),
      I4 => A_test_OBUF(2),
      O => Res
    );
flags_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D440000FFFF4D44"
    )
        port map (
      I0 => \comp_wt/x\(1),
      I1 => \comp_wt/y\(1),
      I2 => \comp_wt/x\(0),
      I3 => \comp_wt/y\(0),
      I4 => flags_reg_i_21_n_0,
      I5 => flags_reg_i_22_n_0,
      O => flags_reg_i_12_n_0
    );
flags_reg_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => flags_reg_i_13_n_0,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => sel_IBUF(1),
      I4 => CLK_IBUF,
      O => flags_reg_i_13_n_0
    );
flags_reg_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => flags_reg_i_14_n_0,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => sel_IBUF(0),
      I4 => CLK_IBUF,
      O => flags_reg_i_14_n_0
    );
flags_reg_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => flags_reg_i_23_n_0,
      I1 => flags_reg_i_24_n_0,
      I2 => S2(1),
      I3 => flags_reg_i_25_n_0,
      I4 => S2(0),
      I5 => flags_reg_i_26_n_0,
      O => flags_reg_i_15_n_0
    );
flags_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => S2(2),
      I1 => S2(1),
      I2 => S2(0),
      O => flags_reg_i_16_n_0
    );
flags_reg_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => A_test_OBUF(2),
      I1 => A_test_OBUF(1),
      I2 => A_test_OBUF(0),
      I3 => A_test_OBUF(3),
      O => \comp_wt/x\(1)
    );
flags_reg_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => B_test_OBUF(2),
      I1 => B_test_OBUF(1),
      I2 => B_test_OBUF(0),
      I3 => B_test_OBUF(3),
      O => \comp_wt/y\(1)
    );
flags_reg_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => A_test_OBUF(1),
      I1 => A_test_OBUF(0),
      I2 => A_test_OBUF(3),
      I3 => A_test_OBUF(2),
      O => \comp_wt/x\(0)
    );
flags_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => S2(2),
      I1 => S2(1),
      I2 => S2(0),
      I3 => S2(3),
      O => flags_reg_i_2_n_0
    );
flags_reg_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B_test_OBUF(1),
      I1 => B_test_OBUF(0),
      I2 => B_test_OBUF(3),
      I3 => B_test_OBUF(2),
      O => \comp_wt/y\(0)
    );
flags_reg_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => B_test_OBUF(1),
      I1 => B_test_OBUF(0),
      I2 => B_test_OBUF(3),
      I3 => B_test_OBUF(2),
      O => flags_reg_i_21_n_0
    );
flags_reg_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => A_test_OBUF(1),
      I1 => A_test_OBUF(0),
      I2 => A_test_OBUF(3),
      I3 => A_test_OBUF(2),
      O => flags_reg_i_22_n_0
    );
flags_reg_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_xnor(2),
      I1 => r_xnor(3),
      I2 => r_xnor(0),
      I3 => r_xnor(1),
      O => flags_reg_i_23_n_0
    );
flags_reg_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_xor(2),
      I1 => r_xor(3),
      I2 => r_xor(0),
      I3 => r_xor(1),
      O => flags_reg_i_24_n_0
    );
flags_reg_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_or(2),
      I1 => r_or(3),
      I2 => r_or(0),
      I3 => r_or(1),
      O => flags_reg_i_25_n_0
    );
flags_reg_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_and(2),
      I1 => r_and(3),
      I2 => r_and(0),
      I3 => r_and(1),
      O => flags_reg_i_26_n_0
    );
flags_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFA0C0A0C0A0C0A0"
    )
        port map (
      I0 => flags_reg_i_7_n_0,
      I1 => flags_reg_i_8_n_0,
      I2 => S2(2),
      I3 => S2(1),
      I4 => S2(0),
      I5 => f_two_comp_a,
      O => flags_reg_i_3_n_0
    );
flags_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8ABABABA8A8A8A"
    )
        port map (
      I0 => flags_reg_i_10_n_0,
      I1 => S2(2),
      I2 => S2(1),
      I3 => Res,
      I4 => S2(0),
      I5 => flags_reg_i_12_n_0,
      O => flags_reg_i_4_n_0
    );
flags_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => sel_IBUF(1),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => flags_reg_i_13_n_0,
      O => S2(1)
    );
flags_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => sel_IBUF(0),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => flags_reg_i_14_n_0,
      O => S2(0)
    );
flags_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F404040"
    )
        port map (
      I0 => A_test_OBUF(3),
      I1 => \a_inc/c3\,
      I2 => S2(0),
      I3 => B_test_OBUF(3),
      I4 => \result_OBUF[3]_inst_i_15_n_0\,
      O => flags_reg_i_7_n_0
    );
flags_reg_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"402F4020"
    )
        port map (
      I0 => \adder/c3\,
      I1 => A_test_OBUF(3),
      I2 => S2(0),
      I3 => B_test_OBUF(3),
      I4 => \b_inc/c3\,
      O => flags_reg_i_8_n_0
    );
flags_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => A_test_OBUF(3),
      I1 => A_test_OBUF(1),
      I2 => A_test_OBUF(0),
      I3 => A_test_OBUF(2),
      O => f_two_comp_a
    );
load_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => load,
      O => load_IBUF
    );
\r_and_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_6_out(0),
      G => \r_and_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_and(0)
    );
\r_and_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22A2222222222222"
    )
        port map (
      I0 => A_test_OBUF(0),
      I1 => \B_test_OBUF[0]_inst_i_2_n_0\,
      I2 => load_IBUF,
      I3 => reset_IBUF,
      I4 => B_IBUF(0),
      I5 => CLK_IBUF,
      O => p_6_out(0)
    );
\r_and_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_6_out(1),
      G => \r_and_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_and(1)
    );
\r_and_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D55555500000000"
    )
        port map (
      I0 => \A_test_OBUF[1]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => A_IBUF(1),
      I4 => CLK_IBUF,
      I5 => B_test_OBUF(1),
      O => p_6_out(1)
    );
\r_and_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_6_out(2),
      G => \r_and_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_and(2)
    );
\r_and_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D55555500000000"
    )
        port map (
      I0 => \A_test_OBUF[2]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => A_IBUF(2),
      I4 => CLK_IBUF,
      I5 => B_test_OBUF(2),
      O => p_6_out(2)
    );
\r_and_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => p_6_out(3),
      G => \r_and_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_and(3)
    );
\r_and_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D55555500000000"
    )
        port map (
      I0 => \A_test_OBUF[3]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => A_IBUF(3),
      I4 => CLK_IBUF,
      I5 => B_test_OBUF(3),
      O => p_6_out(3)
    );
\r_and_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => S2(0),
      I1 => S2(3),
      I2 => S2(2),
      I3 => S2(1),
      O => \r_and_reg[3]_i_2_n_0\
    );
\r_or_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_or_reg[0]_i_1_n_0\,
      G => \r_or_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_or(0)
    );
\r_or_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBBBBBBBBBBBBB"
    )
        port map (
      I0 => A_test_OBUF(0),
      I1 => \B_test_OBUF[0]_inst_i_2_n_0\,
      I2 => load_IBUF,
      I3 => reset_IBUF,
      I4 => B_IBUF(0),
      I5 => CLK_IBUF,
      O => \r_or_reg[0]_i_1_n_0\
    );
\r_or_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_or_reg[1]_i_1_n_0\,
      G => \r_or_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_or(1)
    );
\r_or_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5D555555"
    )
        port map (
      I0 => \A_test_OBUF[1]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => A_IBUF(1),
      I4 => CLK_IBUF,
      I5 => B_test_OBUF(1),
      O => \r_or_reg[1]_i_1_n_0\
    );
\r_or_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_or_reg[2]_i_1_n_0\,
      G => \r_or_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_or(2)
    );
\r_or_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5D555555"
    )
        port map (
      I0 => \A_test_OBUF[2]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => A_IBUF(2),
      I4 => CLK_IBUF,
      I5 => B_test_OBUF(2),
      O => \r_or_reg[2]_i_1_n_0\
    );
\r_or_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_or_reg[3]_i_1_n_0\,
      G => \r_or_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_or(3)
    );
\r_or_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5D555555"
    )
        port map (
      I0 => \A_test_OBUF[3]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => A_IBUF(3),
      I4 => CLK_IBUF,
      I5 => B_test_OBUF(3),
      O => \r_or_reg[3]_i_1_n_0\
    );
\r_or_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S2(0),
      I1 => S2(3),
      I2 => S2(2),
      I3 => S2(1),
      O => \r_or_reg[3]_i_2_n_0\
    );
\r_xnor_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_xnor_reg[0]_i_1_n_0\,
      G => \r_xnor_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_xnor(0)
    );
\r_xnor_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFFF7FF0000"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => B_IBUF(0),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => \B_test_OBUF[0]_inst_i_2_n_0\,
      I5 => A_test_OBUF(0),
      O => \r_xnor_reg[0]_i_1_n_0\
    );
\r_xnor_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_xnor_reg[1]_i_1_n_0\,
      G => \r_xnor_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_xnor(1)
    );
\r_xnor_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55955555AAAAAAAA"
    )
        port map (
      I0 => A_test_OBUF(1),
      I1 => CLK_IBUF,
      I2 => B_IBUF(1),
      I3 => reset_IBUF,
      I4 => load_IBUF,
      I5 => \B_test_OBUF[1]_inst_i_2_n_0\,
      O => \r_xnor_reg[1]_i_1_n_0\
    );
\r_xnor_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_xnor_reg[2]_i_1_n_0\,
      G => \r_xnor_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_xnor(2)
    );
\r_xnor_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55955555AAAAAAAA"
    )
        port map (
      I0 => A_test_OBUF(2),
      I1 => CLK_IBUF,
      I2 => B_IBUF(2),
      I3 => reset_IBUF,
      I4 => load_IBUF,
      I5 => \B_test_OBUF[2]_inst_i_2_n_0\,
      O => \r_xnor_reg[2]_i_1_n_0\
    );
\r_xnor_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_xnor_reg[3]_i_1_n_0\,
      G => \r_xnor_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_xnor(3)
    );
\r_xnor_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55955555AAAAAAAA"
    )
        port map (
      I0 => A_test_OBUF(3),
      I1 => CLK_IBUF,
      I2 => B_IBUF(3),
      I3 => reset_IBUF,
      I4 => load_IBUF,
      I5 => \B_test_OBUF[3]_inst_i_2_n_0\,
      O => \r_xnor_reg[3]_i_1_n_0\
    );
\r_xnor_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => S2(2),
      I1 => S2(3),
      I2 => S2(0),
      I3 => S2(1),
      O => \r_xnor_reg[3]_i_2_n_0\
    );
\r_xor_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_xor_reg[0]_i_1_n_0\,
      G => \r_xor_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_xor(0)
    );
\r_xor_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA5D555555"
    )
        port map (
      I0 => \B_test_OBUF[0]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => B_IBUF(0),
      I4 => CLK_IBUF,
      I5 => A_test_OBUF(0),
      O => \r_xor_reg[0]_i_1_n_0\
    );
\r_xor_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_xor_reg[1]_i_1_n_0\,
      G => \r_xor_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_xor(1)
    );
\r_xor_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA5D555555"
    )
        port map (
      I0 => \B_test_OBUF[1]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => B_IBUF(1),
      I4 => CLK_IBUF,
      I5 => A_test_OBUF(1),
      O => \r_xor_reg[1]_i_1_n_0\
    );
\r_xor_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_xor_reg[2]_i_1_n_0\,
      G => \r_xor_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_xor(2)
    );
\r_xor_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA5D555555"
    )
        port map (
      I0 => \B_test_OBUF[2]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => B_IBUF(2),
      I4 => CLK_IBUF,
      I5 => A_test_OBUF(2),
      O => \r_xor_reg[2]_i_1_n_0\
    );
\r_xor_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \r_xor_reg[3]_i_1_n_0\,
      G => \r_xor_reg[3]_i_2_n_0\,
      GE => '1',
      Q => r_xor(3)
    );
\r_xor_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA5D555555"
    )
        port map (
      I0 => \B_test_OBUF[3]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => B_IBUF(3),
      I4 => CLK_IBUF,
      I5 => A_test_OBUF(3),
      O => \r_xor_reg[3]_i_1_n_0\
    );
\r_xor_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S2(1),
      I1 => S2(3),
      I2 => S2(2),
      I3 => S2(0),
      O => \r_xor_reg[3]_i_2_n_0\
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\result_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(0),
      O => result(0)
    );
\result_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result_OBUF[0]_inst_i_2_n_0\,
      I1 => \result_OBUF[0]_inst_i_3_n_0\,
      O => result_OBUF(0),
      S => S2(3)
    );
\result_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70388F38"
    )
        port map (
      I0 => S2(2),
      I1 => B_test_OBUF(0),
      I2 => S2(1),
      I3 => S2(0),
      I4 => A_test_OBUF(0),
      O => \result_OBUF[0]_inst_i_2_n_0\
    );
\result_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888BB8"
    )
        port map (
      I0 => \result_OBUF[0]_inst_i_4_n_0\,
      I1 => S2(2),
      I2 => B_test_OBUF(0),
      I3 => A_test_OBUF(0),
      I4 => S2(1),
      O => \result_OBUF[0]_inst_i_3_n_0\
    );
\result_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_xnor(0),
      I1 => r_xor(0),
      I2 => S2(1),
      I3 => r_or(0),
      I4 => S2(0),
      I5 => r_and(0),
      O => \result_OBUF[0]_inst_i_4_n_0\
    );
\result_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(1),
      O => result(1)
    );
\result_OBUF[1]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \result_OBUF[1]_inst_i_2_n_0\,
      I1 => \result_OBUF[1]_inst_i_3_n_0\,
      O => result_OBUF(1),
      S => S2(3)
    );
\result_OBUF[1]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result_OBUF[1]_inst_i_4_n_0\,
      I1 => \result_OBUF[1]_inst_i_5_n_0\,
      O => \result_OBUF[1]_inst_i_2_n_0\,
      S => S2(2)
    );
\result_OBUF[1]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result_OBUF[1]_inst_i_6_n_0\,
      I1 => \result_OBUF[1]_inst_i_7_n_0\,
      O => \result_OBUF[1]_inst_i_3_n_0\,
      S => S2(2)
    );
\result_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5030AF30"
    )
        port map (
      I0 => A_test_OBUF(0),
      I1 => B_test_OBUF(1),
      I2 => S2(1),
      I3 => S2(0),
      I4 => A_test_OBUF(1),
      O => \result_OBUF[1]_inst_i_4_n_0\
    );
\result_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96003CFF36FF9C00"
    )
        port map (
      I0 => S2(1),
      I1 => A_test_OBUF(1),
      I2 => A_test_OBUF(0),
      I3 => S2(0),
      I4 => B_test_OBUF(1),
      I5 => B_test_OBUF(0),
      O => \result_OBUF[1]_inst_i_5_n_0\
    );
\result_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000659A"
    )
        port map (
      I0 => B_test_OBUF(1),
      I1 => A_test_OBUF(0),
      I2 => B_test_OBUF(0),
      I3 => A_test_OBUF(1),
      I4 => S2(1),
      O => \result_OBUF[1]_inst_i_6_n_0\
    );
\result_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_xnor(1),
      I1 => r_xor(1),
      I2 => S2(1),
      I3 => r_or(1),
      I4 => S2(0),
      I5 => r_and(1),
      O => \result_OBUF[1]_inst_i_7_n_0\
    );
\result_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(2),
      O => result(2)
    );
\result_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_OBUF[2]_inst_i_2_n_0\,
      I1 => \result_OBUF[2]_inst_i_3_n_0\,
      I2 => S2(3),
      I3 => \result_OBUF[2]_inst_i_4_n_0\,
      I4 => S2(2),
      I5 => \result_OBUF[2]_inst_i_5_n_0\,
      O => result_OBUF(2)
    );
\result_OBUF[2]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => A_test_OBUF(1),
      I1 => B_test_OBUF(1),
      I2 => B_test_OBUF(0),
      I3 => A_test_OBUF(0),
      O => \adder/c2\
    );
\result_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_xnor(2),
      I1 => r_xor(2),
      I2 => S2(1),
      I3 => r_or(2),
      I4 => S2(0),
      I5 => r_and(2),
      O => \result_OBUF[2]_inst_i_2_n_0\
    );
\result_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0069"
    )
        port map (
      I0 => B_test_OBUF(2),
      I1 => \subtractor/c2\,
      I2 => A_test_OBUF(2),
      I3 => S2(1),
      O => \result_OBUF[2]_inst_i_3_n_0\
    );
\result_OBUF[2]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result_OBUF[2]_inst_i_7_n_0\,
      I1 => \result_OBUF[2]_inst_i_8_n_0\,
      O => \result_OBUF[2]_inst_i_4_n_0\,
      S => S2(1)
    );
\result_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11000F00EEFF0F00"
    )
        port map (
      I0 => A_test_OBUF(1),
      I1 => A_test_OBUF(0),
      I2 => B_test_OBUF(2),
      I3 => S2(1),
      I4 => S2(0),
      I5 => A_test_OBUF(2),
      O => \result_OBUF[2]_inst_i_5_n_0\
    );
\result_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2BB"
    )
        port map (
      I0 => A_test_OBUF(1),
      I1 => B_test_OBUF(1),
      I2 => A_test_OBUF(0),
      I3 => B_test_OBUF(0),
      O => \subtractor/c2\
    );
\result_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606F606F606F6F60"
    )
        port map (
      I0 => A_test_OBUF(2),
      I1 => \a_inc/c2\,
      I2 => S2(0),
      I3 => B_test_OBUF(2),
      I4 => B_test_OBUF(1),
      I5 => B_test_OBUF(0),
      O => \result_OBUF[2]_inst_i_7_n_0\
    );
\result_OBUF[2]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"906F9F609F609F60"
    )
        port map (
      I0 => A_test_OBUF(2),
      I1 => \adder/c2\,
      I2 => S2(0),
      I3 => B_test_OBUF(2),
      I4 => B_test_OBUF(1),
      I5 => B_test_OBUF(0),
      O => \result_OBUF[2]_inst_i_8_n_0\
    );
\result_OBUF[2]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D55555500000000"
    )
        port map (
      I0 => \A_test_OBUF[0]_inst_i_2_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => A_IBUF(0),
      I4 => CLK_IBUF,
      I5 => A_test_OBUF(1),
      O => \a_inc/c2\
    );
\result_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(3),
      O => result(3)
    );
\result_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result_OBUF[3]_inst_i_2_n_0\,
      I1 => \result_OBUF[3]_inst_i_3_n_0\,
      I2 => S2(3),
      I3 => \result_OBUF[3]_inst_i_5_n_0\,
      I4 => S2(2),
      I5 => \result_OBUF[3]_inst_i_7_n_0\,
      O => result_OBUF(3)
    );
\result_OBUF[3]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F60606F"
    )
        port map (
      I0 => A_test_OBUF(3),
      I1 => \a_inc/c3\,
      I2 => S2(0),
      I3 => B_test_OBUF(3),
      I4 => \result_OBUF[3]_inst_i_15_n_0\,
      O => \result_OBUF[3]_inst_i_10_n_0\
    );
\result_OBUF[3]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"906F9F60"
    )
        port map (
      I0 => A_test_OBUF(3),
      I1 => \adder/c3\,
      I2 => S2(0),
      I3 => B_test_OBUF(3),
      I4 => \b_inc/c3\,
      O => \result_OBUF[3]_inst_i_11_n_0\
    );
\result_OBUF[3]_inst_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => \result_OBUF[3]_inst_i_12_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => sel_IBUF(2),
      I4 => CLK_IBUF,
      O => \result_OBUF[3]_inst_i_12_n_0\
    );
\result_OBUF[3]_inst_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => A_test_OBUF(1),
      I1 => A_test_OBUF(0),
      I2 => A_test_OBUF(2),
      O => \result_OBUF[3]_inst_i_13_n_0\
    );
\result_OBUF[3]_inst_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => A_test_OBUF(1),
      I1 => A_test_OBUF(0),
      I2 => A_test_OBUF(2),
      O => \a_inc/c3\
    );
\result_OBUF[3]_inst_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => B_test_OBUF(1),
      I1 => B_test_OBUF(0),
      I2 => B_test_OBUF(2),
      O => \result_OBUF[3]_inst_i_15_n_0\
    );
\result_OBUF[3]_inst_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => A_test_OBUF(2),
      I1 => B_test_OBUF(2),
      I2 => A_test_OBUF(0),
      I3 => B_test_OBUF(0),
      I4 => B_test_OBUF(1),
      I5 => A_test_OBUF(1),
      O => \adder/c3\
    );
\result_OBUF[3]_inst_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => B_test_OBUF(1),
      I1 => B_test_OBUF(0),
      I2 => B_test_OBUF(2),
      O => \b_inc/c3\
    );
\result_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_xnor(3),
      I1 => r_xor(3),
      I2 => S2(1),
      I3 => r_or(3),
      I4 => S2(0),
      I5 => r_and(3),
      O => \result_OBUF[3]_inst_i_2_n_0\
    );
\result_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0069"
    )
        port map (
      I0 => B_test_OBUF(3),
      I1 => \subtractor/c3\,
      I2 => A_test_OBUF(3),
      I3 => S2(1),
      O => \result_OBUF[3]_inst_i_3_n_0\
    );
\result_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => sel_IBUF(3),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => \result_OBUF[3]_inst_i_9_n_0\,
      O => S2(3)
    );
\result_OBUF[3]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result_OBUF[3]_inst_i_10_n_0\,
      I1 => \result_OBUF[3]_inst_i_11_n_0\,
      O => \result_OBUF[3]_inst_i_5_n_0\,
      S => S2(1)
    );
\result_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => CLK_IBUF,
      I1 => sel_IBUF(2),
      I2 => reset_IBUF,
      I3 => load_IBUF,
      I4 => \result_OBUF[3]_inst_i_12_n_0\,
      O => S2(2)
    );
\result_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0305F30"
    )
        port map (
      I0 => \result_OBUF[3]_inst_i_13_n_0\,
      I1 => B_test_OBUF(3),
      I2 => S2(1),
      I3 => S2(0),
      I4 => A_test_OBUF(3),
      O => \result_OBUF[3]_inst_i_7_n_0\
    );
\result_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2BBBBB2222BB2B"
    )
        port map (
      I0 => A_test_OBUF(2),
      I1 => B_test_OBUF(2),
      I2 => B_test_OBUF(0),
      I3 => A_test_OBUF(0),
      I4 => B_test_OBUF(1),
      I5 => A_test_OBUF(1),
      O => \subtractor/c3\
    );
\result_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FEAAAA"
    )
        port map (
      I0 => \result_OBUF[3]_inst_i_9_n_0\,
      I1 => load_IBUF,
      I2 => reset_IBUF,
      I3 => sel_IBUF(3),
      I4 => CLK_IBUF,
      O => \result_OBUF[3]_inst_i_9_n_0\
    );
\sel_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sel(0),
      O => sel_IBUF(0)
    );
\sel_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sel(1),
      O => sel_IBUF(1)
    );
\sel_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sel(2),
      O => sel_IBUF(2)
    );
\sel_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sel(3),
      O => sel_IBUF(3)
    );
end STRUCTURE;
