-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Nov 29 17:24:51 2022
-- Host        : RDSVDI-10 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               M:/ece230/final_proj/final_proj.sim/sim_1/impl/func/xsim/top_level_architecture_func_impl.vhd
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
  attribute ECO_CHECKSUM of top_level_architecture : entity is "ecf635e";
end top_level_architecture;

architecture STRUCTURE of top_level_architecture is
  signal A_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \adder/c2\ : STD_LOGIC;
  signal \adder/c3\ : STD_LOGIC;
  signal \b_inc/c3\ : STD_LOGIC;
  signal flags_OBUF : STD_LOGIC;
  signal flags_reg_i_1_n_0 : STD_LOGIC;
  signal flags_reg_i_2_n_0 : STD_LOGIC;
  signal flags_reg_i_3_n_0 : STD_LOGIC;
  signal flags_reg_i_4_n_0 : STD_LOGIC;
  signal flags_reg_i_5_n_0 : STD_LOGIC;
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
  signal \result_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \result_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal sel_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \subtractor/c2\ : STD_LOGIC;
  signal \subtractor/c3\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of flags_reg : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of flags_reg_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of flags_reg_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of flags_reg_i_5 : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \r_and_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_and_reg[0]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \r_and_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_and_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \r_and_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_and_reg[2]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \r_and_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_and_reg[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_and_reg[3]_i_2\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \r_or_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_or_reg[0]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \r_or_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_or_reg[1]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \r_or_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_or_reg[2]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \r_or_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_or_reg[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_or_reg[3]_i_2\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \r_xnor_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_xnor_reg[0]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \r_xnor_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_xnor_reg[1]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \r_xnor_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_xnor_reg[2]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \r_xnor_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_xnor_reg[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_xnor_reg[3]_i_2\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \r_xor_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_xor_reg[0]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \r_xor_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_xor_reg[1]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \r_xor_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_xor_reg[2]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \r_xor_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \r_xor_reg[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \result_OBUF[1]_inst_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result_OBUF[1]_inst_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result_OBUF[1]_inst_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result_OBUF[2]_inst_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result_OBUF[2]_inst_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \result_OBUF[3]_inst_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result_OBUF[3]_inst_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result_OBUF[3]_inst_i_8\ : label is "soft_lutpair7";
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
flags_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => flags_reg_i_3_n_0,
      I1 => sel_IBUF(3),
      I2 => sel_IBUF(1),
      I3 => flags_reg_i_4_n_0,
      I4 => sel_IBUF(2),
      I5 => flags_reg_i_5_n_0,
      O => flags_reg_i_1_n_0
    );
flags_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDDB"
    )
        port map (
      I0 => sel_IBUF(3),
      I1 => sel_IBUF(2),
      I2 => sel_IBUF(1),
      I3 => sel_IBUF(0),
      O => flags_reg_i_2_n_0
    );
flags_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => A_IBUF(2),
      I1 => A_IBUF(0),
      I2 => A_IBUF(1),
      I3 => A_IBUF(3),
      I4 => \result_OBUF[3]_inst_i_6_n_0\,
      O => flags_reg_i_3_n_0
    );
flags_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"402F4020"
    )
        port map (
      I0 => \adder/c3\,
      I1 => A_IBUF(3),
      I2 => \result_OBUF[3]_inst_i_6_n_0\,
      I3 => B_IBUF(3),
      I4 => \b_inc/c3\,
      O => flags_reg_i_4_n_0
    );
flags_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2008"
    )
        port map (
      I0 => sel_IBUF(3),
      I1 => A_IBUF(3),
      I2 => B_IBUF(3),
      I3 => \subtractor/c3\,
      O => flags_reg_i_5_n_0
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
\r_and_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A_IBUF(0),
      I1 => B_IBUF(0),
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
\r_and_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A_IBUF(1),
      I1 => B_IBUF(1),
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
\r_and_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A_IBUF(2),
      I1 => B_IBUF(2),
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
\r_and_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A_IBUF(3),
      I1 => B_IBUF(3),
      O => p_6_out(3)
    );
\r_and_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sel_IBUF(0),
      I1 => sel_IBUF(3),
      I2 => sel_IBUF(2),
      I3 => sel_IBUF(1),
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
\r_or_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A_IBUF(0),
      I1 => B_IBUF(0),
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
\r_or_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A_IBUF(1),
      I1 => B_IBUF(1),
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
\r_or_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A_IBUF(2),
      I1 => B_IBUF(2),
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
\r_or_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => A_IBUF(3),
      I1 => B_IBUF(3),
      O => \r_or_reg[3]_i_1_n_0\
    );
\r_or_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel_IBUF(0),
      I1 => sel_IBUF(3),
      I2 => sel_IBUF(2),
      I3 => sel_IBUF(1),
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
\r_xnor_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => B_IBUF(0),
      I1 => A_IBUF(0),
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
\r_xnor_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A_IBUF(1),
      I1 => B_IBUF(1),
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
\r_xnor_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A_IBUF(2),
      I1 => B_IBUF(2),
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
\r_xnor_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A_IBUF(3),
      I1 => B_IBUF(3),
      O => \r_xnor_reg[3]_i_1_n_0\
    );
\r_xnor_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sel_IBUF(2),
      I1 => sel_IBUF(3),
      I2 => sel_IBUF(0),
      I3 => sel_IBUF(1),
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
\r_xor_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B_IBUF(0),
      I1 => A_IBUF(0),
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
\r_xor_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B_IBUF(1),
      I1 => A_IBUF(1),
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
\r_xor_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B_IBUF(2),
      I1 => A_IBUF(2),
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
\r_xor_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B_IBUF(3),
      I1 => A_IBUF(3),
      O => \r_xor_reg[3]_i_1_n_0\
    );
\r_xor_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sel_IBUF(1),
      I1 => sel_IBUF(3),
      I2 => sel_IBUF(2),
      I3 => sel_IBUF(0),
      O => \r_xor_reg[3]_i_2_n_0\
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
      S => sel_IBUF(2)
    );
\result_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5454A7A4"
    )
        port map (
      I0 => B_IBUF(0),
      I1 => sel_IBUF(1),
      I2 => sel_IBUF(3),
      I3 => sel_IBUF(0),
      I4 => A_IBUF(0),
      O => \result_OBUF[0]_inst_i_2_n_0\
    );
\result_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BB888BB88BB8BB"
    )
        port map (
      I0 => \result_OBUF[0]_inst_i_4_n_0\,
      I1 => sel_IBUF(3),
      I2 => sel_IBUF(1),
      I3 => A_IBUF(0),
      I4 => sel_IBUF(0),
      I5 => B_IBUF(0),
      O => \result_OBUF[0]_inst_i_3_n_0\
    );
\result_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_xnor(0),
      I1 => r_xor(0),
      I2 => sel_IBUF(1),
      I3 => r_or(0),
      I4 => sel_IBUF(0),
      I5 => r_and(0),
      O => \result_OBUF[0]_inst_i_4_n_0\
    );
\result_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(1),
      O => result(1)
    );
\result_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_2_n_0\,
      I1 => sel_IBUF(3),
      I2 => sel_IBUF(1),
      I3 => \result_OBUF[1]_inst_i_3_n_0\,
      I4 => sel_IBUF(2),
      I5 => \result_OBUF[1]_inst_i_4_n_0\,
      O => result_OBUF(1)
    );
\result_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888ABBBABBBA888"
    )
        port map (
      I0 => \result_OBUF[1]_inst_i_5_n_0\,
      I1 => sel_IBUF(3),
      I2 => sel_IBUF(1),
      I3 => sel_IBUF(0),
      I4 => A_IBUF(1),
      I5 => A_IBUF(0),
      O => \result_OBUF[1]_inst_i_2_n_0\
    );
\result_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"906F5FA0"
    )
        port map (
      I0 => A_IBUF(1),
      I1 => A_IBUF(0),
      I2 => \result_OBUF[3]_inst_i_6_n_0\,
      I3 => B_IBUF(1),
      I4 => B_IBUF(0),
      O => \result_OBUF[1]_inst_i_3_n_0\
    );
\result_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D000F00D2FF0F00"
    )
        port map (
      I0 => B_IBUF(0),
      I1 => A_IBUF(0),
      I2 => B_IBUF(1),
      I3 => \result_OBUF[1]_inst_i_6_n_0\,
      I4 => \result_OBUF[1]_inst_i_7_n_0\,
      I5 => A_IBUF(1),
      O => \result_OBUF[1]_inst_i_4_n_0\
    );
\result_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_xnor(1),
      I1 => r_xor(1),
      I2 => sel_IBUF(1),
      I3 => r_or(1),
      I4 => sel_IBUF(0),
      I5 => r_and(1),
      O => \result_OBUF[1]_inst_i_5_n_0\
    );
\result_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel_IBUF(1),
      I1 => sel_IBUF(3),
      O => \result_OBUF[1]_inst_i_6_n_0\
    );
\result_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => sel_IBUF(3),
      I1 => sel_IBUF(1),
      I2 => sel_IBUF(0),
      O => \result_OBUF[1]_inst_i_7_n_0\
    );
\result_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(2),
      O => result(2)
    );
\result_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \result_OBUF[2]_inst_i_2_n_0\,
      I1 => sel_IBUF(3),
      I2 => sel_IBUF(1),
      I3 => \result_OBUF[2]_inst_i_3_n_0\,
      I4 => sel_IBUF(2),
      I5 => \result_OBUF[2]_inst_i_4_n_0\,
      O => result_OBUF(2)
    );
\result_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \result_OBUF[2]_inst_i_5_n_0\,
      I1 => \result_OBUF[3]_inst_i_6_n_0\,
      I2 => A_IBUF(2),
      I3 => A_IBUF(1),
      I4 => A_IBUF(0),
      O => \result_OBUF[2]_inst_i_2_n_0\
    );
\result_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"906F9F609F609F60"
    )
        port map (
      I0 => A_IBUF(2),
      I1 => \adder/c2\,
      I2 => \result_OBUF[3]_inst_i_6_n_0\,
      I3 => B_IBUF(2),
      I4 => B_IBUF(1),
      I5 => B_IBUF(0),
      O => \result_OBUF[2]_inst_i_3_n_0\
    );
\result_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66306630993F9930"
    )
        port map (
      I0 => \subtractor/c2\,
      I1 => B_IBUF(2),
      I2 => sel_IBUF(1),
      I3 => sel_IBUF(3),
      I4 => sel_IBUF(0),
      I5 => A_IBUF(2),
      O => \result_OBUF[2]_inst_i_4_n_0\
    );
\result_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_xnor(2),
      I1 => r_xor(2),
      I2 => sel_IBUF(1),
      I3 => r_or(2),
      I4 => sel_IBUF(0),
      I5 => r_and(2),
      O => \result_OBUF[2]_inst_i_5_n_0\
    );
\result_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => A_IBUF(1),
      I1 => B_IBUF(1),
      I2 => B_IBUF(0),
      I3 => A_IBUF(0),
      O => \adder/c2\
    );
\result_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2BB"
    )
        port map (
      I0 => A_IBUF(1),
      I1 => B_IBUF(1),
      I2 => A_IBUF(0),
      I3 => B_IBUF(0),
      O => \subtractor/c2\
    );
\result_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => result_OBUF(3),
      O => result(3)
    );
\result_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => \result_OBUF[3]_inst_i_2_n_0\,
      I1 => sel_IBUF(3),
      I2 => sel_IBUF(1),
      I3 => \result_OBUF[3]_inst_i_3_n_0\,
      I4 => sel_IBUF(2),
      I5 => \result_OBUF[3]_inst_i_4_n_0\,
      O => result_OBUF(3)
    );
\result_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \result_OBUF[3]_inst_i_5_n_0\,
      I1 => \result_OBUF[3]_inst_i_6_n_0\,
      I2 => A_IBUF(3),
      I3 => A_IBUF(2),
      I4 => A_IBUF(0),
      I5 => A_IBUF(1),
      O => \result_OBUF[3]_inst_i_2_n_0\
    );
\result_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"906F9F60"
    )
        port map (
      I0 => A_IBUF(3),
      I1 => \adder/c3\,
      I2 => \result_OBUF[3]_inst_i_6_n_0\,
      I3 => B_IBUF(3),
      I4 => \b_inc/c3\,
      O => \result_OBUF[3]_inst_i_3_n_0\
    );
\result_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66306630993F9930"
    )
        port map (
      I0 => \subtractor/c3\,
      I1 => B_IBUF(3),
      I2 => sel_IBUF(1),
      I3 => sel_IBUF(3),
      I4 => sel_IBUF(0),
      I5 => A_IBUF(3),
      O => \result_OBUF[3]_inst_i_4_n_0\
    );
\result_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r_xnor(3),
      I1 => r_xor(3),
      I2 => sel_IBUF(1),
      I3 => r_or(3),
      I4 => sel_IBUF(0),
      I5 => r_and(3),
      O => \result_OBUF[3]_inst_i_5_n_0\
    );
\result_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => sel_IBUF(3),
      I1 => sel_IBUF(1),
      I2 => sel_IBUF(0),
      O => \result_OBUF[3]_inst_i_6_n_0\
    );
\result_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => A_IBUF(2),
      I1 => B_IBUF(2),
      I2 => A_IBUF(0),
      I3 => B_IBUF(0),
      I4 => B_IBUF(1),
      I5 => A_IBUF(1),
      O => \adder/c3\
    );
\result_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => B_IBUF(1),
      I1 => B_IBUF(0),
      I2 => B_IBUF(2),
      O => \b_inc/c3\
    );
\result_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB2BBBBB2222BB2B"
    )
        port map (
      I0 => A_IBUF(2),
      I1 => B_IBUF(2),
      I2 => B_IBUF(0),
      I3 => A_IBUF(0),
      I4 => B_IBUF(1),
      I5 => A_IBUF(1),
      O => \subtractor/c3\
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
