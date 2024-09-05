-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Dec  7 16:05:54 2022
-- Host        : RDSVDI-67 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               M:/ece230/final_proj/final_proj.sim/sim_1/impl/func/xsim/top_level_tb_func_impl.vhd
-- Design      : Multiplier
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Multiplier is
  port (
    X : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Y : in STD_LOGIC_VECTOR ( 3 downto 0 );
    F_out : out STD_LOGIC;
    Prod : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Multiplier : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Multiplier : entity is "591b260";
end Multiplier;

architecture STRUCTURE of Multiplier is
  signal Prod_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Prod_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Prod_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Prod_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Prod_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Prod_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Prod_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Prod_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Prod_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Prod_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal X_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Y_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Prod_OBUF[0]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Prod_OBUF[1]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Prod_OBUF[7]_inst_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Prod_OBUF[7]_inst_i_3\ : label is "soft_lutpair1";
begin
F_out_OBUF_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => F_out,
      T => '1'
    );
\Prod_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Prod_OBUF(0),
      O => Prod(0)
    );
\Prod_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => X_IBUF(0),
      I1 => Y_IBUF(0),
      O => Prod_OBUF(0)
    );
\Prod_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Prod_OBUF(1),
      O => Prod(1)
    );
\Prod_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => X_IBUF(1),
      I1 => Y_IBUF(0),
      I2 => Y_IBUF(1),
      I3 => X_IBUF(0),
      O => Prod_OBUF(1)
    );
\Prod_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Prod_OBUF(2),
      O => Prod(2)
    );
\Prod_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"635F6CA06CA06CA0"
    )
        port map (
      I0 => Y_IBUF(2),
      I1 => X_IBUF(2),
      I2 => X_IBUF(0),
      I3 => Y_IBUF(0),
      I4 => Y_IBUF(1),
      I5 => X_IBUF(1),
      O => Prod_OBUF(2)
    );
\Prod_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Prod_OBUF(3),
      O => Prod(3)
    );
\Prod_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"635F6CA06CA06CA0"
    )
        port map (
      I0 => Y_IBUF(3),
      I1 => X_IBUF(2),
      I2 => X_IBUF(0),
      I3 => Y_IBUF(0),
      I4 => Y_IBUF(1),
      I5 => X_IBUF(1),
      O => Prod_OBUF(3)
    );
\Prod_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Prod_OBUF(4),
      O => Prod(4)
    );
\Prod_OBUF[4]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Prod_OBUF[4]_inst_i_2_n_0\,
      I1 => \Prod_OBUF[4]_inst_i_3_n_0\,
      O => Prod_OBUF(4),
      S => Y_IBUF(3)
    );
\Prod_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99FFAA006A00AA00"
    )
        port map (
      I0 => X_IBUF(3),
      I1 => X_IBUF(1),
      I2 => X_IBUF(0),
      I3 => Y_IBUF(0),
      I4 => Y_IBUF(1),
      I5 => X_IBUF(2),
      O => \Prod_OBUF[4]_inst_i_2_n_0\
    );
\Prod_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B74777B8487888"
    )
        port map (
      I0 => X_IBUF(3),
      I1 => Y_IBUF(0),
      I2 => X_IBUF(2),
      I3 => Y_IBUF(1),
      I4 => X_IBUF(0),
      I5 => X_IBUF(1),
      O => \Prod_OBUF[4]_inst_i_3_n_0\
    );
\Prod_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Prod_OBUF(5),
      O => Prod(5)
    );
\Prod_OBUF[5]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Prod_OBUF[5]_inst_i_2_n_0\,
      I1 => \Prod_OBUF[5]_inst_i_3_n_0\,
      O => Prod_OBUF(5),
      S => Y_IBUF(3)
    );
\Prod_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"34000C00CC00CC00"
    )
        port map (
      I0 => X_IBUF(0),
      I1 => X_IBUF(3),
      I2 => X_IBUF(2),
      I3 => Y_IBUF(1),
      I4 => X_IBUF(1),
      I5 => Y_IBUF(0),
      O => \Prod_OBUF[5]_inst_i_2_n_0\
    );
\Prod_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"659A387022DA78F0"
    )
        port map (
      I0 => X_IBUF(3),
      I1 => Y_IBUF(0),
      I2 => X_IBUF(2),
      I3 => X_IBUF(1),
      I4 => Y_IBUF(1),
      I5 => X_IBUF(0),
      O => \Prod_OBUF[5]_inst_i_3_n_0\
    );
\Prod_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Prod_OBUF(6),
      O => Prod(6)
    );
\Prod_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \Prod_OBUF[6]_inst_i_2_n_0\,
      I1 => \Prod_OBUF[6]_inst_i_3_n_0\,
      I2 => Y_IBUF(3),
      I3 => \Prod_OBUF[6]_inst_i_4_n_0\,
      I4 => Y_IBUF(2),
      O => Prod_OBUF(6)
    );
\Prod_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"380CCC4C04CC0CCC"
    )
        port map (
      I0 => X_IBUF(0),
      I1 => X_IBUF(3),
      I2 => X_IBUF(2),
      I3 => Y_IBUF(1),
      I4 => X_IBUF(1),
      I5 => Y_IBUF(0),
      O => \Prod_OBUF[6]_inst_i_2_n_0\
    );
\Prod_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55E04A2A82AAAAAA"
    )
        port map (
      I0 => X_IBUF(3),
      I1 => X_IBUF(0),
      I2 => Y_IBUF(0),
      I3 => X_IBUF(1),
      I4 => Y_IBUF(1),
      I5 => X_IBUF(2),
      O => \Prod_OBUF[6]_inst_i_3_n_0\
    );
\Prod_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028800080"
    )
        port map (
      I0 => X_IBUF(2),
      I1 => Y_IBUF(1),
      I2 => X_IBUF(1),
      I3 => Y_IBUF(0),
      I4 => X_IBUF(0),
      I5 => X_IBUF(3),
      O => \Prod_OBUF[6]_inst_i_4_n_0\
    );
\Prod_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Prod_OBUF(7),
      O => Prod(7)
    );
\Prod_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54040000"
    )
        port map (
      I0 => X_IBUF(3),
      I1 => \Prod_OBUF[7]_inst_i_2_n_0\,
      I2 => Y_IBUF(2),
      I3 => \Prod_OBUF[7]_inst_i_3_n_0\,
      I4 => Y_IBUF(3),
      O => Prod_OBUF(7)
    );
\Prod_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8800000"
    )
        port map (
      I0 => X_IBUF(0),
      I1 => Y_IBUF(0),
      I2 => X_IBUF(1),
      I3 => Y_IBUF(1),
      I4 => X_IBUF(2),
      O => \Prod_OBUF[7]_inst_i_2_n_0\
    );
\Prod_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => X_IBUF(2),
      I1 => Y_IBUF(1),
      I2 => X_IBUF(1),
      I3 => Y_IBUF(0),
      O => \Prod_OBUF[7]_inst_i_3_n_0\
    );
\X_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(0),
      O => X_IBUF(0)
    );
\X_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(1),
      O => X_IBUF(1)
    );
\X_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(2),
      O => X_IBUF(2)
    );
\X_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(3),
      O => X_IBUF(3)
    );
\Y_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(0),
      O => Y_IBUF(0)
    );
\Y_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(1),
      O => Y_IBUF(1)
    );
\Y_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(2),
      O => Y_IBUF(2)
    );
\Y_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(3),
      O => Y_IBUF(3)
    );
end STRUCTURE;
