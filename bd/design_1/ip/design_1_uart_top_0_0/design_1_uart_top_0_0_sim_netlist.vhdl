-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Apr 19 23:10:18 2025
-- Host        : LenovoTuur running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/TUUR/complex digital
--               design/lab_2/lab_2.srcs/sources_1/bd/design_1/ip/design_1_uart_top_0_0/design_1_uart_top_0_0_sim_netlist.vhdl}
-- Design      : design_1_uart_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_rx is
  port (
    wRxDone : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_rFSM_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    iRx : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    \rFSM__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rCnt_reg[0]\ : in STD_LOGIC;
    \rCnt_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rBuffer_reg[0]\ : in STD_LOGIC;
    \rBuffer_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_rx : entity is "uart_rx";
end design_1_uart_top_0_0_uart_rx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_rx is
  signal \FSM_sequential_wFSM_Next_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_wFSM_Next_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_wFSM_Next_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_wFSM_Next_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_wFSM_Next_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_wFSM_Next_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \__7/i__n_0\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[10]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[4]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[5]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[6]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[7]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[8]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[9]\ : STD_LOGIC;
  signal rFSM_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rRx1 : STD_LOGIC;
  signal rRx2 : STD_LOGIC;
  signal rRxData_Current : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rRxData_Next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rRxData_Next__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rRxData_Next_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \rRxData_Next_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \rRxData_Next_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \rRxData_Next_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal wBit_Next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wBit_Next__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wBit_Next_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \wBit_Next_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal wCnt_Next : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \wCnt_Next__1\ : STD_LOGIC;
  signal \wCnt_Next_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \wCnt_Next_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \wFSM_Next__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wFSM_Next__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^wrxdone\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[0]\ : label is "sIDLE:000,sSTART:001,sDATA:010,sDONE:100,sSTOP:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[1]\ : label is "sIDLE:000,sSTART:001,sDATA:010,sDONE:100,sSTOP:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_Current_reg[2]\ : label is "sIDLE:000,sSTART:001,sDATA:010,sDONE:100,sSTOP:011";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_wFSM_Next_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_wFSM_Next_reg[0]_i_2\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_wFSM_Next_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_sequential_wFSM_Next_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_wFSM_Next_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_sequential_wFSM_Next_reg[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_wFSM_Next_reg[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rBuffer[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBuffer[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rBuffer[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rBuffer[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rBuffer[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rBuffer[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBuffer[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBuffer[7]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \rRxData_Next_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rRxData_Next_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \rRxData_Next_reg[1]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \rRxData_Next_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rRxData_Next_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rRxData_Next_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rRxData_Next_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rRxData_Next_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rRxData_Next_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \rRxData_Next_reg[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rRxData_Next_reg[7]_i_5\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \wBit_Next_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \wBit_Next_reg[0]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \wBit_Next_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \wBit_Next_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \wBit_Next_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \wBit_Next_reg[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wBit_Next_reg[2]_i_2\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \wCnt_Next_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \wCnt_Next_reg[0]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \wCnt_Next_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wCnt_Next_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wCnt_Next_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \wCnt_Next_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \wCnt_Next_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \wCnt_Next_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \wCnt_Next_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \wCnt_Next_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \wCnt_Next_reg[5]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \wCnt_Next_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \wCnt_Next_reg[6]_i_2\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \wCnt_Next_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \wCnt_Next_reg[7]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \wCnt_Next_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \wCnt_Next_reg[8]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \wCnt_Next_reg[9]\ : label is "LD";
begin
  wRxDone <= \^wrxdone\;
\FSM_sequential_rFSM_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \wFSM_Next__0\(0),
      Q => rFSM_Current(0),
      R => iRst
    );
\FSM_sequential_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \wFSM_Next__0\(1),
      Q => rFSM_Current(1),
      R => iRst
    );
\FSM_sequential_rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \wFSM_Next__0\(2),
      Q => rFSM_Current(2),
      R => iRst
    );
\FSM_sequential_wFSM_Next_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wFSM_Next__1\(0),
      G => \wCnt_Next__1\,
      GE => '1',
      Q => \wFSM_Next__0\(0)
    );
\FSM_sequential_wFSM_Next_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001BFF11"
    )
        port map (
      I0 => rFSM_Current(1),
      I1 => rRx2,
      I2 => \FSM_sequential_wFSM_Next_reg[0]_i_2_n_0\,
      I3 => rFSM_Current(0),
      I4 => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\,
      I5 => rFSM_Current(2),
      O => \wFSM_Next__1\(0)
    );
\FSM_sequential_wFSM_Next_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[0]\,
      I1 => \rBit_Current_reg_n_0_[1]\,
      I2 => \rBit_Current_reg_n_0_[2]\,
      O => \FSM_sequential_wFSM_Next_reg[0]_i_2_n_0\
    );
\FSM_sequential_wFSM_Next_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_wFSM_Next_reg[1]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => \wFSM_Next__0\(1)
    );
\FSM_sequential_wFSM_Next_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => rFSM_Current(0),
      I2 => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\,
      I3 => rFSM_Current(1),
      O => \FSM_sequential_wFSM_Next_reg[1]_i_1_n_0\
    );
\FSM_sequential_wFSM_Next_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_wFSM_Next_reg[2]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => \wFSM_Next__0\(2)
    );
\FSM_sequential_wFSM_Next_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\,
      I1 => rFSM_Current(0),
      I2 => rFSM_Current(2),
      I3 => rFSM_Current(1),
      O => \FSM_sequential_wFSM_Next_reg[2]_i_1_n_0\
    );
\FSM_sequential_wFSM_Next_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0055FFF7"
    )
        port map (
      I0 => rFSM_Current(1),
      I1 => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\,
      I2 => \FSM_sequential_wFSM_Next_reg[2]_i_4_n_0\,
      I3 => rFSM_Current(0),
      I4 => rFSM_Current(2),
      O => \wCnt_Next__1\
    );
\FSM_sequential_wFSM_Next_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[10]\,
      I1 => \FSM_sequential_wFSM_Next_reg[2]_i_5_n_0\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      I5 => \rCnt_Current_reg_n_0_[9]\,
      O => \FSM_sequential_wFSM_Next_reg[2]_i_3_n_0\
    );
\FSM_sequential_wFSM_Next_reg[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \FSM_sequential_wFSM_Next_reg[2]_i_5_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[10]\,
      I4 => \FSM_sequential_wFSM_Next_reg[2]_i_6_n_0\,
      O => \FSM_sequential_wFSM_Next_reg[2]_i_4_n_0\
    );
\FSM_sequential_wFSM_Next_reg[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[2]\,
      I1 => \rCnt_Current_reg_n_0_[5]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      I3 => \rCnt_Current_reg_n_0_[3]\,
      O => \FSM_sequential_wFSM_Next_reg[2]_i_5_n_0\
    );
\FSM_sequential_wFSM_Next_reg[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[6]\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current_reg_n_0_[8]\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      O => \FSM_sequential_wFSM_Next_reg[2]_i_6_n_0\
    );
\__7/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \wFSM_Next__0\(2),
      I1 => \wFSM_Next__0\(0),
      I2 => \wFSM_Next__0\(1),
      O => \__7/i__n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wBit_Next(0),
      Q => \rBit_Current_reg_n_0_[0]\,
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wBit_Next(1),
      Q => \rBit_Current_reg_n_0_[1]\,
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wBit_Next(2),
      Q => \rBit_Current_reg_n_0_[2]\,
      R => iRst
    );
\rBuffer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => rRxData_Current(0),
      I1 => \rFSM__0\(1),
      I2 => \rFSM__0\(2),
      O => D(0)
    );
\rBuffer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \rFSM__0\(1),
      I1 => \rFSM__0\(2),
      I2 => rRxData_Current(1),
      O => D(1)
    );
\rBuffer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \rFSM__0\(1),
      I1 => \rFSM__0\(2),
      I2 => rRxData_Current(2),
      O => D(2)
    );
\rBuffer[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \rFSM__0\(1),
      I1 => \rFSM__0\(2),
      I2 => rRxData_Current(3),
      O => D(3)
    );
\rBuffer[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \rFSM__0\(1),
      I1 => \rFSM__0\(2),
      I2 => rRxData_Current(4),
      O => D(4)
    );
\rBuffer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \rFSM__0\(1),
      I1 => \rFSM__0\(2),
      I2 => rRxData_Current(5),
      O => D(5)
    );
\rBuffer[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \rFSM__0\(1),
      I1 => \rFSM__0\(2),
      I2 => rRxData_Current(6),
      O => D(6)
    );
\rBuffer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \rFSM__0\(1),
      I1 => \rFSM__0\(2),
      I2 => rRxData_Current(7),
      O => D(7)
    );
\rBuffer[95]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2A000000"
    )
        port map (
      I0 => \rFSM__0\(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \^wrxdone\,
      I4 => \rBuffer_reg[0]\,
      I5 => \rBuffer_reg[0]_0\(0),
      O => \FSM_sequential_rFSM_reg[0]\(0)
    );
\rCnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02030F0F0203030F"
    )
        port map (
      I0 => \rCnt[3]_i_3_n_0\,
      I1 => \rFSM__0\(1),
      I2 => \rFSM__0\(2),
      I3 => \rCnt_reg[0]\,
      I4 => \rFSM__0\(0),
      I5 => \rCnt_reg[0]_0\,
      O => E(0)
    );
\rCnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^wrxdone\,
      I1 => Q(1),
      I2 => Q(0),
      O => \rCnt[3]_i_3_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_Next(0),
      Q => \rCnt_Current_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_Next(10),
      Q => \rCnt_Current_reg_n_0_[10]\,
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_Next(1),
      Q => \rCnt_Current_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_Next(2),
      Q => \rCnt_Current_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_Next(3),
      Q => \rCnt_Current_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_Next(4),
      Q => \rCnt_Current_reg_n_0_[4]\,
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_Next(5),
      Q => \rCnt_Current_reg_n_0_[5]\,
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_Next(6),
      Q => \rCnt_Current_reg_n_0_[6]\,
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_Next(7),
      Q => \rCnt_Current_reg_n_0_[7]\,
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_Next(8),
      Q => \rCnt_Current_reg_n_0_[8]\,
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wCnt_Next(9),
      Q => \rCnt_Current_reg_n_0_[9]\,
      R => iRst
    );
rRx1_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => iRx,
      Q => rRx1,
      R => '0'
    );
rRx2_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRx1,
      Q => rRx2,
      R => '0'
    );
\rRxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRxData_Next(0),
      Q => rRxData_Current(0),
      R => iRst
    );
\rRxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRxData_Next(1),
      Q => rRxData_Current(1),
      R => iRst
    );
\rRxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRxData_Next(2),
      Q => rRxData_Current(2),
      R => iRst
    );
\rRxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRxData_Next(3),
      Q => rRxData_Current(3),
      R => iRst
    );
\rRxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRxData_Next(4),
      Q => rRxData_Current(4),
      R => iRst
    );
\rRxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRxData_Next(5),
      Q => rRxData_Current(5),
      R => iRst
    );
\rRxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRxData_Next(6),
      Q => rRxData_Current(6),
      R => iRst
    );
\rRxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRxData_Next(7),
      Q => rRxData_Current(7),
      R => iRst
    );
\rRxData_Next_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rRxData_Next__0\(0),
      G => \rRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => rRxData_Next(0)
    );
\rRxData_Next_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00223022"
    )
        port map (
      I0 => rRxData_Current(0),
      I1 => rFSM_Current(0),
      I2 => rRxData_Current(1),
      I3 => rFSM_Current(1),
      I4 => rFSM_Current(2),
      O => \rRxData_Next__0\(0)
    );
\rRxData_Next_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rRxData_Next__0\(1),
      G => \rRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => rRxData_Next(1)
    );
\rRxData_Next_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00223022"
    )
        port map (
      I0 => rRxData_Current(1),
      I1 => rFSM_Current(0),
      I2 => rRxData_Current(2),
      I3 => rFSM_Current(1),
      I4 => rFSM_Current(2),
      O => \rRxData_Next__0\(1)
    );
\rRxData_Next_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rRxData_Next__0\(2),
      G => \rRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => rRxData_Next(2)
    );
\rRxData_Next_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00223022"
    )
        port map (
      I0 => rRxData_Current(2),
      I1 => rFSM_Current(0),
      I2 => rRxData_Current(3),
      I3 => rFSM_Current(1),
      I4 => rFSM_Current(2),
      O => \rRxData_Next__0\(2)
    );
\rRxData_Next_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rRxData_Next__0\(3),
      G => \rRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => rRxData_Next(3)
    );
\rRxData_Next_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00223022"
    )
        port map (
      I0 => rRxData_Current(3),
      I1 => rFSM_Current(0),
      I2 => rRxData_Current(4),
      I3 => rFSM_Current(1),
      I4 => rFSM_Current(2),
      O => \rRxData_Next__0\(3)
    );
\rRxData_Next_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rRxData_Next__0\(4),
      G => \rRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => rRxData_Next(4)
    );
\rRxData_Next_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00223022"
    )
        port map (
      I0 => rRxData_Current(4),
      I1 => rFSM_Current(0),
      I2 => rRxData_Current(5),
      I3 => rFSM_Current(1),
      I4 => rFSM_Current(2),
      O => \rRxData_Next__0\(4)
    );
\rRxData_Next_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rRxData_Next__0\(5),
      G => \rRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => rRxData_Next(5)
    );
\rRxData_Next_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00223022"
    )
        port map (
      I0 => rRxData_Current(5),
      I1 => rFSM_Current(0),
      I2 => rRxData_Current(6),
      I3 => rFSM_Current(1),
      I4 => rFSM_Current(2),
      O => \rRxData_Next__0\(5)
    );
\rRxData_Next_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rRxData_Next__0\(6),
      G => \rRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => rRxData_Next(6)
    );
\rRxData_Next_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00223022"
    )
        port map (
      I0 => rRxData_Current(6),
      I1 => rFSM_Current(0),
      I2 => rRxData_Current(7),
      I3 => rFSM_Current(1),
      I4 => rFSM_Current(2),
      O => \rRxData_Next__0\(6)
    );
\rRxData_Next_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rRxData_Next__0\(7),
      G => \rRxData_Next_reg[7]_i_2_n_0\,
      GE => '1',
      Q => rRxData_Next(7)
    );
\rRxData_Next_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00223022"
    )
        port map (
      I0 => rRxData_Current(7),
      I1 => rFSM_Current(0),
      I2 => rRx2,
      I3 => rFSM_Current(1),
      I4 => rFSM_Current(2),
      O => \rRxData_Next__0\(7)
    );
\rRxData_Next_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
        port map (
      I0 => \rRxData_Next_reg[7]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[4]\,
      I2 => \rCnt_Current_reg_n_0_[8]\,
      I3 => \rCnt_Current_reg_n_0_[5]\,
      I4 => \rRxData_Next_reg[7]_i_4_n_0\,
      I5 => \rRxData_Next_reg[7]_i_5_n_0\,
      O => \rRxData_Next_reg[7]_i_2_n_0\
    );
\rRxData_Next_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rFSM_Current(0),
      I1 => rFSM_Current(1),
      O => \rRxData_Next_reg[7]_i_3_n_0\
    );
\rRxData_Next_reg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rFSM_Current(0),
      I1 => rFSM_Current(2),
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[10]\,
      I4 => \rCnt_Current_reg_n_0_[7]\,
      I5 => \rCnt_Current_reg_n_0_[6]\,
      O => \rRxData_Next_reg[7]_i_4_n_0\
    );
\rRxData_Next_reg[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[3]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[0]\,
      O => \rRxData_Next_reg[7]_i_5_n_0\
    );
rRxDone_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \__7/i__n_0\,
      Q => \^wrxdone\,
      R => iRst
    );
\wBit_Next_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wBit_Next__0\(0),
      G => \wBit_Next_reg[2]_i_2_n_0\,
      GE => '1',
      Q => wBit_Next(0)
    );
\wBit_Next_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => rFSM_Current(1),
      I2 => \rBit_Current_reg_n_0_[0]\,
      O => \wBit_Next__0\(0)
    );
\wBit_Next_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wBit_Next_reg[1]_i_1_n_0\,
      G => \wBit_Next_reg[2]_i_2_n_0\,
      GE => '1',
      Q => wBit_Next(1)
    );
\wBit_Next_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1400"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rBit_Current_reg_n_0_[1]\,
      I2 => \rBit_Current_reg_n_0_[0]\,
      I3 => rFSM_Current(1),
      O => \wBit_Next_reg[1]_i_1_n_0\
    );
\wBit_Next_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wBit_Next__0\(2),
      G => \wBit_Next_reg[2]_i_2_n_0\,
      GE => '1',
      Q => wBit_Next(2)
    );
\wBit_Next_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222000"
    )
        port map (
      I0 => rFSM_Current(1),
      I1 => rFSM_Current(2),
      I2 => \rBit_Current_reg_n_0_[0]\,
      I3 => \rBit_Current_reg_n_0_[1]\,
      I4 => \rBit_Current_reg_n_0_[2]\,
      O => \wBit_Next__0\(2)
    );
\wBit_Next_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0705"
    )
        port map (
      I0 => rFSM_Current(1),
      I1 => rFSM_Current(2),
      I2 => rFSM_Current(0),
      I3 => \FSM_sequential_wFSM_Next_reg[2]_i_4_n_0\,
      O => \wBit_Next_reg[2]_i_2_n_0\
    );
\wCnt_Next_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wCnt_Next_reg[0]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => wCnt_Next(0)
    );
\wCnt_Next_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wCnt_Next_reg[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      O => \wCnt_Next_reg[0]_i_1_n_0\
    );
\wCnt_Next_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wCnt_Next_reg[10]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => wCnt_Next(10)
    );
\wCnt_Next_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0800"
    )
        port map (
      I0 => \wCnt_Next_reg[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[9]\,
      I2 => \wCnt_Next_reg[10]_i_3_n_0\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      I4 => \rCnt_Current_reg_n_0_[10]\,
      O => \wCnt_Next_reg[10]_i_1_n_0\
    );
\wCnt_Next_reg[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057005700570000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[10]\,
      I1 => \FSM_sequential_wFSM_Next_reg[2]_i_5_n_0\,
      I2 => \FSM_sequential_wFSM_Next_reg[2]_i_6_n_0\,
      I3 => rFSM_Current(2),
      I4 => rFSM_Current(1),
      I5 => rFSM_Current(0),
      O => \wCnt_Next_reg[10]_i_2_n_0\
    );
\wCnt_Next_reg[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFFFFFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[6]\,
      I1 => \rCnt_Current_reg_n_0_[5]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      I3 => \rCnt_Current_reg_n_0_[3]\,
      I4 => \wCnt_Next_reg[6]_i_2_n_0\,
      I5 => \rCnt_Current_reg_n_0_[7]\,
      O => \wCnt_Next_reg[10]_i_3_n_0\
    );
\wCnt_Next_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wCnt_Next_reg[1]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => wCnt_Next(1)
    );
\wCnt_Next_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \wCnt_Next_reg[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      O => \wCnt_Next_reg[1]_i_1_n_0\
    );
\wCnt_Next_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wCnt_Next_reg[2]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => wCnt_Next(2)
    );
\wCnt_Next_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \wCnt_Next_reg[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      O => \wCnt_Next_reg[2]_i_1_n_0\
    );
\wCnt_Next_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wCnt_Next_reg[3]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => wCnt_Next(3)
    );
\wCnt_Next_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \wCnt_Next_reg[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \wCnt_Next_reg[3]_i_1_n_0\
    );
\wCnt_Next_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wCnt_Next_reg[4]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => wCnt_Next(4)
    );
\wCnt_Next_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \wCnt_Next_reg[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[3]\,
      I2 => \rCnt_Current_reg_n_0_[2]\,
      I3 => \rCnt_Current_reg_n_0_[1]\,
      I4 => \rCnt_Current_reg_n_0_[0]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \wCnt_Next_reg[4]_i_1_n_0\
    );
\wCnt_Next_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wCnt_Next_reg[5]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => wCnt_Next(5)
    );
\wCnt_Next_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \wCnt_Next_reg[10]_i_2_n_0\,
      I1 => \rRxData_Next_reg[7]_i_5_n_0\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      I3 => \rCnt_Current_reg_n_0_[5]\,
      O => \wCnt_Next_reg[5]_i_1_n_0\
    );
\wCnt_Next_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wCnt_Next_reg[6]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => wCnt_Next(6)
    );
\wCnt_Next_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA2AAA00008000"
    )
        port map (
      I0 => \wCnt_Next_reg[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[5]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      I3 => \rCnt_Current_reg_n_0_[3]\,
      I4 => \wCnt_Next_reg[6]_i_2_n_0\,
      I5 => \rCnt_Current_reg_n_0_[6]\,
      O => \wCnt_Next_reg[6]_i_1_n_0\
    );
\wCnt_Next_reg[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[0]\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[2]\,
      O => \wCnt_Next_reg[6]_i_2_n_0\
    );
\wCnt_Next_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wCnt_Next_reg[7]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => wCnt_Next(7)
    );
\wCnt_Next_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \wCnt_Next_reg[10]_i_2_n_0\,
      I1 => \wCnt_Next_reg[9]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \wCnt_Next_reg[7]_i_1_n_0\
    );
\wCnt_Next_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wCnt_Next_reg[8]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => wCnt_Next(8)
    );
\wCnt_Next_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => \wCnt_Next_reg[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \wCnt_Next_reg[9]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      O => \wCnt_Next_reg[8]_i_1_n_0\
    );
\wCnt_Next_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wCnt_Next_reg[9]_i_1_n_0\,
      G => \wCnt_Next__1\,
      GE => '1',
      Q => wCnt_Next(9)
    );
\wCnt_Next_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8828888888888888"
    )
        port map (
      I0 => \wCnt_Next_reg[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[9]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \wCnt_Next_reg[9]_i_2_n_0\,
      I4 => \rCnt_Current_reg_n_0_[7]\,
      I5 => \rCnt_Current_reg_n_0_[8]\,
      O => \wCnt_Next_reg[9]_i_1_n_0\
    );
\wCnt_Next_reg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[5]\,
      I1 => \rCnt_Current_reg_n_0_[4]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current_reg_n_0_[0]\,
      O => \wCnt_Next_reg[9]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_tx is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rFSM_Current_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_rFSM_Current_reg[4]_0\ : out STD_LOGIC;
    \FSM_sequential_rFSM_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_rFSM_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oTx : out STD_LOGIC;
    \FSM_sequential_rFSM_reg[0]\ : out STD_LOGIC;
    \rFSM__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wRxDone : in STD_LOGIC;
    \FSM_sequential_rFSM_reg[0]_0\ : in STD_LOGIC;
    rTxStart_reg : in STD_LOGIC;
    \rTxData_Current_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_tx : entity is "uart_tx";
end design_1_uart_top_0_0_uart_tx;

architecture STRUCTURE of design_1_uart_top_0_0_uart_tx is
  signal \FSM_onehot_rFSM_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rfsm_current_reg[0]_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rBit_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[0]_i_2_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_4_n_0\ : STD_LOGIC;
  signal \rCnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \rCnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \rCnt_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[10]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[4]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[5]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[6]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[7]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[8]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[9]\ : STD_LOGIC;
  signal \rTxData_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_2_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_3_n_0\ : STD_LOGIC;
  signal \rTxData_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal wBit_Next : STD_LOGIC;
  signal wTxData_Next : STD_LOGIC;
  signal wTxDone : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_1\ : label is "soft_lutpair21";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_rFSM[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rCnt[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rCnt[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rCnt[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rCnt[3]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rCnt[3]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rCnt_Current[10]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rTxByte[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of rTxStart_i_1 : label is "soft_lutpair19";
begin
  \FSM_onehot_rFSM_Current_reg[0]_0\ <= \^fsm_onehot_rfsm_current_reg[0]_0\;
\FSM_onehot_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => wTxDone,
      I1 => rTxStart_reg,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM_Current[0]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM_Current[1]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7F00FF00FF00"
    )
        port map (
      I0 => rBit_Current(0),
      I1 => rBit_Current(1),
      I2 => rBit_Current(2),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[2]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0000000AAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => rBit_Current(0),
      I3 => rBit_Current(1),
      I4 => rBit_Current(2),
      I5 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[10]\,
      I1 => \rCnt_Current_reg_n_0_[8]\,
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[6]\,
      I4 => \rCnt_Current_reg_n_0_[7]\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[2]\,
      I1 => \rCnt_Current_reg_n_0_[3]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      I3 => \rCnt_Current_reg_n_0_[5]\,
      O => \FSM_onehot_rFSM_Current[4]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[0]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[1]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[2]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[3]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[4]_i_1_n_0\,
      Q => wTxDone,
      R => iRst
    );
\FSM_sequential_rFSM[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF005FCFFF0050CF"
    )
        port map (
      I0 => wTxDone,
      I1 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I2 => \rFSM__0\(1),
      I3 => \rFSM__0\(0),
      I4 => \rFSM__0\(2),
      I5 => \FSM_sequential_rFSM_reg[0]_0\,
      O => \FSM_onehot_rFSM_Current_reg[4]_0\
    );
\FSM_sequential_rFSM[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCCF8"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I1 => \rFSM__0\(1),
      I2 => \rFSM__0\(0),
      I3 => \rFSM__0\(2),
      I4 => \FSM_sequential_rFSM_reg[0]_0\,
      O => \FSM_sequential_rFSM_reg[1]_0\
    );
\FSM_sequential_rFSM[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC00FC04"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I1 => \rFSM__0\(1),
      I2 => \rFSM__0\(0),
      I3 => \rFSM__0\(2),
      I4 => \FSM_sequential_rFSM_reg[0]_0\,
      O => \FSM_sequential_rFSM_reg[1]\
    );
\FSM_sequential_rFSM[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EEE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => Q(3),
      I3 => Q(2),
      O => \^fsm_onehot_rfsm_current_reg[0]_0\
    );
oTx_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \rTxData_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => oTx
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000007AAAAAAA8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I2 => \rBit_Current[0]_i_2_n_0\,
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I5 => rBit_Current(0),
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      O => \rBit_Current[0]_i_2_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => rBit_Current(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => wBit_Next,
      I3 => rBit_Current(1),
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(0),
      I2 => rBit_Current(1),
      I3 => wBit_Next,
      I4 => rBit_Current(2),
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8088"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \rCnt_Current_reg_n_0_[10]\,
      I2 => \rBit_Current[2]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      I4 => \rBit_Current[2]_i_4_n_0\,
      O => wBit_Next
    );
\rBit_Current[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[8]\,
      I1 => \rCnt_Current_reg_n_0_[9]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rBit_Current[2]_i_3_n_0\
    );
\rBit_Current[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rBit_Current[2]_i_4_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[0]_i_1_n_0\,
      Q => rBit_Current(0),
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[1]_i_1_n_0\,
      Q => rBit_Current(1),
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[2]_i_1_n_0\,
      Q => rBit_Current(2),
      R => iRst
    );
\rCnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCnt[3]_i_4_n_0\,
      I1 => Q(0),
      O => D(0)
    );
\rCnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt[3]_i_4_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      O => D(1)
    );
\rCnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt[3]_i_4_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => D(2)
    );
\rCnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt[3]_i_4_n_0\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      O => D(3)
    );
\rCnt[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4454545444444444"
    )
        port map (
      I0 => \rFSM__0\(2),
      I1 => \rCnt[3]_i_5_n_0\,
      I2 => \rFSM__0\(0),
      I3 => Q(2),
      I4 => Q(3),
      I5 => wRxDone,
      O => \rCnt[3]_i_4_n_0\
    );
\rCnt[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77700000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => wTxDone,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I4 => \rFSM__0\(1),
      O => \rCnt[3]_i_5_n_0\
    );
\rCnt_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[0]_i_1_n_0\
    );
\rCnt_Current[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[10]\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      O => \rCnt_Current[10]_i_1_n_0\
    );
\rCnt_Current[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2F2F2F2F00"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      I1 => \rBit_Current[2]_i_3_n_0\,
      I2 => \rCnt_Current_reg_n_0_[10]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rCnt_Current[10]_i_2_n_0\
    );
\rCnt_Current[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[8]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[10]_i_3_n_0\
    );
\rCnt_Current[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FE00FE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \rCnt_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[1]_i_1_n_0\
    );
\rCnt_Current[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      O => \rCnt_Current[2]_i_1_n_0\
    );
\rCnt_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[3]_i_1_n_0\
    );
\rCnt_Current[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[1]\,
      I4 => \rCnt_Current_reg_n_0_[0]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \rCnt_Current[4]_i_1_n_0\
    );
\rCnt_Current[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA20000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current[5]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[4]\,
      I5 => \rCnt_Current_reg_n_0_[5]\,
      O => \rCnt_Current[5]_i_1_n_0\
    );
\rCnt_Current[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[0]\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      O => \rCnt_Current[5]_i_2_n_0\
    );
\rCnt_Current[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FE00FE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \rCnt_Current[8]_i_2_n_0\,
      I5 => \rCnt_Current_reg_n_0_[6]\,
      O => \rCnt_Current[6]_i_1_n_0\
    );
\rCnt_Current[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[8]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[7]_i_1_n_0\
    );
\rCnt_Current[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current[8]_i_2_n_0\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[8]_i_1_n_0\
    );
\rCnt_Current[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[5]\,
      I1 => \rCnt_Current_reg_n_0_[4]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[1]\,
      I5 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[8]_i_2_n_0\
    );
\rCnt_Current[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554000000005554"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      I5 => \rCnt_Current_reg_n_0_[9]\,
      O => \rCnt_Current[9]_i_1_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[10]\,
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[4]\,
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[5]\,
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[6]\,
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[7]\,
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[8]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[8]\,
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[9]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[9]\,
      R => iRst
    );
\rTxByte[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \rFSM__0\(2),
      I1 => \rFSM__0\(0),
      I2 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I3 => \rFSM__0\(1),
      O => E(0)
    );
\rTxData_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(0),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[0]_i_1_n_0\
    );
\rTxData_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(1),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(1),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[1]_i_1_n_0\
    );
\rTxData_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(2),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(2),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[2]_i_1_n_0\
    );
\rTxData_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(3),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(3),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[3]_i_1_n_0\
    );
\rTxData_Current[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(4),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(4),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[4]_i_1_n_0\
    );
\rTxData_Current[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(5),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(5),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[5]_i_1_n_0\
    );
\rTxData_Current[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rTxData_Current_reg[7]_0\(6),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => in7(6),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rTxData_Current[6]_i_1_n_0\
    );
\rTxData_Current[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => rTxStart_reg,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current[7]_i_3_n_0\,
      I3 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => wTxData_Next
    );
\rTxData_Current[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \rTxData_Current_reg[7]_0\(7),
      O => \rTxData_Current[7]_i_2_n_0\
    );
\rTxData_Current[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => rBit_Current(2),
      I1 => rBit_Current(1),
      I2 => rBit_Current(0),
      O => \rTxData_Current[7]_i_3_n_0\
    );
\rTxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[0]_i_1_n_0\,
      Q => \rTxData_Current_reg_n_0_[0]\,
      R => iRst
    );
\rTxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[1]_i_1_n_0\,
      Q => in7(0),
      R => iRst
    );
\rTxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[2]_i_1_n_0\,
      Q => in7(1),
      R => iRst
    );
\rTxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[3]_i_1_n_0\,
      Q => in7(2),
      R => iRst
    );
\rTxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[4]_i_1_n_0\,
      Q => in7(3),
      R => iRst
    );
\rTxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[5]_i_1_n_0\,
      Q => in7(4),
      R => iRst
    );
\rTxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[6]_i_1_n_0\,
      Q => in7(5),
      R => iRst
    );
\rTxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[7]_i_2_n_0\,
      Q => in7(6),
      R => iRst
    );
rTxStart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F0020"
    )
        port map (
      I0 => \^fsm_onehot_rfsm_current_reg[0]_0\,
      I1 => \rFSM__0\(0),
      I2 => \rFSM__0\(1),
      I3 => \rFSM__0\(2),
      I4 => rTxStart_reg,
      O => \FSM_sequential_rFSM_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0_uart_top is
  port (
    oTx : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iRx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_top_0_0_uart_top : entity is "uart_top";
end design_1_uart_top_0_0_uart_top;

architecture STRUCTURE of design_1_uart_top_0_0_uart_top is
  signal \FSM_sequential_rFSM[2]_i_3_n_0\ : STD_LOGIC;
  signal UART_RX_INST_n_1 : STD_LOGIC;
  signal UART_RX_INST_n_2 : STD_LOGIC;
  signal UART_RX_INST_n_3 : STD_LOGIC;
  signal UART_RX_INST_n_4 : STD_LOGIC;
  signal UART_RX_INST_n_5 : STD_LOGIC;
  signal UART_RX_INST_n_6 : STD_LOGIC;
  signal UART_RX_INST_n_7 : STD_LOGIC;
  signal UART_TX_INST_n_0 : STD_LOGIC;
  signal UART_TX_INST_n_1 : STD_LOGIC;
  signal UART_TX_INST_n_10 : STD_LOGIC;
  signal UART_TX_INST_n_2 : STD_LOGIC;
  signal UART_TX_INST_n_3 : STD_LOGIC;
  signal UART_TX_INST_n_4 : STD_LOGIC;
  signal UART_TX_INST_n_5 : STD_LOGIC;
  signal UART_TX_INST_n_6 : STD_LOGIC;
  signal UART_TX_INST_n_7 : STD_LOGIC;
  signal UART_TX_INST_n_8 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rBuffer : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal \rBuffer[95]_i_3_n_0\ : STD_LOGIC;
  signal rBuffer_0 : STD_LOGIC;
  signal \rBuffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[40]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[41]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[42]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[43]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[47]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[52]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[54]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[55]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[56]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[57]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[58]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[59]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[60]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[61]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[62]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[63]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[64]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[65]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[66]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[67]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[68]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[69]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[70]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[71]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[72]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[73]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[74]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[75]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[76]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[77]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[78]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[79]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[80]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[81]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[82]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[83]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[84]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[85]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[86]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[87]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[9]\ : STD_LOGIC;
  signal rCnt : STD_LOGIC;
  signal \rCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \rFSM__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rTxByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rTxStart_reg_n_0 : STD_LOGIC;
  signal wRxDone : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[0]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_TX:010,s_DONE:100,s_WAIT_TX:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[1]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_TX:010,s_DONE:100,s_WAIT_TX:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rFSM_reg[2]\ : label is "s_IDLE:000,s_WAIT_RX:001,s_TX:010,s_DONE:100,s_WAIT_TX:011";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rBuffer[10]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \rBuffer[11]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rBuffer[12]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rBuffer[13]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rBuffer[14]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rBuffer[15]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rBuffer[16]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rBuffer[17]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rBuffer[18]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rBuffer[19]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rBuffer[20]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rBuffer[21]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rBuffer[22]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rBuffer[23]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rBuffer[24]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rBuffer[25]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rBuffer[26]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rBuffer[27]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rBuffer[28]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rBuffer[29]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rBuffer[30]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rBuffer[31]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rBuffer[32]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rBuffer[33]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rBuffer[34]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rBuffer[35]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rBuffer[36]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rBuffer[37]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rBuffer[38]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rBuffer[39]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rBuffer[40]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rBuffer[41]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rBuffer[42]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rBuffer[43]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rBuffer[44]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rBuffer[45]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rBuffer[46]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rBuffer[47]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rBuffer[48]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rBuffer[49]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rBuffer[50]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rBuffer[51]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rBuffer[52]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rBuffer[53]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rBuffer[54]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rBuffer[55]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rBuffer[56]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rBuffer[57]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rBuffer[58]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rBuffer[59]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rBuffer[60]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rBuffer[61]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rBuffer[62]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rBuffer[63]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rBuffer[64]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rBuffer[65]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rBuffer[66]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rBuffer[67]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rBuffer[68]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rBuffer[69]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rBuffer[70]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rBuffer[71]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rBuffer[72]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rBuffer[73]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rBuffer[74]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rBuffer[75]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rBuffer[76]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rBuffer[77]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rBuffer[78]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rBuffer[79]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rBuffer[80]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rBuffer[81]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rBuffer[82]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rBuffer[83]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rBuffer[84]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rBuffer[85]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rBuffer[86]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rBuffer[87]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rBuffer[88]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rBuffer[89]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rBuffer[90]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rBuffer[91]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rBuffer[92]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rBuffer[93]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rBuffer[94]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rBuffer[95]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rBuffer[95]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rBuffer[9]_i_1\ : label is "soft_lutpair68";
begin
\FSM_sequential_rFSM[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \rCnt_reg_n_0_[0]\,
      I2 => \rCnt_reg_n_0_[3]\,
      I3 => \rCnt_reg_n_0_[2]\,
      O => \FSM_sequential_rFSM[2]_i_3_n_0\
    );
\FSM_sequential_rFSM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_2,
      Q => \rFSM__0\(0),
      R => iRst
    );
\FSM_sequential_rFSM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_4,
      Q => \rFSM__0\(1),
      R => iRst
    );
\FSM_sequential_rFSM_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_3,
      Q => \rFSM__0\(2),
      R => iRst
    );
UART_RX_INST: entity work.design_1_uart_top_0_0_uart_rx
     port map (
      D(7) => UART_RX_INST_n_1,
      D(6) => UART_RX_INST_n_2,
      D(5) => UART_RX_INST_n_3,
      D(4) => UART_RX_INST_n_4,
      D(3) => UART_RX_INST_n_5,
      D(2) => UART_RX_INST_n_6,
      D(1) => UART_RX_INST_n_7,
      D(0) => rBuffer(0),
      E(0) => rCnt,
      \FSM_sequential_rFSM_reg[0]\(0) => rBuffer_0,
      Q(1) => \rCnt_reg_n_0_[3]\,
      Q(0) => \rCnt_reg_n_0_[2]\,
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      \rBuffer_reg[0]\ => \rBuffer[95]_i_3_n_0\,
      \rBuffer_reg[0]_0\(0) => UART_TX_INST_n_0,
      \rCnt_reg[0]\ => \FSM_sequential_rFSM[2]_i_3_n_0\,
      \rCnt_reg[0]_0\ => UART_TX_INST_n_1,
      \rFSM__0\(2 downto 0) => \rFSM__0\(2 downto 0),
      wRxDone => wRxDone
    );
UART_TX_INST: entity work.design_1_uart_top_0_0_uart_tx
     port map (
      D(3) => UART_TX_INST_n_5,
      D(2) => UART_TX_INST_n_6,
      D(1) => UART_TX_INST_n_7,
      D(0) => UART_TX_INST_n_8,
      E(0) => UART_TX_INST_n_0,
      \FSM_onehot_rFSM_Current_reg[0]_0\ => UART_TX_INST_n_1,
      \FSM_onehot_rFSM_Current_reg[4]_0\ => UART_TX_INST_n_2,
      \FSM_sequential_rFSM_reg[0]\ => UART_TX_INST_n_10,
      \FSM_sequential_rFSM_reg[0]_0\ => \FSM_sequential_rFSM[2]_i_3_n_0\,
      \FSM_sequential_rFSM_reg[1]\ => UART_TX_INST_n_3,
      \FSM_sequential_rFSM_reg[1]_0\ => UART_TX_INST_n_4,
      Q(3) => \rCnt_reg_n_0_[3]\,
      Q(2) => \rCnt_reg_n_0_[2]\,
      Q(1) => \rCnt_reg_n_0_[1]\,
      Q(0) => \rCnt_reg_n_0_[0]\,
      iClk => iClk,
      iRst => iRst,
      oTx => oTx,
      \rFSM__0\(2 downto 0) => \rFSM__0\(2 downto 0),
      \rTxData_Current_reg[7]_0\(7 downto 0) => rTxByte(7 downto 0),
      rTxStart_reg => rTxStart_reg_n_0,
      wRxDone => wRxDone
    );
\rBuffer[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[2]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(10)
    );
\rBuffer[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[3]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(11)
    );
\rBuffer[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[4]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(12)
    );
\rBuffer[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[5]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(13)
    );
\rBuffer[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[6]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(14)
    );
\rBuffer[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[7]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(15)
    );
\rBuffer[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[8]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(16)
    );
\rBuffer[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[9]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(17)
    );
\rBuffer[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[10]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(18)
    );
\rBuffer[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[11]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(19)
    );
\rBuffer[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[12]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(20)
    );
\rBuffer[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[13]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(21)
    );
\rBuffer[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[14]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(22)
    );
\rBuffer[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[15]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(23)
    );
\rBuffer[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[16]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(24)
    );
\rBuffer[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[17]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(25)
    );
\rBuffer[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[18]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(26)
    );
\rBuffer[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[19]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(27)
    );
\rBuffer[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[20]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(28)
    );
\rBuffer[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[21]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(29)
    );
\rBuffer[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[22]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(30)
    );
\rBuffer[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[23]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(31)
    );
\rBuffer[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[24]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(32)
    );
\rBuffer[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[25]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(33)
    );
\rBuffer[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[26]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(34)
    );
\rBuffer[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[27]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(35)
    );
\rBuffer[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[28]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(36)
    );
\rBuffer[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[29]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(37)
    );
\rBuffer[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[30]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(38)
    );
\rBuffer[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[31]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(39)
    );
\rBuffer[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[32]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(40)
    );
\rBuffer[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[33]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(41)
    );
\rBuffer[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[34]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(42)
    );
\rBuffer[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[35]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(43)
    );
\rBuffer[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[36]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(44)
    );
\rBuffer[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[37]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(45)
    );
\rBuffer[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[38]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(46)
    );
\rBuffer[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[39]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(47)
    );
\rBuffer[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[40]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(48)
    );
\rBuffer[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[41]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(49)
    );
\rBuffer[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[42]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(50)
    );
\rBuffer[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[43]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(51)
    );
\rBuffer[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[44]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(52)
    );
\rBuffer[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[45]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(53)
    );
\rBuffer[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[46]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(54)
    );
\rBuffer[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[47]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(55)
    );
\rBuffer[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[48]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(56)
    );
\rBuffer[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[49]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(57)
    );
\rBuffer[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[50]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(58)
    );
\rBuffer[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[51]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(59)
    );
\rBuffer[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[52]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(60)
    );
\rBuffer[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[53]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(61)
    );
\rBuffer[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[54]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(62)
    );
\rBuffer[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[55]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(63)
    );
\rBuffer[64]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[56]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(64)
    );
\rBuffer[65]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[57]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(65)
    );
\rBuffer[66]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[58]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(66)
    );
\rBuffer[67]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[59]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(67)
    );
\rBuffer[68]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[60]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(68)
    );
\rBuffer[69]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[61]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(69)
    );
\rBuffer[70]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[62]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(70)
    );
\rBuffer[71]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[63]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(71)
    );
\rBuffer[72]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[64]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(72)
    );
\rBuffer[73]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[65]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(73)
    );
\rBuffer[74]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[66]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(74)
    );
\rBuffer[75]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[67]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(75)
    );
\rBuffer[76]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[68]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(76)
    );
\rBuffer[77]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[69]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(77)
    );
\rBuffer[78]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[70]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(78)
    );
\rBuffer[79]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[71]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(79)
    );
\rBuffer[80]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[72]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(80)
    );
\rBuffer[81]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[73]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(81)
    );
\rBuffer[82]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[74]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(82)
    );
\rBuffer[83]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[75]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(83)
    );
\rBuffer[84]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[76]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(84)
    );
\rBuffer[85]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[77]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(85)
    );
\rBuffer[86]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[78]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(86)
    );
\rBuffer[87]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[79]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(87)
    );
\rBuffer[88]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[80]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(88)
    );
\rBuffer[89]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[81]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(89)
    );
\rBuffer[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[0]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(8)
    );
\rBuffer[90]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[82]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(90)
    );
\rBuffer[91]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[83]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(91)
    );
\rBuffer[92]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[84]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(92)
    );
\rBuffer[93]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[85]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(93)
    );
\rBuffer[94]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[86]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(94)
    );
\rBuffer[95]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[87]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(95)
    );
\rBuffer[95]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rFSM__0\(2),
      I1 => \rFSM__0\(1),
      O => \rBuffer[95]_i_3_n_0\
    );
\rBuffer[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rBuffer_reg_n_0_[1]\,
      I1 => \rFSM__0\(2),
      O => rBuffer(9)
    );
\rBuffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(0),
      Q => \rBuffer_reg_n_0_[0]\,
      R => iRst
    );
\rBuffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(10),
      Q => \rBuffer_reg_n_0_[10]\,
      R => iRst
    );
\rBuffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(11),
      Q => \rBuffer_reg_n_0_[11]\,
      R => iRst
    );
\rBuffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(12),
      Q => \rBuffer_reg_n_0_[12]\,
      R => iRst
    );
\rBuffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(13),
      Q => \rBuffer_reg_n_0_[13]\,
      R => iRst
    );
\rBuffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(14),
      Q => \rBuffer_reg_n_0_[14]\,
      R => iRst
    );
\rBuffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(15),
      Q => \rBuffer_reg_n_0_[15]\,
      R => iRst
    );
\rBuffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(16),
      Q => \rBuffer_reg_n_0_[16]\,
      R => iRst
    );
\rBuffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(17),
      Q => \rBuffer_reg_n_0_[17]\,
      R => iRst
    );
\rBuffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(18),
      Q => \rBuffer_reg_n_0_[18]\,
      R => iRst
    );
\rBuffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(19),
      Q => \rBuffer_reg_n_0_[19]\,
      R => iRst
    );
\rBuffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => UART_RX_INST_n_7,
      Q => \rBuffer_reg_n_0_[1]\,
      R => iRst
    );
\rBuffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(20),
      Q => \rBuffer_reg_n_0_[20]\,
      R => iRst
    );
\rBuffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(21),
      Q => \rBuffer_reg_n_0_[21]\,
      R => iRst
    );
\rBuffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(22),
      Q => \rBuffer_reg_n_0_[22]\,
      R => iRst
    );
\rBuffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(23),
      Q => \rBuffer_reg_n_0_[23]\,
      R => iRst
    );
\rBuffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(24),
      Q => \rBuffer_reg_n_0_[24]\,
      R => iRst
    );
\rBuffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(25),
      Q => \rBuffer_reg_n_0_[25]\,
      R => iRst
    );
\rBuffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(26),
      Q => \rBuffer_reg_n_0_[26]\,
      R => iRst
    );
\rBuffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(27),
      Q => \rBuffer_reg_n_0_[27]\,
      R => iRst
    );
\rBuffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(28),
      Q => \rBuffer_reg_n_0_[28]\,
      R => iRst
    );
\rBuffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(29),
      Q => \rBuffer_reg_n_0_[29]\,
      R => iRst
    );
\rBuffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => UART_RX_INST_n_6,
      Q => \rBuffer_reg_n_0_[2]\,
      R => iRst
    );
\rBuffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(30),
      Q => \rBuffer_reg_n_0_[30]\,
      R => iRst
    );
\rBuffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(31),
      Q => \rBuffer_reg_n_0_[31]\,
      R => iRst
    );
\rBuffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(32),
      Q => \rBuffer_reg_n_0_[32]\,
      R => iRst
    );
\rBuffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(33),
      Q => \rBuffer_reg_n_0_[33]\,
      R => iRst
    );
\rBuffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(34),
      Q => \rBuffer_reg_n_0_[34]\,
      R => iRst
    );
\rBuffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(35),
      Q => \rBuffer_reg_n_0_[35]\,
      R => iRst
    );
\rBuffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(36),
      Q => \rBuffer_reg_n_0_[36]\,
      R => iRst
    );
\rBuffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(37),
      Q => \rBuffer_reg_n_0_[37]\,
      R => iRst
    );
\rBuffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(38),
      Q => \rBuffer_reg_n_0_[38]\,
      R => iRst
    );
\rBuffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(39),
      Q => \rBuffer_reg_n_0_[39]\,
      R => iRst
    );
\rBuffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => UART_RX_INST_n_5,
      Q => \rBuffer_reg_n_0_[3]\,
      R => iRst
    );
\rBuffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(40),
      Q => \rBuffer_reg_n_0_[40]\,
      R => iRst
    );
\rBuffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(41),
      Q => \rBuffer_reg_n_0_[41]\,
      R => iRst
    );
\rBuffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(42),
      Q => \rBuffer_reg_n_0_[42]\,
      R => iRst
    );
\rBuffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(43),
      Q => \rBuffer_reg_n_0_[43]\,
      R => iRst
    );
\rBuffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(44),
      Q => \rBuffer_reg_n_0_[44]\,
      R => iRst
    );
\rBuffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(45),
      Q => \rBuffer_reg_n_0_[45]\,
      R => iRst
    );
\rBuffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(46),
      Q => \rBuffer_reg_n_0_[46]\,
      R => iRst
    );
\rBuffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(47),
      Q => \rBuffer_reg_n_0_[47]\,
      R => iRst
    );
\rBuffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(48),
      Q => \rBuffer_reg_n_0_[48]\,
      R => iRst
    );
\rBuffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(49),
      Q => \rBuffer_reg_n_0_[49]\,
      R => iRst
    );
\rBuffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => UART_RX_INST_n_4,
      Q => \rBuffer_reg_n_0_[4]\,
      R => iRst
    );
\rBuffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(50),
      Q => \rBuffer_reg_n_0_[50]\,
      R => iRst
    );
\rBuffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(51),
      Q => \rBuffer_reg_n_0_[51]\,
      R => iRst
    );
\rBuffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(52),
      Q => \rBuffer_reg_n_0_[52]\,
      R => iRst
    );
\rBuffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(53),
      Q => \rBuffer_reg_n_0_[53]\,
      R => iRst
    );
\rBuffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(54),
      Q => \rBuffer_reg_n_0_[54]\,
      R => iRst
    );
\rBuffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(55),
      Q => \rBuffer_reg_n_0_[55]\,
      R => iRst
    );
\rBuffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(56),
      Q => \rBuffer_reg_n_0_[56]\,
      R => iRst
    );
\rBuffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(57),
      Q => \rBuffer_reg_n_0_[57]\,
      R => iRst
    );
\rBuffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(58),
      Q => \rBuffer_reg_n_0_[58]\,
      R => iRst
    );
\rBuffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(59),
      Q => \rBuffer_reg_n_0_[59]\,
      R => iRst
    );
\rBuffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => UART_RX_INST_n_3,
      Q => \rBuffer_reg_n_0_[5]\,
      R => iRst
    );
\rBuffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(60),
      Q => \rBuffer_reg_n_0_[60]\,
      R => iRst
    );
\rBuffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(61),
      Q => \rBuffer_reg_n_0_[61]\,
      R => iRst
    );
\rBuffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(62),
      Q => \rBuffer_reg_n_0_[62]\,
      R => iRst
    );
\rBuffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(63),
      Q => \rBuffer_reg_n_0_[63]\,
      R => iRst
    );
\rBuffer_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(64),
      Q => \rBuffer_reg_n_0_[64]\,
      R => iRst
    );
\rBuffer_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(65),
      Q => \rBuffer_reg_n_0_[65]\,
      R => iRst
    );
\rBuffer_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(66),
      Q => \rBuffer_reg_n_0_[66]\,
      R => iRst
    );
\rBuffer_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(67),
      Q => \rBuffer_reg_n_0_[67]\,
      R => iRst
    );
\rBuffer_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(68),
      Q => \rBuffer_reg_n_0_[68]\,
      R => iRst
    );
\rBuffer_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(69),
      Q => \rBuffer_reg_n_0_[69]\,
      R => iRst
    );
\rBuffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => UART_RX_INST_n_2,
      Q => \rBuffer_reg_n_0_[6]\,
      R => iRst
    );
\rBuffer_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(70),
      Q => \rBuffer_reg_n_0_[70]\,
      R => iRst
    );
\rBuffer_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(71),
      Q => \rBuffer_reg_n_0_[71]\,
      R => iRst
    );
\rBuffer_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(72),
      Q => \rBuffer_reg_n_0_[72]\,
      R => iRst
    );
\rBuffer_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(73),
      Q => \rBuffer_reg_n_0_[73]\,
      R => iRst
    );
\rBuffer_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(74),
      Q => \rBuffer_reg_n_0_[74]\,
      R => iRst
    );
\rBuffer_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(75),
      Q => \rBuffer_reg_n_0_[75]\,
      R => iRst
    );
\rBuffer_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(76),
      Q => \rBuffer_reg_n_0_[76]\,
      R => iRst
    );
\rBuffer_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(77),
      Q => \rBuffer_reg_n_0_[77]\,
      R => iRst
    );
\rBuffer_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(78),
      Q => \rBuffer_reg_n_0_[78]\,
      R => iRst
    );
\rBuffer_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(79),
      Q => \rBuffer_reg_n_0_[79]\,
      R => iRst
    );
\rBuffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => UART_RX_INST_n_1,
      Q => \rBuffer_reg_n_0_[7]\,
      R => iRst
    );
\rBuffer_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(80),
      Q => \rBuffer_reg_n_0_[80]\,
      R => iRst
    );
\rBuffer_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(81),
      Q => \rBuffer_reg_n_0_[81]\,
      R => iRst
    );
\rBuffer_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(82),
      Q => \rBuffer_reg_n_0_[82]\,
      R => iRst
    );
\rBuffer_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(83),
      Q => \rBuffer_reg_n_0_[83]\,
      R => iRst
    );
\rBuffer_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(84),
      Q => \rBuffer_reg_n_0_[84]\,
      R => iRst
    );
\rBuffer_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(85),
      Q => \rBuffer_reg_n_0_[85]\,
      R => iRst
    );
\rBuffer_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(86),
      Q => \rBuffer_reg_n_0_[86]\,
      R => iRst
    );
\rBuffer_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(87),
      Q => \rBuffer_reg_n_0_[87]\,
      R => iRst
    );
\rBuffer_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(88),
      Q => p_0_in(0),
      R => iRst
    );
\rBuffer_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(89),
      Q => p_0_in(1),
      R => iRst
    );
\rBuffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(8),
      Q => \rBuffer_reg_n_0_[8]\,
      R => iRst
    );
\rBuffer_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(90),
      Q => p_0_in(2),
      R => iRst
    );
\rBuffer_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(91),
      Q => p_0_in(3),
      R => iRst
    );
\rBuffer_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(92),
      Q => p_0_in(4),
      R => iRst
    );
\rBuffer_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(93),
      Q => p_0_in(5),
      R => iRst
    );
\rBuffer_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(94),
      Q => p_0_in(6),
      R => iRst
    );
\rBuffer_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(95),
      Q => p_0_in(7),
      R => iRst
    );
\rBuffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer_0,
      D => rBuffer(9),
      Q => \rBuffer_reg_n_0_[9]\,
      R => iRst
    );
\rCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_8,
      Q => \rCnt_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_7,
      Q => \rCnt_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_6,
      Q => \rCnt_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_TX_INST_n_5,
      Q => \rCnt_reg_n_0_[3]\,
      R => iRst
    );
\rTxByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_0,
      D => p_0_in(0),
      Q => rTxByte(0),
      R => iRst
    );
\rTxByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_0,
      D => p_0_in(1),
      Q => rTxByte(1),
      R => iRst
    );
\rTxByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_0,
      D => p_0_in(2),
      Q => rTxByte(2),
      R => iRst
    );
\rTxByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_0,
      D => p_0_in(3),
      Q => rTxByte(3),
      R => iRst
    );
\rTxByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_0,
      D => p_0_in(4),
      Q => rTxByte(4),
      R => iRst
    );
\rTxByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_0,
      D => p_0_in(5),
      Q => rTxByte(5),
      R => iRst
    );
\rTxByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_0,
      D => p_0_in(6),
      Q => rTxByte(6),
      R => iRst
    );
\rTxByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => UART_TX_INST_n_0,
      D => p_0_in(7),
      Q => rTxByte(7),
      R => iRst
    );
rTxStart_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_10,
      Q => rTxStart_reg_n_0,
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_top_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    oTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart_top_0_0 : entity is "design_1_uart_top_0_0,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_uart_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_uart_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_uart_top_0_0 : entity is "uart_top,Vivado 2020.1";
end design_1_uart_top_0_0;

architecture STRUCTURE of design_1_uart_top_0_0 is
begin
inst: entity work.design_1_uart_top_0_0_uart_top
     port map (
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      oTx => oTx
    );
end STRUCTURE;
