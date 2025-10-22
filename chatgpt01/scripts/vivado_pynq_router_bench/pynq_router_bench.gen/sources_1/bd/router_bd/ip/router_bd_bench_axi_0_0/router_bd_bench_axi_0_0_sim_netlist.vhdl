-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Oct 21 15:00:38 2025
-- Host        : DESKTOP-E4COIK2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Carlos/Documents/projects/verilog/chatgpt01/scripts/vivado_pynq_router_bench/pynq_router_bench.gen/sources_1/bd/router_bd/ip/router_bd_bench_axi_0_0/router_bd_bench_axi_0_0_sim_netlist.vhdl
-- Design      : router_bd_bench_axi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity router_bd_bench_axi_0_0_base10_alu is
  port (
    done_b10 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \countdown_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \countdown_reg[1]_0\ : in STD_LOGIC;
    \countdown_reg[1]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of router_bd_bench_axi_0_0_base10_alu : entity is "base10_alu";
end router_bd_bench_axi_0_0_base10_alu;

architecture STRUCTURE of router_bd_bench_axi_0_0_base10_alu is
  signal busy0 : STD_LOGIC;
  signal busy_reg_n_0 : STD_LOGIC;
  signal \countdown[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \countdown[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \countdown[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \countdown[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \countdown[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \countdown[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \countdown[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_1_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_5_n_0\ : STD_LOGIC;
  signal \countdown_reg_n_0_[0]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[1]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[2]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[3]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[4]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[5]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[6]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[7]\ : STD_LOGIC;
  signal \done_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \countdown[5]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \countdown[6]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \countdown[7]_i_4__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \countdown[7]_i_5\ : label is "soft_lutpair1";
begin
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \countdown[7]_i_2__1_n_0\,
      Q => busy_reg_n_0,
      R => SR(0)
    );
\countdown[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020C0000020CFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => busy0,
      I5 => \countdown_reg_n_0_[0]\,
      O => \countdown[0]_i_1__0_n_0\
    );
\countdown[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"990999F999F999F9"
    )
        port map (
      I0 => \countdown_reg_n_0_[0]\,
      I1 => \countdown_reg_n_0_[1]\,
      I2 => \countdown_reg[0]_0\,
      I3 => busy_reg_n_0,
      I4 => \countdown_reg[1]_0\,
      I5 => \countdown_reg[1]_1\,
      O => \countdown[1]_i_1__0_n_0\
    );
\countdown[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F70707F70707F"
    )
        port map (
      I0 => \countdown_reg[1]_1\,
      I1 => \countdown_reg[1]_0\,
      I2 => busy0,
      I3 => \countdown_reg_n_0_[0]\,
      I4 => \countdown_reg_n_0_[2]\,
      I5 => \countdown_reg_n_0_[1]\,
      O => \countdown[2]_i_1__0_n_0\
    );
\countdown[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E10000F0E1F0E1"
    )
        port map (
      I0 => \countdown_reg_n_0_[1]\,
      I1 => \countdown_reg_n_0_[2]\,
      I2 => \countdown_reg_n_0_[3]\,
      I3 => \countdown_reg_n_0_[0]\,
      I4 => busy_reg_n_0,
      I5 => \countdown_reg[0]_0\,
      O => \countdown[3]_i_1__0_n_0\
    );
\countdown[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0001"
    )
        port map (
      I0 => \countdown_reg_n_0_[0]\,
      I1 => \countdown_reg_n_0_[2]\,
      I2 => \countdown_reg_n_0_[1]\,
      I3 => \countdown_reg_n_0_[3]\,
      I4 => \countdown_reg_n_0_[4]\,
      I5 => busy0,
      O => \countdown[4]_i_1__0_n_0\
    );
\countdown[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \countdown_reg[0]_0\,
      I1 => busy_reg_n_0,
      O => busy0
    );
\countdown[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D00D"
    )
        port map (
      I0 => \countdown_reg[0]_0\,
      I1 => busy_reg_n_0,
      I2 => \countdown[7]_i_5_n_0\,
      I3 => \countdown_reg_n_0_[5]\,
      O => \countdown[5]_i_1__0_n_0\
    );
\countdown[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD00D00D"
    )
        port map (
      I0 => \countdown_reg[0]_0\,
      I1 => busy_reg_n_0,
      I2 => \countdown_reg_n_0_[5]\,
      I3 => \countdown_reg_n_0_[6]\,
      I4 => \countdown[7]_i_5_n_0\,
      O => \countdown[6]_i_1__0_n_0\
    );
\countdown[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => busy_reg_n_0,
      I1 => \countdown_reg[0]_0\,
      I2 => s_axi_aresetn,
      O => \countdown[7]_i_1_n_0\
    );
\countdown[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => \countdown_reg_n_0_[7]\,
      I1 => \countdown_reg_n_0_[6]\,
      I2 => \countdown_reg_n_0_[5]\,
      I3 => \countdown[7]_i_4__0_n_0\,
      I4 => busy_reg_n_0,
      I5 => \countdown_reg[0]_0\,
      O => \countdown[7]_i_2__1_n_0\
    );
\countdown[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC90000CCC9CCC9"
    )
        port map (
      I0 => \countdown[7]_i_5_n_0\,
      I1 => \countdown_reg_n_0_[7]\,
      I2 => \countdown_reg_n_0_[6]\,
      I3 => \countdown_reg_n_0_[5]\,
      I4 => busy_reg_n_0,
      I5 => \countdown_reg[0]_0\,
      O => \countdown[7]_i_3__0_n_0\
    );
\countdown[7]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \countdown_reg_n_0_[3]\,
      I1 => \countdown_reg_n_0_[1]\,
      I2 => \countdown_reg_n_0_[2]\,
      I3 => \countdown_reg_n_0_[4]\,
      O => \countdown[7]_i_4__0_n_0\
    );
\countdown[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \countdown_reg_n_0_[4]\,
      I1 => \countdown_reg_n_0_[2]\,
      I2 => \countdown_reg_n_0_[1]\,
      I3 => \countdown_reg_n_0_[3]\,
      I4 => \countdown_reg_n_0_[0]\,
      O => \countdown[7]_i_5_n_0\
    );
\countdown_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_2__1_n_0\,
      D => \countdown[0]_i_1__0_n_0\,
      Q => \countdown_reg_n_0_[0]\,
      R => SR(0)
    );
\countdown_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_2__1_n_0\,
      D => \countdown[1]_i_1__0_n_0\,
      Q => \countdown_reg_n_0_[1]\,
      R => SR(0)
    );
\countdown_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_2__1_n_0\,
      D => \countdown[2]_i_1__0_n_0\,
      Q => \countdown_reg_n_0_[2]\,
      R => SR(0)
    );
\countdown_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_2__1_n_0\,
      D => \countdown[3]_i_1__0_n_0\,
      Q => \countdown_reg_n_0_[3]\,
      R => SR(0)
    );
\countdown_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_2__1_n_0\,
      D => \countdown[4]_i_1__0_n_0\,
      Q => \countdown_reg_n_0_[4]\,
      R => \countdown[7]_i_1_n_0\
    );
\countdown_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_2__1_n_0\,
      D => \countdown[5]_i_1__0_n_0\,
      Q => \countdown_reg_n_0_[5]\,
      R => \countdown[7]_i_1_n_0\
    );
\countdown_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_2__1_n_0\,
      D => \countdown[6]_i_1__0_n_0\,
      Q => \countdown_reg_n_0_[6]\,
      R => \countdown[7]_i_1_n_0\
    );
\countdown_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_2__1_n_0\,
      D => \countdown[7]_i_3__0_n_0\,
      Q => \countdown_reg_n_0_[7]\,
      R => \countdown[7]_i_1_n_0\
    );
\done_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \countdown_reg_n_0_[7]\,
      I1 => \countdown_reg_n_0_[6]\,
      I2 => \countdown_reg_n_0_[5]\,
      I3 => \countdown[7]_i_4__0_n_0\,
      I4 => busy_reg_n_0,
      I5 => s_axi_aresetn,
      O => \done_i_1__1_n_0\
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \done_i_1__1_n_0\,
      Q => done_b10,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity router_bd_bench_axi_0_0_base12_alu is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    done_b12 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \countdown_reg[3]_0\ : in STD_LOGIC;
    \countdown_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of router_bd_bench_axi_0_0_base12_alu : entity is "base12_alu";
end router_bd_bench_axi_0_0_base12_alu;

architecture STRUCTURE of router_bd_bench_axi_0_0_base12_alu is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal busy0 : STD_LOGIC;
  signal busy_reg_n_0 : STD_LOGIC;
  signal \countdown[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \countdown[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \countdown[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \countdown[2]_i_2_n_0\ : STD_LOGIC;
  signal \countdown[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \countdown[3]_i_2_n_0\ : STD_LOGIC;
  signal \countdown[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \countdown[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \countdown[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \countdown[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_3__1_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_4__1_n_0\ : STD_LOGIC;
  signal \countdown_reg_n_0_[0]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[1]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[2]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[3]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[4]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[5]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[6]\ : STD_LOGIC;
  signal \countdown_reg_n_0_[7]\ : STD_LOGIC;
  signal \done_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \countdown[5]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \countdown[6]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \countdown[7]_i_3__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \countdown[7]_i_4__1\ : label is "soft_lutpair3";
begin
  SR(0) <= \^sr\(0);
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \countdown[7]_i_1__1_n_0\,
      Q => busy_reg_n_0,
      R => \^sr\(0)
    );
\countdown[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"500200005002FFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => busy0,
      I5 => \countdown_reg_n_0_[0]\,
      O => \countdown[0]_i_1__1_n_0\
    );
\countdown[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99009999990F9999"
    )
        port map (
      I0 => \countdown_reg_n_0_[0]\,
      I1 => \countdown_reg_n_0_[1]\,
      I2 => \countdown[3]_i_3__0_n_0\,
      I3 => busy_reg_n_0,
      I4 => \countdown_reg[0]_0\,
      I5 => \countdown_reg[3]_0\,
      O => \countdown[1]_i_1__1_n_0\
    );
\countdown[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDD00D00D"
    )
        port map (
      I0 => \countdown_reg[0]_0\,
      I1 => busy_reg_n_0,
      I2 => \countdown_reg_n_0_[0]\,
      I3 => \countdown_reg_n_0_[2]\,
      I4 => \countdown_reg_n_0_[1]\,
      I5 => \countdown[2]_i_2_n_0\,
      O => \countdown[2]_i_1__1_n_0\
    );
\countdown[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020202"
    )
        port map (
      I0 => \countdown_reg[0]_0\,
      I1 => busy_reg_n_0,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(3),
      O => \countdown[2]_i_2_n_0\
    );
\countdown[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0000C9C9C9C9"
    )
        port map (
      I0 => \countdown_reg_n_0_[0]\,
      I1 => \countdown_reg_n_0_[3]\,
      I2 => \countdown[3]_i_2_n_0\,
      I3 => \countdown[3]_i_3__0_n_0\,
      I4 => \countdown_reg[3]_0\,
      I5 => busy0,
      O => \countdown[3]_i_1__1_n_0\
    );
\countdown[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \countdown_reg_n_0_[1]\,
      I1 => \countdown_reg_n_0_[2]\,
      O => \countdown[3]_i_2_n_0\
    );
\countdown[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5002"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \countdown[3]_i_3__0_n_0\
    );
\countdown[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0001"
    )
        port map (
      I0 => \countdown_reg_n_0_[0]\,
      I1 => \countdown_reg_n_0_[2]\,
      I2 => \countdown_reg_n_0_[1]\,
      I3 => \countdown_reg_n_0_[3]\,
      I4 => \countdown_reg_n_0_[4]\,
      I5 => busy0,
      O => \countdown[4]_i_1__1_n_0\
    );
\countdown[4]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \countdown_reg[0]_0\,
      I1 => busy_reg_n_0,
      O => busy0
    );
\countdown[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D00D"
    )
        port map (
      I0 => \countdown_reg[0]_0\,
      I1 => busy_reg_n_0,
      I2 => \countdown[7]_i_4__1_n_0\,
      I3 => \countdown_reg_n_0_[5]\,
      O => \countdown[5]_i_1__1_n_0\
    );
\countdown[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD00D00D"
    )
        port map (
      I0 => \countdown_reg[0]_0\,
      I1 => busy_reg_n_0,
      I2 => \countdown_reg_n_0_[5]\,
      I3 => \countdown_reg_n_0_[6]\,
      I4 => \countdown[7]_i_4__1_n_0\,
      O => \countdown[6]_i_1__1_n_0\
    );
\countdown[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => \countdown_reg_n_0_[7]\,
      I1 => \countdown_reg_n_0_[6]\,
      I2 => \countdown_reg_n_0_[5]\,
      I3 => \countdown[7]_i_3__1_n_0\,
      I4 => busy_reg_n_0,
      I5 => \countdown_reg[0]_0\,
      O => \countdown[7]_i_1__1_n_0\
    );
\countdown[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC90000CCC9CCC9"
    )
        port map (
      I0 => \countdown[7]_i_4__1_n_0\,
      I1 => \countdown_reg_n_0_[7]\,
      I2 => \countdown_reg_n_0_[6]\,
      I3 => \countdown_reg_n_0_[5]\,
      I4 => busy_reg_n_0,
      I5 => \countdown_reg[0]_0\,
      O => \countdown[7]_i_2__0_n_0\
    );
\countdown[7]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \countdown_reg_n_0_[3]\,
      I1 => \countdown_reg_n_0_[1]\,
      I2 => \countdown_reg_n_0_[2]\,
      I3 => \countdown_reg_n_0_[4]\,
      O => \countdown[7]_i_3__1_n_0\
    );
\countdown[7]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \countdown_reg_n_0_[4]\,
      I1 => \countdown_reg_n_0_[2]\,
      I2 => \countdown_reg_n_0_[1]\,
      I3 => \countdown_reg_n_0_[3]\,
      I4 => \countdown_reg_n_0_[0]\,
      O => \countdown[7]_i_4__1_n_0\
    );
\countdown_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__1_n_0\,
      D => \countdown[0]_i_1__1_n_0\,
      Q => \countdown_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\countdown_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__1_n_0\,
      D => \countdown[1]_i_1__1_n_0\,
      Q => \countdown_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\countdown_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__1_n_0\,
      D => \countdown[2]_i_1__1_n_0\,
      Q => \countdown_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\countdown_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__1_n_0\,
      D => \countdown[3]_i_1__1_n_0\,
      Q => \countdown_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\countdown_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__1_n_0\,
      D => \countdown[4]_i_1__1_n_0\,
      Q => \countdown_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\countdown_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__1_n_0\,
      D => \countdown[5]_i_1__1_n_0\,
      Q => \countdown_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\countdown_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__1_n_0\,
      D => \countdown[6]_i_1__1_n_0\,
      Q => \countdown_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\countdown_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__1_n_0\,
      D => \countdown[7]_i_2__0_n_0\,
      Q => \countdown_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\done_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \countdown_reg_n_0_[7]\,
      I1 => \countdown_reg_n_0_[6]\,
      I2 => \countdown_reg_n_0_[5]\,
      I3 => \countdown[7]_i_3__1_n_0\,
      I4 => busy_reg_n_0,
      I5 => s_axi_aresetn,
      O => \done_i_1__2_n_0\
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \done_i_1__2_n_0\,
      Q => done_b12,
      R => '0'
    );
s_axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity router_bd_bench_axi_0_0_base2_alu is
  port (
    \r_opcode_reg[3]\ : out STD_LOGIC;
    \r_opcode_reg[1]\ : out STD_LOGIC;
    done_reg_0 : out STD_LOGIC;
    r_start_reg : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \countdown_reg[0]_0\ : in STD_LOGIC;
    routed : in STD_LOGIC_VECTOR ( 1 downto 0 );
    done_b12 : in STD_LOGIC;
    done_b10 : in STD_LOGIC;
    st_0 : in STD_LOGIC;
    FSM_sequential_st_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of router_bd_bench_axi_0_0_base2_alu : entity is "base2_alu";
end router_bd_bench_axi_0_0_base2_alu;

architecture STRUCTURE of router_bd_bench_axi_0_0_base2_alu is
  signal busy0 : STD_LOGIC;
  signal busy_reg_n_0 : STD_LOGIC;
  signal countdown : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \countdown[3]_i_4_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_3_n_0\ : STD_LOGIC;
  signal \countdown[7]_i_4_n_0\ : STD_LOGIC;
  signal done_b2 : STD_LOGIC;
  signal \done_i_1__0_n_0\ : STD_LOGIC;
  signal \^done_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^r_opcode_reg[1]\ : STD_LOGIC;
  signal \^r_opcode_reg[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \countdown[3]_i_2__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \countdown[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \countdown[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \countdown[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \countdown[7]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \countdown[7]_i_4\ : label is "soft_lutpair5";
begin
  done_reg_0 <= \^done_reg_0\;
  \r_opcode_reg[1]\ <= \^r_opcode_reg[1]\;
  \r_opcode_reg[3]\ <= \^r_opcode_reg[3]\;
FSM_sequential_st_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => FSM_sequential_st_reg,
      I1 => \^done_reg_0\,
      I2 => st_0,
      O => r_start_reg
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \countdown[7]_i_1__0_n_0\,
      Q => busy_reg_n_0,
      R => SR(0)
    );
\countdown[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011100000111FFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => busy0,
      I5 => countdown(0),
      O => p_1_in(0)
    );
\countdown[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9900999999F09999"
    )
        port map (
      I0 => countdown(0),
      I1 => countdown(1),
      I2 => \^r_opcode_reg[3]\,
      I3 => busy_reg_n_0,
      I4 => \countdown_reg[0]_0\,
      I5 => \^r_opcode_reg[1]\,
      O => p_1_in(1)
    );
\countdown[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F40404F40404F"
    )
        port map (
      I0 => \^r_opcode_reg[1]\,
      I1 => \^r_opcode_reg[3]\,
      I2 => busy0,
      I3 => countdown(0),
      I4 => countdown(2),
      I5 => countdown(1),
      O => p_1_in(2)
    );
\countdown[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F80808F80808F"
    )
        port map (
      I0 => \^r_opcode_reg[1]\,
      I1 => \^r_opcode_reg[3]\,
      I2 => busy0,
      I3 => countdown(0),
      I4 => countdown(3),
      I5 => \countdown[3]_i_4_n_0\,
      O => p_1_in(3)
    );
\countdown[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => Q(1),
      I1 => Q(3),
      I2 => Q(2),
      O => \^r_opcode_reg[1]\
    );
\countdown[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => \^r_opcode_reg[3]\
    );
\countdown[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => countdown(1),
      I1 => countdown(2),
      O => \countdown[3]_i_4_n_0\
    );
\countdown[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0001"
    )
        port map (
      I0 => countdown(0),
      I1 => countdown(2),
      I2 => countdown(1),
      I3 => countdown(3),
      I4 => countdown(4),
      I5 => busy0,
      O => p_1_in(4)
    );
\countdown[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \countdown_reg[0]_0\,
      I1 => busy_reg_n_0,
      O => busy0
    );
\countdown[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D00D"
    )
        port map (
      I0 => \countdown_reg[0]_0\,
      I1 => busy_reg_n_0,
      I2 => \countdown[7]_i_4_n_0\,
      I3 => countdown(5),
      O => p_1_in(5)
    );
\countdown[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD00D00D"
    )
        port map (
      I0 => \countdown_reg[0]_0\,
      I1 => busy_reg_n_0,
      I2 => countdown(5),
      I3 => countdown(6),
      I4 => \countdown[7]_i_4_n_0\,
      O => p_1_in(6)
    );
\countdown[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => countdown(7),
      I1 => countdown(6),
      I2 => countdown(5),
      I3 => \countdown[7]_i_3_n_0\,
      I4 => busy_reg_n_0,
      I5 => \countdown_reg[0]_0\,
      O => \countdown[7]_i_1__0_n_0\
    );
\countdown[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC90000CCC9CCC9"
    )
        port map (
      I0 => \countdown[7]_i_4_n_0\,
      I1 => countdown(7),
      I2 => countdown(6),
      I3 => countdown(5),
      I4 => busy_reg_n_0,
      I5 => \countdown_reg[0]_0\,
      O => p_1_in(7)
    );
\countdown[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => countdown(3),
      I1 => countdown(1),
      I2 => countdown(2),
      I3 => countdown(4),
      O => \countdown[7]_i_3_n_0\
    );
\countdown[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => countdown(4),
      I1 => countdown(2),
      I2 => countdown(1),
      I3 => countdown(3),
      I4 => countdown(0),
      O => \countdown[7]_i_4_n_0\
    );
\countdown_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__0_n_0\,
      D => p_1_in(0),
      Q => countdown(0),
      R => SR(0)
    );
\countdown_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__0_n_0\,
      D => p_1_in(1),
      Q => countdown(1),
      R => SR(0)
    );
\countdown_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__0_n_0\,
      D => p_1_in(2),
      Q => countdown(2),
      R => SR(0)
    );
\countdown_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__0_n_0\,
      D => p_1_in(3),
      Q => countdown(3),
      R => SR(0)
    );
\countdown_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__0_n_0\,
      D => p_1_in(4),
      Q => countdown(4),
      R => SR(0)
    );
\countdown_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__0_n_0\,
      D => p_1_in(5),
      Q => countdown(5),
      R => SR(0)
    );
\countdown_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__0_n_0\,
      D => p_1_in(6),
      Q => countdown(6),
      R => SR(0)
    );
\countdown_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \countdown[7]_i_1__0_n_0\,
      D => p_1_in(7),
      Q => countdown(7),
      R => SR(0)
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => done_b2,
      I1 => routed(1),
      I2 => done_b12,
      I3 => routed(0),
      I4 => done_b10,
      I5 => st_0,
      O => \^done_reg_0\
    );
\done_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => countdown(7),
      I1 => countdown(6),
      I2 => countdown(5),
      I3 => \countdown[7]_i_3_n_0\,
      I4 => busy_reg_n_0,
      I5 => s_axi_aresetn,
      O => \done_i_1__0_n_0\
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \done_i_1__0_n_0\,
      Q => done_b2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity router_bd_bench_axi_0_0_router is
  port (
    s_axi_aresetn_0 : out STD_LOGIC;
    \FSM_sequential_st_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_st_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_st_reg[2]_1\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    FSM_sequential_st_reg_0 : in STD_LOGIC;
    start_b12_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \st__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    st : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start : in STD_LOGIC;
    \FSM_sequential_st_reg[1]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of router_bd_bench_axi_0_0_router : entity is "router";
end router_bd_bench_axi_0_0_router;

architecture STRUCTURE of router_bd_bench_axi_0_0_router is
  signal done_b10 : STD_LOGIC;
  signal done_b12 : STD_LOGIC;
  signal r_done : STD_LOGIC;
  signal routed : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal st_0 : STD_LOGIC;
  signal start_b10 : STD_LOGIC;
  signal start_b10_reg_n_0 : STD_LOGIC;
  signal start_b12 : STD_LOGIC;
  signal start_b12_reg_n_0 : STD_LOGIC;
  signal start_b2 : STD_LOGIC;
  signal start_b2_reg_n_0 : STD_LOGIC;
  signal u_b2_n_0 : STD_LOGIC;
  signal u_b2_n_1 : STD_LOGIC;
  signal u_b2_n_2 : STD_LOGIC;
  signal u_b2_n_3 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_st_reg : label is "S_IDLE:0,S_WAIT:1,";
begin
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
\FSM_sequential_st[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFFF338888FFCC"
    )
        port map (
      I0 => \FSM_sequential_st_reg[1]\,
      I1 => st(2),
      I2 => r_done,
      I3 => start,
      I4 => st(0),
      I5 => st(1),
      O => \FSM_sequential_st_reg[2]_1\
    );
\FSM_sequential_st[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCF33FF77770000"
    )
        port map (
      I0 => \FSM_sequential_st_reg[1]\,
      I1 => st(2),
      I2 => r_done,
      I3 => start,
      I4 => st(0),
      I5 => st(1),
      O => \FSM_sequential_st_reg[2]_0\
    );
\FSM_sequential_st[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECECAAEEAAAAAA88"
    )
        port map (
      I0 => \st__0\(0),
      I1 => st(2),
      I2 => r_done,
      I3 => start,
      I4 => st(0),
      I5 => st(1),
      O => \FSM_sequential_st_reg[2]\
    );
FSM_sequential_st_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => u_b2_n_3,
      Q => st_0,
      R => \^s_axi_aresetn_0\
    );
done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFF0000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => start_b12_reg_0(0),
      I4 => start_b12_reg_0(1),
      O => routed(1)
    );
done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1044FFFF00000000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => start_b12_reg_0(1),
      I5 => start_b12_reg_0(0),
      O => routed(0)
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => u_b2_n_2,
      Q => r_done,
      R => \^s_axi_aresetn_0\
    );
start_b10_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2200020002000200"
    )
        port map (
      I0 => FSM_sequential_st_reg_0,
      I1 => st_0,
      I2 => start_b12_reg_0(1),
      I3 => start_b12_reg_0(0),
      I4 => u_b2_n_1,
      I5 => u_b2_n_0,
      O => start_b10
    );
start_b10_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start_b10,
      Q => start_b10_reg_n_0,
      R => \^s_axi_aresetn_0\
    );
start_b12_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020202000200020"
    )
        port map (
      I0 => FSM_sequential_st_reg_0,
      I1 => st_0,
      I2 => start_b12_reg_0(1),
      I3 => start_b12_reg_0(0),
      I4 => u_b2_n_1,
      I5 => u_b2_n_0,
      O => start_b12
    );
start_b12_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start_b12,
      Q => start_b12_reg_n_0,
      R => \^s_axi_aresetn_0\
    );
start_b2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00022002"
    )
        port map (
      I0 => FSM_sequential_st_reg_0,
      I1 => st_0,
      I2 => start_b12_reg_0(1),
      I3 => start_b12_reg_0(0),
      I4 => u_b2_n_0,
      O => start_b2
    );
start_b2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start_b2,
      Q => start_b2_reg_n_0,
      R => \^s_axi_aresetn_0\
    );
u_b10: entity work.router_bd_bench_axi_0_0_base10_alu
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => \^s_axi_aresetn_0\,
      \countdown_reg[0]_0\ => start_b10_reg_n_0,
      \countdown_reg[1]_0\ => u_b2_n_0,
      \countdown_reg[1]_1\ => u_b2_n_1,
      done_b10 => done_b10,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
u_b12: entity work.router_bd_bench_axi_0_0_base12_alu
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => \^s_axi_aresetn_0\,
      \countdown_reg[0]_0\ => start_b12_reg_n_0,
      \countdown_reg[3]_0\ => u_b2_n_0,
      done_b12 => done_b12,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
u_b2: entity work.router_bd_bench_axi_0_0_base2_alu
     port map (
      FSM_sequential_st_reg => FSM_sequential_st_reg_0,
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => \^s_axi_aresetn_0\,
      \countdown_reg[0]_0\ => start_b2_reg_n_0,
      done_b10 => done_b10,
      done_b12 => done_b12,
      done_reg_0 => u_b2_n_2,
      \r_opcode_reg[1]\ => u_b2_n_1,
      \r_opcode_reg[3]\ => u_b2_n_0,
      r_start_reg => u_b2_n_3,
      routed(1 downto 0) => routed(1 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      st_0 => st_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity router_bd_bench_axi_0_0_bench_engine is
  port (
    rst : out STD_LOGIC;
    pwrup_cnt_reg_14_sp_1 : out STD_LOGIC;
    pwrup_cnt_reg_3_sp_1 : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    winner_valid_reg_0 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \FSM_sequential_st_reg[2]_0\ : in STD_LOGIC;
    bench_done_latched_reg : in STD_LOGIC;
    pwrup_cnt_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bench_done_latched_reg_0 : in STD_LOGIC;
    \s_axi_rdata_reg[0]\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_reg[4]\ : in STD_LOGIC;
    \s_axi_rdata_reg[4]_0\ : in STD_LOGIC;
    \s_axi_rdata_reg[31]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of router_bd_bench_axi_0_0_bench_engine : entity is "bench_engine";
end router_bd_bench_axi_0_0_bench_engine;

architecture STRUCTURE of router_bd_bench_axi_0_0_bench_engine is
  signal \FSM_sequential_st[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_st[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_st[2]_i_6_n_0\ : STD_LOGIC;
  signal \MINSEL.idx\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \MINSEL.idx1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__0_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__0_n_1\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__0_n_2\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__0_n_3\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_n_1\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_n_2\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__1_n_3\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_n_1\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_n_2\ : STD_LOGIC;
  signal \MINSEL.idx1_carry__2_n_3\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_i_1_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_i_2_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_i_3_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_i_4_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_i_5_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_i_6_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_i_7_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_i_8_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_n_0\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_n_1\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_n_2\ : STD_LOGIC;
  signal \MINSEL.idx1_carry_n_3\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_n_1\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_n_2\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__0_n_3\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_n_1\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_n_2\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__1_n_3\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_n_1\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_n_2\ : STD_LOGIC;
  signal \MINSEL.minv1_carry__2_n_3\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_i_1_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_i_2_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_i_3_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_i_4_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_i_5_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_i_6_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_i_7_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_i_8_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_n_0\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_n_1\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_n_2\ : STD_LOGIC;
  signal \MINSEL.minv1_carry_n_3\ : STD_LOGIC;
  signal \MINSEL.minv__95\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bench_done : STD_LOGIC;
  signal cond_cycle_acc : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cond_cycle_acc0_carry__0_n_0\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__0_n_1\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__0_n_2\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__0_n_3\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__1_n_0\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__1_n_1\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__1_n_2\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__1_n_3\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__2_n_0\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__2_n_1\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__2_n_2\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__2_n_3\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__3_n_0\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__3_n_1\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__3_n_2\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__3_n_3\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__4_n_0\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__4_n_1\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__4_n_2\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__4_n_3\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__5_n_0\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__5_n_1\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__5_n_2\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__5_n_3\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__6_n_2\ : STD_LOGIC;
  signal \cond_cycle_acc0_carry__6_n_3\ : STD_LOGIC;
  signal cond_cycle_acc0_carry_n_0 : STD_LOGIC;
  signal cond_cycle_acc0_carry_n_1 : STD_LOGIC;
  signal cond_cycle_acc0_carry_n_2 : STD_LOGIC;
  signal cond_cycle_acc0_carry_n_3 : STD_LOGIC;
  signal \cond_cycle_acc[31]_i_1_n_0\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[0]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[10]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[11]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[12]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[13]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[14]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[15]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[16]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[17]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[18]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[19]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[1]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[20]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[21]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[22]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[23]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[24]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[25]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[26]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[27]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[28]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[29]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[2]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[30]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[31]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[3]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[4]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[5]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[6]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[7]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[8]\ : STD_LOGIC;
  signal \cond_cycle_acc_reg_n_0_[9]\ : STD_LOGIC;
  signal \cond_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \cond_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \cond_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \cond_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal in15 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal op_idx : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \op_idx[3]_i_1_n_0\ : STD_LOGIC;
  signal \op_idx[3]_i_3_n_0\ : STD_LOGIC;
  signal \op_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \op_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \op_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal \op_idx_reg_n_0_[3]\ : STD_LOGIC;
  signal ops : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_out_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_1\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_2\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_3\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__1_n_1\ : STD_LOGIC;
  signal \p_0_out_carry__1_n_2\ : STD_LOGIC;
  signal \p_0_out_carry__1_n_3\ : STD_LOGIC;
  signal \p_0_out_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_n_0\ : STD_LOGIC;
  signal \p_0_out_carry__2_n_1\ : STD_LOGIC;
  signal \p_0_out_carry__2_n_2\ : STD_LOGIC;
  signal \p_0_out_carry__2_n_3\ : STD_LOGIC;
  signal p_0_out_carry_i_1_n_0 : STD_LOGIC;
  signal p_0_out_carry_i_2_n_0 : STD_LOGIC;
  signal p_0_out_carry_i_3_n_0 : STD_LOGIC;
  signal p_0_out_carry_i_4_n_0 : STD_LOGIC;
  signal p_0_out_carry_i_5_n_0 : STD_LOGIC;
  signal p_0_out_carry_i_6_n_0 : STD_LOGIC;
  signal p_0_out_carry_i_7_n_0 : STD_LOGIC;
  signal p_0_out_carry_i_8_n_0 : STD_LOGIC;
  signal p_0_out_carry_n_0 : STD_LOGIC;
  signal p_0_out_carry_n_1 : STD_LOGIC;
  signal p_0_out_carry_n_2 : STD_LOGIC;
  signal p_0_out_carry_n_3 : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \p_0_out_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal pwrup_cnt_reg_14_sn_1 : STD_LOGIC;
  signal pwrup_cnt_reg_3_sn_1 : STD_LOGIC;
  signal r_cond : STD_LOGIC;
  signal \r_cond_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_cond_reg_n_0_[1]\ : STD_LOGIC;
  signal r_opcode : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal r_start : STD_LOGIC;
  signal r_start_reg_n_0 : STD_LOGIC;
  signal \^rst\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal st : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \st__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal start : STD_LOGIC;
  signal t0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal t1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal t2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal t3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal time_cond0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \time_cond[0][31]_i_1_n_0\ : STD_LOGIC;
  signal \time_cond[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \time_cond[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \time_cond[1][31]_i_2_n_0\ : STD_LOGIC;
  signal \time_cond[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \time_cond[2][31]_i_2_n_0\ : STD_LOGIC;
  signal \time_cond[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \time_cond[3][31]_i_3_n_0\ : STD_LOGIC;
  signal u_router_n_1 : STD_LOGIC;
  signal u_router_n_2 : STD_LOGIC;
  signal u_router_n_3 : STD_LOGIC;
  signal winner_code : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal winner_onehot_latched : STD_LOGIC;
  signal \winner_onehot_latched[0]_i_1_n_0\ : STD_LOGIC;
  signal \winner_onehot_latched[1]_i_1_n_0\ : STD_LOGIC;
  signal \winner_onehot_latched[2]_i_1_n_0\ : STD_LOGIC;
  signal \winner_onehot_latched[3]_i_2_n_0\ : STD_LOGIC;
  signal \winner_onehot_latched_reg_n_0_[0]\ : STD_LOGIC;
  signal \winner_onehot_latched_reg_n_0_[1]\ : STD_LOGIC;
  signal \winner_onehot_latched_reg_n_0_[2]\ : STD_LOGIC;
  signal \winner_onehot_latched_reg_n_0_[3]\ : STD_LOGIC;
  signal winner_valid : STD_LOGIC;
  signal winner_valid_i_1_n_0 : STD_LOGIC;
  signal \NLW_MINSEL.idx1_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MINSEL.idx1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MINSEL.idx1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MINSEL.idx1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MINSEL.minv1_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MINSEL.minv1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MINSEL.minv1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MINSEL.minv1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cond_cycle_acc0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cond_cycle_acc0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_p_0_out_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_0_out_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_0_out_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_0_out_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_0_out_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_0_out_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_0_out_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_0_out_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_st[1]_i_2\ : label is "soft_lutpair46";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_st_reg[0]\ : label is "S_IDLE:000,S_START:010,S_WAIT:011,S_NEXT_OP:100,S_NEXT_COND:101,S_LOAD:001,S_DONE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_st_reg[1]\ : label is "S_IDLE:000,S_START:010,S_WAIT:011,S_NEXT_OP:100,S_NEXT_COND:101,S_LOAD:001,S_DONE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_st_reg[2]\ : label is "S_IDLE:000,S_START:010,S_WAIT:011,S_NEXT_OP:100,S_NEXT_COND:101,S_LOAD:001,S_DONE:110";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \MINSEL.idx1_carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \MINSEL.idx1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \MINSEL.idx1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \MINSEL.idx1_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \MINSEL.minv1_carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \MINSEL.minv1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \MINSEL.minv1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \MINSEL.minv1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of bench_st_running_i_1 : label is "soft_lutpair45";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cond_cycle_acc0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cond_cycle_acc0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cond_cycle_acc0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cond_cycle_acc0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cond_cycle_acc0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cond_cycle_acc0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cond_cycle_acc0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cond_cycle_acc0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \cond_cycle_acc[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cond_cycle_acc[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cond_cycle_acc[11]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cond_cycle_acc[12]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cond_cycle_acc[13]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cond_cycle_acc[14]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cond_cycle_acc[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cond_cycle_acc[16]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cond_cycle_acc[17]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \cond_cycle_acc[18]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \cond_cycle_acc[19]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cond_cycle_acc[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \cond_cycle_acc[20]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cond_cycle_acc[21]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cond_cycle_acc[22]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cond_cycle_acc[23]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cond_cycle_acc[24]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cond_cycle_acc[25]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cond_cycle_acc[26]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cond_cycle_acc[27]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cond_cycle_acc[28]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cond_cycle_acc[29]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cond_cycle_acc[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \cond_cycle_acc[30]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cond_cycle_acc[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cond_cycle_acc[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cond_cycle_acc[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cond_cycle_acc[6]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cond_cycle_acc[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cond_cycle_acc[8]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cond_cycle_acc[9]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \led[1]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \led[2]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \led[3]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \op_idx[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \op_idx[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \op_idx[3]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \op_idx[3]_i_4\ : label is "soft_lutpair28";
  attribute COMPARATOR_THRESHOLD of p_0_out_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \p_0_out_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \p_0_out_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \p_0_out_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \p_0_out_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \p_0_out_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \p_0_out_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \p_0_out_inferred__0/i__carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \r_opcode[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \r_opcode[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_opcode[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \time_cond[0][31]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \time_cond[1][31]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \time_cond[2][31]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \time_cond[3][0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \time_cond[3][10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \time_cond[3][11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \time_cond[3][12]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \time_cond[3][13]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \time_cond[3][14]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \time_cond[3][15]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \time_cond[3][16]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \time_cond[3][17]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \time_cond[3][18]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \time_cond[3][19]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \time_cond[3][1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \time_cond[3][20]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \time_cond[3][21]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \time_cond[3][22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \time_cond[3][23]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \time_cond[3][24]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \time_cond[3][25]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \time_cond[3][26]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \time_cond[3][27]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \time_cond[3][28]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \time_cond[3][29]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \time_cond[3][2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \time_cond[3][30]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \time_cond[3][31]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \time_cond[3][3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \time_cond[3][4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \time_cond[3][5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \time_cond[3][6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \time_cond[3][7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \time_cond[3][8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \time_cond[3][9]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \winner_code[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \winner_code[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \winner_onehot_latched[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \winner_onehot_latched[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \winner_onehot_latched[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \winner_onehot_latched[3]_i_2\ : label is "soft_lutpair44";
begin
  pwrup_cnt_reg_14_sp_1 <= pwrup_cnt_reg_14_sn_1;
  pwrup_cnt_reg_3_sp_1 <= pwrup_cnt_reg_3_sn_1;
  rst <= \^rst\;
\FSM_sequential_st[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \cond_idx_reg_n_0_[1]\,
      I1 => \cond_idx_reg_n_0_[0]\,
      O => \FSM_sequential_st[1]_i_2_n_0\
    );
\FSM_sequential_st[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08F0000008F00F00"
    )
        port map (
      I0 => \cond_idx_reg_n_0_[1]\,
      I1 => \cond_idx_reg_n_0_[0]\,
      I2 => st(1),
      I3 => st(2),
      I4 => st(0),
      I5 => \op_idx[3]_i_3_n_0\,
      O => \st__0\(2)
    );
\FSM_sequential_st[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => \FSM_sequential_st[2]_i_4_n_0\,
      I1 => pwrup_cnt_reg_14_sn_1,
      I2 => \FSM_sequential_st[2]_i_6_n_0\,
      I3 => pwrup_cnt_reg_3_sn_1,
      I4 => \FSM_sequential_st_reg[2]_0\,
      I5 => bench_done_latched_reg,
      O => start
    );
\FSM_sequential_st[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pwrup_cnt_reg(7),
      I1 => pwrup_cnt_reg(6),
      I2 => pwrup_cnt_reg(9),
      I3 => pwrup_cnt_reg(11),
      O => \FSM_sequential_st[2]_i_4_n_0\
    );
\FSM_sequential_st[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pwrup_cnt_reg(14),
      I1 => pwrup_cnt_reg(10),
      I2 => pwrup_cnt_reg(13),
      I3 => pwrup_cnt_reg(12),
      O => pwrup_cnt_reg_14_sn_1
    );
\FSM_sequential_st[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pwrup_cnt_reg(2),
      I1 => pwrup_cnt_reg(15),
      I2 => pwrup_cnt_reg(1),
      I3 => pwrup_cnt_reg(0),
      O => \FSM_sequential_st[2]_i_6_n_0\
    );
\FSM_sequential_st[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pwrup_cnt_reg(3),
      I1 => pwrup_cnt_reg(5),
      I2 => pwrup_cnt_reg(8),
      I3 => pwrup_cnt_reg(4),
      O => pwrup_cnt_reg_3_sn_1
    );
\FSM_sequential_st_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => u_router_n_3,
      Q => st(0),
      R => \^rst\
    );
\FSM_sequential_st_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => u_router_n_2,
      Q => st(1),
      R => \^rst\
    );
\FSM_sequential_st_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => u_router_n_1,
      Q => st(2),
      R => \^rst\
    );
\MINSEL.idx1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \MINSEL.idx1_carry_n_0\,
      CO(2) => \MINSEL.idx1_carry_n_1\,
      CO(1) => \MINSEL.idx1_carry_n_2\,
      CO(0) => \MINSEL.idx1_carry_n_3\,
      CYINIT => '1',
      DI(3) => \MINSEL.idx1_carry_i_1_n_0\,
      DI(2) => \MINSEL.idx1_carry_i_2_n_0\,
      DI(1) => \MINSEL.idx1_carry_i_3_n_0\,
      DI(0) => \MINSEL.idx1_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_MINSEL.idx1_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \MINSEL.idx1_carry_i_5_n_0\,
      S(2) => \MINSEL.idx1_carry_i_6_n_0\,
      S(1) => \MINSEL.idx1_carry_i_7_n_0\,
      S(0) => \MINSEL.idx1_carry_i_8_n_0\
    );
\MINSEL.idx1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \MINSEL.idx1_carry_n_0\,
      CO(3) => \MINSEL.idx1_carry__0_n_0\,
      CO(2) => \MINSEL.idx1_carry__0_n_1\,
      CO(1) => \MINSEL.idx1_carry__0_n_2\,
      CO(0) => \MINSEL.idx1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \MINSEL.idx1_carry__0_i_1_n_0\,
      DI(2) => \MINSEL.idx1_carry__0_i_2_n_0\,
      DI(1) => \MINSEL.idx1_carry__0_i_3_n_0\,
      DI(0) => \MINSEL.idx1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_MINSEL.idx1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \MINSEL.idx1_carry__0_i_5_n_0\,
      S(2) => \MINSEL.idx1_carry__0_i_6_n_0\,
      S(1) => \MINSEL.idx1_carry__0_i_7_n_0\,
      S(0) => \MINSEL.idx1_carry__0_i_8_n_0\
    );
\MINSEL.idx1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(14),
      I1 => t0(15),
      I2 => \MINSEL.minv__95\(15),
      I3 => t0(14),
      O => \MINSEL.idx1_carry__0_i_1_n_0\
    );
\MINSEL.idx1_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(15),
      I2 => t1(15),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(15),
      O => \MINSEL.minv__95\(15)
    );
\MINSEL.idx1_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(12),
      I2 => t1(12),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(12),
      O => \MINSEL.minv__95\(12)
    );
\MINSEL.idx1_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(13),
      I2 => t1(13),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(13),
      O => \MINSEL.minv__95\(13)
    );
\MINSEL.idx1_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(10),
      I2 => t1(10),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(10),
      O => \MINSEL.minv__95\(10)
    );
\MINSEL.idx1_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(11),
      I2 => t1(11),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(11),
      O => \MINSEL.minv__95\(11)
    );
\MINSEL.idx1_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(8),
      I2 => t1(8),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(8),
      O => \MINSEL.minv__95\(8)
    );
\MINSEL.idx1_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(9),
      I2 => t1(9),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(9),
      O => \MINSEL.minv__95\(9)
    );
\MINSEL.idx1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(12),
      I1 => t0(13),
      I2 => \MINSEL.minv__95\(13),
      I3 => t0(12),
      O => \MINSEL.idx1_carry__0_i_2_n_0\
    );
\MINSEL.idx1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(10),
      I1 => t0(11),
      I2 => \MINSEL.minv__95\(11),
      I3 => t0(10),
      O => \MINSEL.idx1_carry__0_i_3_n_0\
    );
\MINSEL.idx1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(8),
      I1 => t0(9),
      I2 => \MINSEL.minv__95\(9),
      I3 => t0(8),
      O => \MINSEL.idx1_carry__0_i_4_n_0\
    );
\MINSEL.idx1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(14),
      I1 => \MINSEL.minv__95\(15),
      I2 => t0(15),
      I3 => t0(14),
      O => \MINSEL.idx1_carry__0_i_5_n_0\
    );
\MINSEL.idx1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(12),
      I1 => \MINSEL.minv__95\(13),
      I2 => t0(13),
      I3 => t0(12),
      O => \MINSEL.idx1_carry__0_i_6_n_0\
    );
\MINSEL.idx1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(10),
      I1 => \MINSEL.minv__95\(11),
      I2 => t0(11),
      I3 => t0(10),
      O => \MINSEL.idx1_carry__0_i_7_n_0\
    );
\MINSEL.idx1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(8),
      I1 => \MINSEL.minv__95\(9),
      I2 => t0(9),
      I3 => t0(8),
      O => \MINSEL.idx1_carry__0_i_8_n_0\
    );
\MINSEL.idx1_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(14),
      I2 => t1(14),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(14),
      O => \MINSEL.minv__95\(14)
    );
\MINSEL.idx1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \MINSEL.idx1_carry__0_n_0\,
      CO(3) => \MINSEL.idx1_carry__1_n_0\,
      CO(2) => \MINSEL.idx1_carry__1_n_1\,
      CO(1) => \MINSEL.idx1_carry__1_n_2\,
      CO(0) => \MINSEL.idx1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \MINSEL.idx1_carry__1_i_1_n_0\,
      DI(2) => \MINSEL.idx1_carry__1_i_2_n_0\,
      DI(1) => \MINSEL.idx1_carry__1_i_3_n_0\,
      DI(0) => \MINSEL.idx1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_MINSEL.idx1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \MINSEL.idx1_carry__1_i_5_n_0\,
      S(2) => \MINSEL.idx1_carry__1_i_6_n_0\,
      S(1) => \MINSEL.idx1_carry__1_i_7_n_0\,
      S(0) => \MINSEL.idx1_carry__1_i_8_n_0\
    );
\MINSEL.idx1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(22),
      I1 => t0(23),
      I2 => \MINSEL.minv__95\(23),
      I3 => t0(22),
      O => \MINSEL.idx1_carry__1_i_1_n_0\
    );
\MINSEL.idx1_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(23),
      I2 => t1(23),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(23),
      O => \MINSEL.minv__95\(23)
    );
\MINSEL.idx1_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(20),
      I2 => t1(20),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(20),
      O => \MINSEL.minv__95\(20)
    );
\MINSEL.idx1_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(21),
      I2 => t1(21),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(21),
      O => \MINSEL.minv__95\(21)
    );
\MINSEL.idx1_carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(18),
      I2 => t1(18),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(18),
      O => \MINSEL.minv__95\(18)
    );
\MINSEL.idx1_carry__1_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(19),
      I2 => t1(19),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(19),
      O => \MINSEL.minv__95\(19)
    );
\MINSEL.idx1_carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(16),
      I2 => t1(16),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(16),
      O => \MINSEL.minv__95\(16)
    );
\MINSEL.idx1_carry__1_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(17),
      I2 => t1(17),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(17),
      O => \MINSEL.minv__95\(17)
    );
\MINSEL.idx1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(20),
      I1 => t0(21),
      I2 => \MINSEL.minv__95\(21),
      I3 => t0(20),
      O => \MINSEL.idx1_carry__1_i_2_n_0\
    );
\MINSEL.idx1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(18),
      I1 => t0(19),
      I2 => \MINSEL.minv__95\(19),
      I3 => t0(18),
      O => \MINSEL.idx1_carry__1_i_3_n_0\
    );
\MINSEL.idx1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(16),
      I1 => t0(17),
      I2 => \MINSEL.minv__95\(17),
      I3 => t0(16),
      O => \MINSEL.idx1_carry__1_i_4_n_0\
    );
\MINSEL.idx1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(22),
      I1 => \MINSEL.minv__95\(23),
      I2 => t0(23),
      I3 => t0(22),
      O => \MINSEL.idx1_carry__1_i_5_n_0\
    );
\MINSEL.idx1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(20),
      I1 => \MINSEL.minv__95\(21),
      I2 => t0(21),
      I3 => t0(20),
      O => \MINSEL.idx1_carry__1_i_6_n_0\
    );
\MINSEL.idx1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(18),
      I1 => \MINSEL.minv__95\(19),
      I2 => t0(19),
      I3 => t0(18),
      O => \MINSEL.idx1_carry__1_i_7_n_0\
    );
\MINSEL.idx1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(16),
      I1 => \MINSEL.minv__95\(17),
      I2 => t0(17),
      I3 => t0(16),
      O => \MINSEL.idx1_carry__1_i_8_n_0\
    );
\MINSEL.idx1_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(22),
      I2 => t1(22),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(22),
      O => \MINSEL.minv__95\(22)
    );
\MINSEL.idx1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MINSEL.idx1_carry__1_n_0\,
      CO(3) => \MINSEL.idx1_carry__2_n_0\,
      CO(2) => \MINSEL.idx1_carry__2_n_1\,
      CO(1) => \MINSEL.idx1_carry__2_n_2\,
      CO(0) => \MINSEL.idx1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \MINSEL.idx1_carry__2_i_1_n_0\,
      DI(2) => \MINSEL.idx1_carry__2_i_2_n_0\,
      DI(1) => \MINSEL.idx1_carry__2_i_3_n_0\,
      DI(0) => \MINSEL.idx1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_MINSEL.idx1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \MINSEL.idx1_carry__2_i_5_n_0\,
      S(2) => \MINSEL.idx1_carry__2_i_6_n_0\,
      S(1) => \MINSEL.idx1_carry__2_i_7_n_0\,
      S(0) => \MINSEL.idx1_carry__2_i_8_n_0\
    );
\MINSEL.idx1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(30),
      I1 => t0(31),
      I2 => \MINSEL.minv__95\(31),
      I3 => t0(30),
      O => \MINSEL.idx1_carry__2_i_1_n_0\
    );
\MINSEL.idx1_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(31),
      I2 => t1(31),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(31),
      O => \MINSEL.minv__95\(31)
    );
\MINSEL.idx1_carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(28),
      I2 => t1(28),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(28),
      O => \MINSEL.minv__95\(28)
    );
\MINSEL.idx1_carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(29),
      I2 => t1(29),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(29),
      O => \MINSEL.minv__95\(29)
    );
\MINSEL.idx1_carry__2_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(26),
      I2 => t1(26),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(26),
      O => \MINSEL.minv__95\(26)
    );
\MINSEL.idx1_carry__2_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(27),
      I2 => t1(27),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(27),
      O => \MINSEL.minv__95\(27)
    );
\MINSEL.idx1_carry__2_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(24),
      I2 => t1(24),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(24),
      O => \MINSEL.minv__95\(24)
    );
\MINSEL.idx1_carry__2_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(25),
      I2 => t1(25),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(25),
      O => \MINSEL.minv__95\(25)
    );
\MINSEL.idx1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(28),
      I1 => t0(29),
      I2 => \MINSEL.minv__95\(29),
      I3 => t0(28),
      O => \MINSEL.idx1_carry__2_i_2_n_0\
    );
\MINSEL.idx1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(26),
      I1 => t0(27),
      I2 => \MINSEL.minv__95\(27),
      I3 => t0(26),
      O => \MINSEL.idx1_carry__2_i_3_n_0\
    );
\MINSEL.idx1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(24),
      I1 => t0(25),
      I2 => \MINSEL.minv__95\(25),
      I3 => t0(24),
      O => \MINSEL.idx1_carry__2_i_4_n_0\
    );
\MINSEL.idx1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(30),
      I1 => \MINSEL.minv__95\(31),
      I2 => t0(31),
      I3 => t0(30),
      O => \MINSEL.idx1_carry__2_i_5_n_0\
    );
\MINSEL.idx1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(28),
      I1 => \MINSEL.minv__95\(29),
      I2 => t0(29),
      I3 => t0(28),
      O => \MINSEL.idx1_carry__2_i_6_n_0\
    );
\MINSEL.idx1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(26),
      I1 => \MINSEL.minv__95\(27),
      I2 => t0(27),
      I3 => t0(26),
      O => \MINSEL.idx1_carry__2_i_7_n_0\
    );
\MINSEL.idx1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(24),
      I1 => \MINSEL.minv__95\(25),
      I2 => t0(25),
      I3 => t0(24),
      O => \MINSEL.idx1_carry__2_i_8_n_0\
    );
\MINSEL.idx1_carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(30),
      I2 => t1(30),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(30),
      O => \MINSEL.minv__95\(30)
    );
\MINSEL.idx1_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(6),
      I1 => t0(7),
      I2 => \MINSEL.minv__95\(7),
      I3 => t0(6),
      O => \MINSEL.idx1_carry_i_1_n_0\
    );
\MINSEL.idx1_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(7),
      I2 => t1(7),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(7),
      O => \MINSEL.minv__95\(7)
    );
\MINSEL.idx1_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(4),
      I2 => t1(4),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(4),
      O => \MINSEL.minv__95\(4)
    );
\MINSEL.idx1_carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(5),
      I2 => t1(5),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(5),
      O => \MINSEL.minv__95\(5)
    );
\MINSEL.idx1_carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(2),
      I2 => t1(2),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(2),
      O => \MINSEL.minv__95\(2)
    );
\MINSEL.idx1_carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(3),
      I2 => t1(3),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(3),
      O => \MINSEL.minv__95\(3)
    );
\MINSEL.idx1_carry_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(0),
      I2 => t1(0),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(0),
      O => \MINSEL.minv__95\(0)
    );
\MINSEL.idx1_carry_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(1),
      I2 => t1(1),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(1),
      O => \MINSEL.minv__95\(1)
    );
\MINSEL.idx1_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(4),
      I1 => t0(5),
      I2 => \MINSEL.minv__95\(5),
      I3 => t0(4),
      O => \MINSEL.idx1_carry_i_2_n_0\
    );
\MINSEL.idx1_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(2),
      I1 => t0(3),
      I2 => \MINSEL.minv__95\(3),
      I3 => t0(2),
      O => \MINSEL.idx1_carry_i_3_n_0\
    );
\MINSEL.idx1_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30B2"
    )
        port map (
      I0 => \MINSEL.minv__95\(0),
      I1 => t0(1),
      I2 => \MINSEL.minv__95\(1),
      I3 => t0(0),
      O => \MINSEL.idx1_carry_i_4_n_0\
    );
\MINSEL.idx1_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(6),
      I1 => \MINSEL.minv__95\(7),
      I2 => t0(7),
      I3 => t0(6),
      O => \MINSEL.idx1_carry_i_5_n_0\
    );
\MINSEL.idx1_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(4),
      I1 => \MINSEL.minv__95\(5),
      I2 => t0(5),
      I3 => t0(4),
      O => \MINSEL.idx1_carry_i_6_n_0\
    );
\MINSEL.idx1_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(2),
      I1 => \MINSEL.minv__95\(3),
      I2 => t0(3),
      I3 => t0(2),
      O => \MINSEL.idx1_carry_i_7_n_0\
    );
\MINSEL.idx1_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \MINSEL.minv__95\(0),
      I1 => \MINSEL.minv__95\(1),
      I2 => t0(1),
      I3 => t0(0),
      O => \MINSEL.idx1_carry_i_8_n_0\
    );
\MINSEL.idx1_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFE4E4F000E4E4"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => t3(6),
      I2 => t1(6),
      I3 => \p_0_out_carry__2_n_0\,
      I4 => \MINSEL.minv1_carry__2_n_0\,
      I5 => t2(6),
      O => \MINSEL.minv__95\(6)
    );
\MINSEL.minv1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \MINSEL.minv1_carry_n_0\,
      CO(2) => \MINSEL.minv1_carry_n_1\,
      CO(1) => \MINSEL.minv1_carry_n_2\,
      CO(0) => \MINSEL.minv1_carry_n_3\,
      CYINIT => '1',
      DI(3) => \MINSEL.minv1_carry_i_1_n_0\,
      DI(2) => \MINSEL.minv1_carry_i_2_n_0\,
      DI(1) => \MINSEL.minv1_carry_i_3_n_0\,
      DI(0) => \MINSEL.minv1_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_MINSEL.minv1_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \MINSEL.minv1_carry_i_5_n_0\,
      S(2) => \MINSEL.minv1_carry_i_6_n_0\,
      S(1) => \MINSEL.minv1_carry_i_7_n_0\,
      S(0) => \MINSEL.minv1_carry_i_8_n_0\
    );
\MINSEL.minv1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \MINSEL.minv1_carry_n_0\,
      CO(3) => \MINSEL.minv1_carry__0_n_0\,
      CO(2) => \MINSEL.minv1_carry__0_n_1\,
      CO(1) => \MINSEL.minv1_carry__0_n_2\,
      CO(0) => \MINSEL.minv1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \MINSEL.minv1_carry__0_i_1_n_0\,
      DI(2) => \MINSEL.minv1_carry__0_i_2_n_0\,
      DI(1) => \MINSEL.minv1_carry__0_i_3_n_0\,
      DI(0) => \MINSEL.minv1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_MINSEL.minv1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \MINSEL.minv1_carry__0_i_5_n_0\,
      S(2) => \MINSEL.minv1_carry__0_i_6_n_0\,
      S(1) => \MINSEL.minv1_carry__0_i_7_n_0\,
      S(0) => \MINSEL.minv1_carry__0_i_8_n_0\
    );
\MINSEL.minv1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(15),
      I1 => t2(15),
      I2 => t3(14),
      I3 => t2(14),
      O => \MINSEL.minv1_carry__0_i_1_n_0\
    );
\MINSEL.minv1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(13),
      I1 => t2(13),
      I2 => t3(12),
      I3 => t2(12),
      O => \MINSEL.minv1_carry__0_i_2_n_0\
    );
\MINSEL.minv1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(11),
      I1 => t2(11),
      I2 => t3(10),
      I3 => t2(10),
      O => \MINSEL.minv1_carry__0_i_3_n_0\
    );
\MINSEL.minv1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(9),
      I1 => t2(9),
      I2 => t3(8),
      I3 => t2(8),
      O => \MINSEL.minv1_carry__0_i_4_n_0\
    );
\MINSEL.minv1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(15),
      I1 => t2(15),
      I2 => t3(14),
      I3 => t2(14),
      O => \MINSEL.minv1_carry__0_i_5_n_0\
    );
\MINSEL.minv1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(13),
      I1 => t2(13),
      I2 => t3(12),
      I3 => t2(12),
      O => \MINSEL.minv1_carry__0_i_6_n_0\
    );
\MINSEL.minv1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(11),
      I1 => t2(11),
      I2 => t3(10),
      I3 => t2(10),
      O => \MINSEL.minv1_carry__0_i_7_n_0\
    );
\MINSEL.minv1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(9),
      I1 => t2(9),
      I2 => t3(8),
      I3 => t2(8),
      O => \MINSEL.minv1_carry__0_i_8_n_0\
    );
\MINSEL.minv1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \MINSEL.minv1_carry__0_n_0\,
      CO(3) => \MINSEL.minv1_carry__1_n_0\,
      CO(2) => \MINSEL.minv1_carry__1_n_1\,
      CO(1) => \MINSEL.minv1_carry__1_n_2\,
      CO(0) => \MINSEL.minv1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \MINSEL.minv1_carry__1_i_1_n_0\,
      DI(2) => \MINSEL.minv1_carry__1_i_2_n_0\,
      DI(1) => \MINSEL.minv1_carry__1_i_3_n_0\,
      DI(0) => \MINSEL.minv1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_MINSEL.minv1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \MINSEL.minv1_carry__1_i_5_n_0\,
      S(2) => \MINSEL.minv1_carry__1_i_6_n_0\,
      S(1) => \MINSEL.minv1_carry__1_i_7_n_0\,
      S(0) => \MINSEL.minv1_carry__1_i_8_n_0\
    );
\MINSEL.minv1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(23),
      I1 => t2(23),
      I2 => t3(22),
      I3 => t2(22),
      O => \MINSEL.minv1_carry__1_i_1_n_0\
    );
\MINSEL.minv1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(21),
      I1 => t2(21),
      I2 => t3(20),
      I3 => t2(20),
      O => \MINSEL.minv1_carry__1_i_2_n_0\
    );
\MINSEL.minv1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(19),
      I1 => t2(19),
      I2 => t3(18),
      I3 => t2(18),
      O => \MINSEL.minv1_carry__1_i_3_n_0\
    );
\MINSEL.minv1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(17),
      I1 => t2(17),
      I2 => t3(16),
      I3 => t2(16),
      O => \MINSEL.minv1_carry__1_i_4_n_0\
    );
\MINSEL.minv1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(23),
      I1 => t2(23),
      I2 => t3(22),
      I3 => t2(22),
      O => \MINSEL.minv1_carry__1_i_5_n_0\
    );
\MINSEL.minv1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(21),
      I1 => t2(21),
      I2 => t3(20),
      I3 => t2(20),
      O => \MINSEL.minv1_carry__1_i_6_n_0\
    );
\MINSEL.minv1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(19),
      I1 => t2(19),
      I2 => t3(18),
      I3 => t2(18),
      O => \MINSEL.minv1_carry__1_i_7_n_0\
    );
\MINSEL.minv1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(17),
      I1 => t2(17),
      I2 => t3(16),
      I3 => t2(16),
      O => \MINSEL.minv1_carry__1_i_8_n_0\
    );
\MINSEL.minv1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MINSEL.minv1_carry__1_n_0\,
      CO(3) => \MINSEL.minv1_carry__2_n_0\,
      CO(2) => \MINSEL.minv1_carry__2_n_1\,
      CO(1) => \MINSEL.minv1_carry__2_n_2\,
      CO(0) => \MINSEL.minv1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \MINSEL.minv1_carry__2_i_1_n_0\,
      DI(2) => \MINSEL.minv1_carry__2_i_2_n_0\,
      DI(1) => \MINSEL.minv1_carry__2_i_3_n_0\,
      DI(0) => \MINSEL.minv1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_MINSEL.minv1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \MINSEL.minv1_carry__2_i_5_n_0\,
      S(2) => \MINSEL.minv1_carry__2_i_6_n_0\,
      S(1) => \MINSEL.minv1_carry__2_i_7_n_0\,
      S(0) => \MINSEL.minv1_carry__2_i_8_n_0\
    );
\MINSEL.minv1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(31),
      I1 => t2(31),
      I2 => t3(30),
      I3 => t2(30),
      O => \MINSEL.minv1_carry__2_i_1_n_0\
    );
\MINSEL.minv1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(29),
      I1 => t2(29),
      I2 => t3(28),
      I3 => t2(28),
      O => \MINSEL.minv1_carry__2_i_2_n_0\
    );
\MINSEL.minv1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(27),
      I1 => t2(27),
      I2 => t3(26),
      I3 => t2(26),
      O => \MINSEL.minv1_carry__2_i_3_n_0\
    );
\MINSEL.minv1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(25),
      I1 => t2(25),
      I2 => t3(24),
      I3 => t2(24),
      O => \MINSEL.minv1_carry__2_i_4_n_0\
    );
\MINSEL.minv1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(31),
      I1 => t2(31),
      I2 => t3(30),
      I3 => t2(30),
      O => \MINSEL.minv1_carry__2_i_5_n_0\
    );
\MINSEL.minv1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(29),
      I1 => t2(29),
      I2 => t3(28),
      I3 => t2(28),
      O => \MINSEL.minv1_carry__2_i_6_n_0\
    );
\MINSEL.minv1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(27),
      I1 => t2(27),
      I2 => t3(26),
      I3 => t2(26),
      O => \MINSEL.minv1_carry__2_i_7_n_0\
    );
\MINSEL.minv1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(25),
      I1 => t2(25),
      I2 => t3(24),
      I3 => t2(24),
      O => \MINSEL.minv1_carry__2_i_8_n_0\
    );
\MINSEL.minv1_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(7),
      I1 => t2(7),
      I2 => t3(6),
      I3 => t2(6),
      O => \MINSEL.minv1_carry_i_1_n_0\
    );
\MINSEL.minv1_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(5),
      I1 => t2(5),
      I2 => t3(4),
      I3 => t2(4),
      O => \MINSEL.minv1_carry_i_2_n_0\
    );
\MINSEL.minv1_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(3),
      I1 => t2(3),
      I2 => t3(2),
      I3 => t2(2),
      O => \MINSEL.minv1_carry_i_3_n_0\
    );
\MINSEL.minv1_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(1),
      I1 => t2(1),
      I2 => t3(0),
      I3 => t2(0),
      O => \MINSEL.minv1_carry_i_4_n_0\
    );
\MINSEL.minv1_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(7),
      I1 => t2(7),
      I2 => t3(6),
      I3 => t2(6),
      O => \MINSEL.minv1_carry_i_5_n_0\
    );
\MINSEL.minv1_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(5),
      I1 => t2(5),
      I2 => t3(4),
      I3 => t2(4),
      O => \MINSEL.minv1_carry_i_6_n_0\
    );
\MINSEL.minv1_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(3),
      I1 => t2(3),
      I2 => t3(2),
      I3 => t2(2),
      O => \MINSEL.minv1_carry_i_7_n_0\
    );
\MINSEL.minv1_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(1),
      I1 => t2(1),
      I2 => t3(0),
      I3 => t2(0),
      O => \MINSEL.minv1_carry_i_8_n_0\
    );
bench_done_latched_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000A8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => bench_done,
      I2 => data0(1),
      I3 => bench_done_latched_reg,
      I4 => bench_done_latched_reg_0,
      O => s_axi_aresetn_0
    );
bench_st_running_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => start,
      I1 => bench_done,
      I2 => data0(0),
      O => winner_valid_reg_0
    );
cond_cycle_acc0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cond_cycle_acc0_carry_n_0,
      CO(2) => cond_cycle_acc0_carry_n_1,
      CO(1) => cond_cycle_acc0_carry_n_2,
      CO(0) => cond_cycle_acc0_carry_n_3,
      CYINIT => \cond_cycle_acc_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in15(4 downto 1),
      S(3) => \cond_cycle_acc_reg_n_0_[4]\,
      S(2) => \cond_cycle_acc_reg_n_0_[3]\,
      S(1) => \cond_cycle_acc_reg_n_0_[2]\,
      S(0) => \cond_cycle_acc_reg_n_0_[1]\
    );
\cond_cycle_acc0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cond_cycle_acc0_carry_n_0,
      CO(3) => \cond_cycle_acc0_carry__0_n_0\,
      CO(2) => \cond_cycle_acc0_carry__0_n_1\,
      CO(1) => \cond_cycle_acc0_carry__0_n_2\,
      CO(0) => \cond_cycle_acc0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in15(8 downto 5),
      S(3) => \cond_cycle_acc_reg_n_0_[8]\,
      S(2) => \cond_cycle_acc_reg_n_0_[7]\,
      S(1) => \cond_cycle_acc_reg_n_0_[6]\,
      S(0) => \cond_cycle_acc_reg_n_0_[5]\
    );
\cond_cycle_acc0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cond_cycle_acc0_carry__0_n_0\,
      CO(3) => \cond_cycle_acc0_carry__1_n_0\,
      CO(2) => \cond_cycle_acc0_carry__1_n_1\,
      CO(1) => \cond_cycle_acc0_carry__1_n_2\,
      CO(0) => \cond_cycle_acc0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in15(12 downto 9),
      S(3) => \cond_cycle_acc_reg_n_0_[12]\,
      S(2) => \cond_cycle_acc_reg_n_0_[11]\,
      S(1) => \cond_cycle_acc_reg_n_0_[10]\,
      S(0) => \cond_cycle_acc_reg_n_0_[9]\
    );
\cond_cycle_acc0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cond_cycle_acc0_carry__1_n_0\,
      CO(3) => \cond_cycle_acc0_carry__2_n_0\,
      CO(2) => \cond_cycle_acc0_carry__2_n_1\,
      CO(1) => \cond_cycle_acc0_carry__2_n_2\,
      CO(0) => \cond_cycle_acc0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in15(16 downto 13),
      S(3) => \cond_cycle_acc_reg_n_0_[16]\,
      S(2) => \cond_cycle_acc_reg_n_0_[15]\,
      S(1) => \cond_cycle_acc_reg_n_0_[14]\,
      S(0) => \cond_cycle_acc_reg_n_0_[13]\
    );
\cond_cycle_acc0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cond_cycle_acc0_carry__2_n_0\,
      CO(3) => \cond_cycle_acc0_carry__3_n_0\,
      CO(2) => \cond_cycle_acc0_carry__3_n_1\,
      CO(1) => \cond_cycle_acc0_carry__3_n_2\,
      CO(0) => \cond_cycle_acc0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in15(20 downto 17),
      S(3) => \cond_cycle_acc_reg_n_0_[20]\,
      S(2) => \cond_cycle_acc_reg_n_0_[19]\,
      S(1) => \cond_cycle_acc_reg_n_0_[18]\,
      S(0) => \cond_cycle_acc_reg_n_0_[17]\
    );
\cond_cycle_acc0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cond_cycle_acc0_carry__3_n_0\,
      CO(3) => \cond_cycle_acc0_carry__4_n_0\,
      CO(2) => \cond_cycle_acc0_carry__4_n_1\,
      CO(1) => \cond_cycle_acc0_carry__4_n_2\,
      CO(0) => \cond_cycle_acc0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in15(24 downto 21),
      S(3) => \cond_cycle_acc_reg_n_0_[24]\,
      S(2) => \cond_cycle_acc_reg_n_0_[23]\,
      S(1) => \cond_cycle_acc_reg_n_0_[22]\,
      S(0) => \cond_cycle_acc_reg_n_0_[21]\
    );
\cond_cycle_acc0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cond_cycle_acc0_carry__4_n_0\,
      CO(3) => \cond_cycle_acc0_carry__5_n_0\,
      CO(2) => \cond_cycle_acc0_carry__5_n_1\,
      CO(1) => \cond_cycle_acc0_carry__5_n_2\,
      CO(0) => \cond_cycle_acc0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in15(28 downto 25),
      S(3) => \cond_cycle_acc_reg_n_0_[28]\,
      S(2) => \cond_cycle_acc_reg_n_0_[27]\,
      S(1) => \cond_cycle_acc_reg_n_0_[26]\,
      S(0) => \cond_cycle_acc_reg_n_0_[25]\
    );
\cond_cycle_acc0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cond_cycle_acc0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_cond_cycle_acc0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cond_cycle_acc0_carry__6_n_2\,
      CO(0) => \cond_cycle_acc0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cond_cycle_acc0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in15(31 downto 29),
      S(3) => '0',
      S(2) => \cond_cycle_acc_reg_n_0_[31]\,
      S(1) => \cond_cycle_acc_reg_n_0_[30]\,
      S(0) => \cond_cycle_acc_reg_n_0_[29]\
    );
\cond_cycle_acc[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => \cond_cycle_acc_reg_n_0_[0]\,
      O => cond_cycle_acc(0)
    );
\cond_cycle_acc[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(10),
      O => cond_cycle_acc(10)
    );
\cond_cycle_acc[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(11),
      O => cond_cycle_acc(11)
    );
\cond_cycle_acc[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(12),
      O => cond_cycle_acc(12)
    );
\cond_cycle_acc[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(13),
      O => cond_cycle_acc(13)
    );
\cond_cycle_acc[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(14),
      O => cond_cycle_acc(14)
    );
\cond_cycle_acc[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(15),
      O => cond_cycle_acc(15)
    );
\cond_cycle_acc[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(16),
      O => cond_cycle_acc(16)
    );
\cond_cycle_acc[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(17),
      O => cond_cycle_acc(17)
    );
\cond_cycle_acc[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(18),
      O => cond_cycle_acc(18)
    );
\cond_cycle_acc[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(19),
      O => cond_cycle_acc(19)
    );
\cond_cycle_acc[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(1),
      O => cond_cycle_acc(1)
    );
\cond_cycle_acc[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(20),
      O => cond_cycle_acc(20)
    );
\cond_cycle_acc[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(21),
      O => cond_cycle_acc(21)
    );
\cond_cycle_acc[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(22),
      O => cond_cycle_acc(22)
    );
\cond_cycle_acc[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(23),
      O => cond_cycle_acc(23)
    );
\cond_cycle_acc[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(24),
      O => cond_cycle_acc(24)
    );
\cond_cycle_acc[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(25),
      O => cond_cycle_acc(25)
    );
\cond_cycle_acc[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(26),
      O => cond_cycle_acc(26)
    );
\cond_cycle_acc[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(27),
      O => cond_cycle_acc(27)
    );
\cond_cycle_acc[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(28),
      O => cond_cycle_acc(28)
    );
\cond_cycle_acc[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(29),
      O => cond_cycle_acc(29)
    );
\cond_cycle_acc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(2),
      O => cond_cycle_acc(2)
    );
\cond_cycle_acc[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(30),
      O => cond_cycle_acc(30)
    );
\cond_cycle_acc[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4A044AA44AA44AA4"
    )
        port map (
      I0 => st(0),
      I1 => start,
      I2 => st(2),
      I3 => st(1),
      I4 => \cond_idx_reg_n_0_[0]\,
      I5 => \cond_idx_reg_n_0_[1]\,
      O => \cond_cycle_acc[31]_i_1_n_0\
    );
\cond_cycle_acc[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(31),
      O => cond_cycle_acc(31)
    );
\cond_cycle_acc[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(3),
      O => cond_cycle_acc(3)
    );
\cond_cycle_acc[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(4),
      O => cond_cycle_acc(4)
    );
\cond_cycle_acc[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(5),
      O => cond_cycle_acc(5)
    );
\cond_cycle_acc[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(6),
      O => cond_cycle_acc(6)
    );
\cond_cycle_acc[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(7),
      O => cond_cycle_acc(7)
    );
\cond_cycle_acc[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(8),
      O => cond_cycle_acc(8)
    );
\cond_cycle_acc[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => in15(9),
      O => cond_cycle_acc(9)
    );
\cond_cycle_acc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(0),
      Q => \cond_cycle_acc_reg_n_0_[0]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(10),
      Q => \cond_cycle_acc_reg_n_0_[10]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(11),
      Q => \cond_cycle_acc_reg_n_0_[11]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(12),
      Q => \cond_cycle_acc_reg_n_0_[12]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(13),
      Q => \cond_cycle_acc_reg_n_0_[13]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(14),
      Q => \cond_cycle_acc_reg_n_0_[14]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(15),
      Q => \cond_cycle_acc_reg_n_0_[15]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(16),
      Q => \cond_cycle_acc_reg_n_0_[16]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(17),
      Q => \cond_cycle_acc_reg_n_0_[17]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(18),
      Q => \cond_cycle_acc_reg_n_0_[18]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(19),
      Q => \cond_cycle_acc_reg_n_0_[19]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(1),
      Q => \cond_cycle_acc_reg_n_0_[1]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(20),
      Q => \cond_cycle_acc_reg_n_0_[20]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(21),
      Q => \cond_cycle_acc_reg_n_0_[21]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(22),
      Q => \cond_cycle_acc_reg_n_0_[22]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(23),
      Q => \cond_cycle_acc_reg_n_0_[23]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(24),
      Q => \cond_cycle_acc_reg_n_0_[24]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(25),
      Q => \cond_cycle_acc_reg_n_0_[25]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(26),
      Q => \cond_cycle_acc_reg_n_0_[26]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(27),
      Q => \cond_cycle_acc_reg_n_0_[27]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(28),
      Q => \cond_cycle_acc_reg_n_0_[28]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(29),
      Q => \cond_cycle_acc_reg_n_0_[29]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(2),
      Q => \cond_cycle_acc_reg_n_0_[2]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(30),
      Q => \cond_cycle_acc_reg_n_0_[30]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(31),
      Q => \cond_cycle_acc_reg_n_0_[31]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(3),
      Q => \cond_cycle_acc_reg_n_0_[3]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(4),
      Q => \cond_cycle_acc_reg_n_0_[4]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(5),
      Q => \cond_cycle_acc_reg_n_0_[5]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(6),
      Q => \cond_cycle_acc_reg_n_0_[6]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(7),
      Q => \cond_cycle_acc_reg_n_0_[7]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(8),
      Q => \cond_cycle_acc_reg_n_0_[8]\,
      R => \^rst\
    );
\cond_cycle_acc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \cond_cycle_acc[31]_i_1_n_0\,
      D => cond_cycle_acc(9),
      Q => \cond_cycle_acc_reg_n_0_[9]\,
      R => \^rst\
    );
\cond_idx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CBCCCBCC0CC0CCCC"
    )
        port map (
      I0 => \cond_idx_reg_n_0_[1]\,
      I1 => \cond_idx_reg_n_0_[0]\,
      I2 => st(1),
      I3 => st(2),
      I4 => start,
      I5 => st(0),
      O => \cond_idx[0]_i_1_n_0\
    );
\cond_idx[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAEAA0AA0AAAA"
    )
        port map (
      I0 => \cond_idx_reg_n_0_[1]\,
      I1 => \cond_idx_reg_n_0_[0]\,
      I2 => st(1),
      I3 => st(2),
      I4 => start,
      I5 => st(0),
      O => \cond_idx[1]_i_1_n_0\
    );
\cond_idx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cond_idx[0]_i_1_n_0\,
      Q => \cond_idx_reg_n_0_[0]\,
      R => \^rst\
    );
\cond_idx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \cond_idx[1]_i_1_n_0\,
      Q => \cond_idx_reg_n_0_[1]\,
      R => \^rst\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(15),
      I1 => t1(15),
      I2 => t3(14),
      I3 => t1(14),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(13),
      I1 => t1(13),
      I2 => t3(12),
      I3 => t1(12),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(11),
      I1 => t1(11),
      I2 => t3(10),
      I3 => t1(10),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(9),
      I1 => t1(9),
      I2 => t3(8),
      I3 => t1(8),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(15),
      I1 => t1(15),
      I2 => t3(14),
      I3 => t1(14),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(13),
      I1 => t1(13),
      I2 => t3(12),
      I3 => t1(12),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(11),
      I1 => t1(11),
      I2 => t3(10),
      I3 => t1(10),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(9),
      I1 => t1(9),
      I2 => t3(8),
      I3 => t1(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(23),
      I1 => t1(23),
      I2 => t3(22),
      I3 => t1(22),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(21),
      I1 => t1(21),
      I2 => t3(20),
      I3 => t1(20),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(19),
      I1 => t1(19),
      I2 => t3(18),
      I3 => t1(18),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(17),
      I1 => t1(17),
      I2 => t3(16),
      I3 => t1(16),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(23),
      I1 => t1(23),
      I2 => t3(22),
      I3 => t1(22),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(21),
      I1 => t1(21),
      I2 => t3(20),
      I3 => t1(20),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(19),
      I1 => t1(19),
      I2 => t3(18),
      I3 => t1(18),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(17),
      I1 => t1(17),
      I2 => t3(16),
      I3 => t1(16),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(31),
      I1 => t1(31),
      I2 => t3(30),
      I3 => t1(30),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(29),
      I1 => t1(29),
      I2 => t3(28),
      I3 => t1(28),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(27),
      I1 => t1(27),
      I2 => t3(26),
      I3 => t1(26),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(25),
      I1 => t1(25),
      I2 => t3(24),
      I3 => t1(24),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(31),
      I1 => t1(31),
      I2 => t3(30),
      I3 => t1(30),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(29),
      I1 => t1(29),
      I2 => t3(28),
      I3 => t1(28),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(27),
      I1 => t1(27),
      I2 => t3(26),
      I3 => t1(26),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(25),
      I1 => t1(25),
      I2 => t3(24),
      I3 => t1(24),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(7),
      I1 => t1(7),
      I2 => t3(6),
      I3 => t1(6),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(5),
      I1 => t1(5),
      I2 => t3(4),
      I3 => t1(4),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(3),
      I1 => t1(3),
      I2 => t3(2),
      I3 => t1(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t3(1),
      I1 => t1(1),
      I2 => t3(0),
      I3 => t1(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(7),
      I1 => t1(7),
      I2 => t3(6),
      I3 => t1(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(5),
      I1 => t1(5),
      I2 => t3(4),
      I3 => t1(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(3),
      I1 => t1(3),
      I2 => t3(2),
      I3 => t1(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t3(1),
      I1 => t1(1),
      I2 => t3(0),
      I3 => t1(0),
      O => \i__carry_i_8_n_0\
    );
\led[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bench_done,
      I1 => \winner_onehot_latched_reg_n_0_[2]\,
      O => led(0)
    );
\led[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bench_done,
      I1 => \winner_onehot_latched_reg_n_0_[3]\,
      O => led(1)
    );
\led[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bench_done,
      I1 => \winner_onehot_latched_reg_n_0_[1]\,
      O => led(2)
    );
\led[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bench_done,
      I1 => \winner_onehot_latched_reg_n_0_[0]\,
      O => led(3)
    );
\op_idx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => st(0),
      I1 => st(2),
      I2 => st(1),
      I3 => \op_idx_reg_n_0_[0]\,
      O => op_idx(0)
    );
\op_idx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040400"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => st(0),
      I3 => \op_idx_reg_n_0_[0]\,
      I4 => \op_idx_reg_n_0_[1]\,
      O => op_idx(1)
    );
\op_idx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040404000000"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => st(0),
      I3 => \op_idx_reg_n_0_[1]\,
      I4 => \op_idx_reg_n_0_[0]\,
      I5 => \op_idx_reg_n_0_[2]\,
      O => op_idx(2)
    );
\op_idx[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00000AACC00AA"
    )
        port map (
      I0 => start,
      I1 => \op_idx[3]_i_3_n_0\,
      I2 => \FSM_sequential_st[1]_i_2_n_0\,
      I3 => st(1),
      I4 => st(2),
      I5 => st(0),
      O => \op_idx[3]_i_1_n_0\
    );
\op_idx[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F800000"
    )
        port map (
      I0 => \op_idx_reg_n_0_[0]\,
      I1 => \op_idx_reg_n_0_[1]\,
      I2 => \op_idx_reg_n_0_[2]\,
      I3 => \op_idx_reg_n_0_[3]\,
      I4 => winner_valid,
      I5 => st(0),
      O => op_idx(3)
    );
\op_idx[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \op_idx_reg_n_0_[1]\,
      I1 => \op_idx_reg_n_0_[0]\,
      I2 => \op_idx_reg_n_0_[3]\,
      I3 => \op_idx_reg_n_0_[2]\,
      O => \op_idx[3]_i_3_n_0\
    );
\op_idx[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      O => winner_valid
    );
\op_idx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \op_idx[3]_i_1_n_0\,
      D => op_idx(0),
      Q => \op_idx_reg_n_0_[0]\,
      R => \^rst\
    );
\op_idx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \op_idx[3]_i_1_n_0\,
      D => op_idx(1),
      Q => \op_idx_reg_n_0_[1]\,
      R => \^rst\
    );
\op_idx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \op_idx[3]_i_1_n_0\,
      D => op_idx(2),
      Q => \op_idx_reg_n_0_[2]\,
      R => \^rst\
    );
\op_idx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \op_idx[3]_i_1_n_0\,
      D => op_idx(3),
      Q => \op_idx_reg_n_0_[3]\,
      R => \^rst\
    );
p_0_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_out_carry_n_0,
      CO(2) => p_0_out_carry_n_1,
      CO(1) => p_0_out_carry_n_2,
      CO(0) => p_0_out_carry_n_3,
      CYINIT => '1',
      DI(3) => p_0_out_carry_i_1_n_0,
      DI(2) => p_0_out_carry_i_2_n_0,
      DI(1) => p_0_out_carry_i_3_n_0,
      DI(0) => p_0_out_carry_i_4_n_0,
      O(3 downto 0) => NLW_p_0_out_carry_O_UNCONNECTED(3 downto 0),
      S(3) => p_0_out_carry_i_5_n_0,
      S(2) => p_0_out_carry_i_6_n_0,
      S(1) => p_0_out_carry_i_7_n_0,
      S(0) => p_0_out_carry_i_8_n_0
    );
\p_0_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p_0_out_carry_n_0,
      CO(3) => \p_0_out_carry__0_n_0\,
      CO(2) => \p_0_out_carry__0_n_1\,
      CO(1) => \p_0_out_carry__0_n_2\,
      CO(0) => \p_0_out_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \p_0_out_carry__0_i_1_n_0\,
      DI(2) => \p_0_out_carry__0_i_2_n_0\,
      DI(1) => \p_0_out_carry__0_i_3_n_0\,
      DI(0) => \p_0_out_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_p_0_out_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \p_0_out_carry__0_i_5_n_0\,
      S(2) => \p_0_out_carry__0_i_6_n_0\,
      S(1) => \p_0_out_carry__0_i_7_n_0\,
      S(0) => \p_0_out_carry__0_i_8_n_0\
    );
\p_0_out_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(15),
      I1 => t1(15),
      I2 => t2(14),
      I3 => t1(14),
      O => \p_0_out_carry__0_i_1_n_0\
    );
\p_0_out_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(13),
      I1 => t1(13),
      I2 => t2(12),
      I3 => t1(12),
      O => \p_0_out_carry__0_i_2_n_0\
    );
\p_0_out_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(11),
      I1 => t1(11),
      I2 => t2(10),
      I3 => t1(10),
      O => \p_0_out_carry__0_i_3_n_0\
    );
\p_0_out_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(9),
      I1 => t1(9),
      I2 => t2(8),
      I3 => t1(8),
      O => \p_0_out_carry__0_i_4_n_0\
    );
\p_0_out_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(15),
      I1 => t2(15),
      I2 => t1(14),
      I3 => t2(14),
      O => \p_0_out_carry__0_i_5_n_0\
    );
\p_0_out_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(13),
      I1 => t2(13),
      I2 => t1(12),
      I3 => t2(12),
      O => \p_0_out_carry__0_i_6_n_0\
    );
\p_0_out_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(11),
      I1 => t2(11),
      I2 => t1(10),
      I3 => t2(10),
      O => \p_0_out_carry__0_i_7_n_0\
    );
\p_0_out_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(9),
      I1 => t2(9),
      I2 => t1(8),
      I3 => t2(8),
      O => \p_0_out_carry__0_i_8_n_0\
    );
\p_0_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_carry__0_n_0\,
      CO(3) => \p_0_out_carry__1_n_0\,
      CO(2) => \p_0_out_carry__1_n_1\,
      CO(1) => \p_0_out_carry__1_n_2\,
      CO(0) => \p_0_out_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \p_0_out_carry__1_i_1_n_0\,
      DI(2) => \p_0_out_carry__1_i_2_n_0\,
      DI(1) => \p_0_out_carry__1_i_3_n_0\,
      DI(0) => \p_0_out_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_p_0_out_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \p_0_out_carry__1_i_5_n_0\,
      S(2) => \p_0_out_carry__1_i_6_n_0\,
      S(1) => \p_0_out_carry__1_i_7_n_0\,
      S(0) => \p_0_out_carry__1_i_8_n_0\
    );
\p_0_out_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(23),
      I1 => t1(23),
      I2 => t2(22),
      I3 => t1(22),
      O => \p_0_out_carry__1_i_1_n_0\
    );
\p_0_out_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(21),
      I1 => t1(21),
      I2 => t2(20),
      I3 => t1(20),
      O => \p_0_out_carry__1_i_2_n_0\
    );
\p_0_out_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(19),
      I1 => t1(19),
      I2 => t2(18),
      I3 => t1(18),
      O => \p_0_out_carry__1_i_3_n_0\
    );
\p_0_out_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(17),
      I1 => t1(17),
      I2 => t2(16),
      I3 => t1(16),
      O => \p_0_out_carry__1_i_4_n_0\
    );
\p_0_out_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(23),
      I1 => t2(23),
      I2 => t1(22),
      I3 => t2(22),
      O => \p_0_out_carry__1_i_5_n_0\
    );
\p_0_out_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(21),
      I1 => t2(21),
      I2 => t1(20),
      I3 => t2(20),
      O => \p_0_out_carry__1_i_6_n_0\
    );
\p_0_out_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(19),
      I1 => t2(19),
      I2 => t1(18),
      I3 => t2(18),
      O => \p_0_out_carry__1_i_7_n_0\
    );
\p_0_out_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(17),
      I1 => t2(17),
      I2 => t1(16),
      I3 => t2(16),
      O => \p_0_out_carry__1_i_8_n_0\
    );
\p_0_out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_carry__1_n_0\,
      CO(3) => \p_0_out_carry__2_n_0\,
      CO(2) => \p_0_out_carry__2_n_1\,
      CO(1) => \p_0_out_carry__2_n_2\,
      CO(0) => \p_0_out_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \p_0_out_carry__2_i_1_n_0\,
      DI(2) => \p_0_out_carry__2_i_2_n_0\,
      DI(1) => \p_0_out_carry__2_i_3_n_0\,
      DI(0) => \p_0_out_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_p_0_out_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \p_0_out_carry__2_i_5_n_0\,
      S(2) => \p_0_out_carry__2_i_6_n_0\,
      S(1) => \p_0_out_carry__2_i_7_n_0\,
      S(0) => \p_0_out_carry__2_i_8_n_0\
    );
\p_0_out_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(31),
      I1 => t1(31),
      I2 => t2(30),
      I3 => t1(30),
      O => \p_0_out_carry__2_i_1_n_0\
    );
\p_0_out_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(29),
      I1 => t1(29),
      I2 => t2(28),
      I3 => t1(28),
      O => \p_0_out_carry__2_i_2_n_0\
    );
\p_0_out_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(27),
      I1 => t1(27),
      I2 => t2(26),
      I3 => t1(26),
      O => \p_0_out_carry__2_i_3_n_0\
    );
\p_0_out_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(25),
      I1 => t1(25),
      I2 => t2(24),
      I3 => t1(24),
      O => \p_0_out_carry__2_i_4_n_0\
    );
\p_0_out_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(31),
      I1 => t2(31),
      I2 => t1(30),
      I3 => t2(30),
      O => \p_0_out_carry__2_i_5_n_0\
    );
\p_0_out_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(29),
      I1 => t2(29),
      I2 => t1(28),
      I3 => t2(28),
      O => \p_0_out_carry__2_i_6_n_0\
    );
\p_0_out_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(27),
      I1 => t2(27),
      I2 => t1(26),
      I3 => t2(26),
      O => \p_0_out_carry__2_i_7_n_0\
    );
\p_0_out_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(25),
      I1 => t2(25),
      I2 => t1(24),
      I3 => t2(24),
      O => \p_0_out_carry__2_i_8_n_0\
    );
p_0_out_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(7),
      I1 => t1(7),
      I2 => t2(6),
      I3 => t1(6),
      O => p_0_out_carry_i_1_n_0
    );
p_0_out_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(5),
      I1 => t1(5),
      I2 => t2(4),
      I3 => t1(4),
      O => p_0_out_carry_i_2_n_0
    );
p_0_out_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(3),
      I1 => t1(3),
      I2 => t2(2),
      I3 => t1(2),
      O => p_0_out_carry_i_3_n_0
    );
p_0_out_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => t2(1),
      I1 => t1(1),
      I2 => t2(0),
      I3 => t1(0),
      O => p_0_out_carry_i_4_n_0
    );
p_0_out_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(7),
      I1 => t2(7),
      I2 => t1(6),
      I3 => t2(6),
      O => p_0_out_carry_i_5_n_0
    );
p_0_out_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(5),
      I1 => t2(5),
      I2 => t1(4),
      I3 => t2(4),
      O => p_0_out_carry_i_6_n_0
    );
p_0_out_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(3),
      I1 => t2(3),
      I2 => t1(2),
      I3 => t2(2),
      O => p_0_out_carry_i_7_n_0
    );
p_0_out_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => t1(1),
      I1 => t2(1),
      I2 => t1(0),
      I3 => t2(0),
      O => p_0_out_carry_i_8_n_0
    );
\p_0_out_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_0_out_inferred__0/i__carry_n_0\,
      CO(2) => \p_0_out_inferred__0/i__carry_n_1\,
      CO(1) => \p_0_out_inferred__0/i__carry_n_2\,
      CO(0) => \p_0_out_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_p_0_out_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\p_0_out_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_inferred__0/i__carry_n_0\,
      CO(3) => \p_0_out_inferred__0/i__carry__0_n_0\,
      CO(2) => \p_0_out_inferred__0/i__carry__0_n_1\,
      CO(1) => \p_0_out_inferred__0/i__carry__0_n_2\,
      CO(0) => \p_0_out_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_p_0_out_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\p_0_out_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_inferred__0/i__carry__0_n_0\,
      CO(3) => \p_0_out_inferred__0/i__carry__1_n_0\,
      CO(2) => \p_0_out_inferred__0/i__carry__1_n_1\,
      CO(1) => \p_0_out_inferred__0/i__carry__1_n_2\,
      CO(0) => \p_0_out_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_p_0_out_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\p_0_out_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_inferred__0/i__carry__1_n_0\,
      CO(3) => \p_0_out_inferred__0/i__carry__2_n_0\,
      CO(2) => \p_0_out_inferred__0/i__carry__2_n_1\,
      CO(1) => \p_0_out_inferred__0/i__carry__2_n_2\,
      CO(0) => \p_0_out_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_p_0_out_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\r_cond[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => st(1),
      I1 => st(0),
      I2 => st(2),
      O => r_cond
    );
\r_cond_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_cond,
      D => \cond_idx_reg_n_0_[0]\,
      Q => \r_cond_reg_n_0_[0]\,
      R => \^rst\
    );
\r_cond_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_cond,
      D => \cond_idx_reg_n_0_[1]\,
      Q => \r_cond_reg_n_0_[1]\,
      R => \^rst\
    );
\r_opcode[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \op_idx_reg_n_0_[0]\,
      I1 => \op_idx_reg_n_0_[3]\,
      O => ops(0)
    );
\r_opcode[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \op_idx_reg_n_0_[1]\,
      I1 => \op_idx_reg_n_0_[3]\,
      O => ops(1)
    );
\r_opcode[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \op_idx_reg_n_0_[2]\,
      I1 => \op_idx_reg_n_0_[3]\,
      O => ops(2)
    );
\r_opcode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_cond,
      D => ops(0),
      Q => r_opcode(0),
      R => \^rst\
    );
\r_opcode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_cond,
      D => ops(1),
      Q => r_opcode(1),
      R => \^rst\
    );
\r_opcode_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_cond,
      D => ops(2),
      Q => r_opcode(2),
      R => \^rst\
    );
\r_opcode_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => r_cond,
      D => \op_idx_reg_n_0_[3]\,
      Q => r_opcode(3),
      R => \^rst\
    );
r_start_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => st(2),
      I1 => st(1),
      I2 => st(0),
      O => r_start
    );
r_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => r_start,
      Q => r_start_reg_n_0,
      R => \^rst\
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \s_axi_rdata[0]_i_2_n_0\,
      I1 => data0(0),
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \winner_onehot_latched_reg_n_0_[0]\,
      I4 => \s_axi_rdata[3]_i_4_n_0\,
      I5 => \s_axi_rdata[0]_i_3_n_0\,
      O => D(0)
    );
\s_axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(0),
      I1 => t2(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[0]_i_2_n_0\
    );
\s_axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000CA000000000"
    )
        port map (
      I0 => t1(0),
      I1 => t3(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[0]_i_3_n_0\
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(10),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(10),
      I4 => \s_axi_rdata[10]_i_2_n_0\,
      O => D(10)
    );
\s_axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(10),
      I1 => t2(10),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[10]_i_2_n_0\
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(11),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(11),
      I4 => \s_axi_rdata[11]_i_2_n_0\,
      O => D(11)
    );
\s_axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(11),
      I1 => t2(11),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[11]_i_2_n_0\
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(12),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(12),
      I4 => \s_axi_rdata[12]_i_2_n_0\,
      O => D(12)
    );
\s_axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(12),
      I1 => t2(12),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[12]_i_2_n_0\
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(13),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(13),
      I4 => \s_axi_rdata[13]_i_2_n_0\,
      O => D(13)
    );
\s_axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(13),
      I1 => t2(13),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[13]_i_2_n_0\
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(14),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(14),
      I4 => \s_axi_rdata[14]_i_2_n_0\,
      O => D(14)
    );
\s_axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(14),
      I1 => t2(14),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[14]_i_2_n_0\
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(15),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(15),
      I4 => \s_axi_rdata[15]_i_2_n_0\,
      O => D(15)
    );
\s_axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(15),
      I1 => t2(15),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[15]_i_2_n_0\
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(16),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(16),
      I4 => \s_axi_rdata[16]_i_2_n_0\,
      O => D(16)
    );
\s_axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(16),
      I1 => t2(16),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[16]_i_2_n_0\
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(17),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(17),
      I4 => \s_axi_rdata[17]_i_2_n_0\,
      O => D(17)
    );
\s_axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(17),
      I1 => t2(17),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[17]_i_2_n_0\
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(18),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(18),
      I4 => \s_axi_rdata[18]_i_2_n_0\,
      O => D(18)
    );
\s_axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(18),
      I1 => t2(18),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[18]_i_2_n_0\
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(19),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(19),
      I4 => \s_axi_rdata[19]_i_2_n_0\,
      O => D(19)
    );
\s_axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(19),
      I1 => t2(19),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[19]_i_2_n_0\
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \s_axi_rdata[1]_i_2_n_0\,
      I1 => data0(1),
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \winner_onehot_latched_reg_n_0_[1]\,
      I4 => \s_axi_rdata[3]_i_4_n_0\,
      I5 => \s_axi_rdata[1]_i_3_n_0\,
      O => D(1)
    );
\s_axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(1),
      I1 => t2(1),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[1]_i_2_n_0\
    );
\s_axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000CA000000000"
    )
        port map (
      I0 => t1(1),
      I1 => t3(1),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[1]_i_3_n_0\
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(20),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(20),
      I4 => \s_axi_rdata[20]_i_2_n_0\,
      O => D(20)
    );
\s_axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(20),
      I1 => t2(20),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[20]_i_2_n_0\
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(21),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(21),
      I4 => \s_axi_rdata[21]_i_2_n_0\,
      O => D(21)
    );
\s_axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(21),
      I1 => t2(21),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[21]_i_2_n_0\
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(22),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(22),
      I4 => \s_axi_rdata[22]_i_2_n_0\,
      O => D(22)
    );
\s_axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(22),
      I1 => t2(22),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[22]_i_2_n_0\
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(23),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(23),
      I4 => \s_axi_rdata[23]_i_2_n_0\,
      O => D(23)
    );
\s_axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(23),
      I1 => t2(23),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[23]_i_2_n_0\
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(24),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(24),
      I4 => \s_axi_rdata[24]_i_2_n_0\,
      O => D(24)
    );
\s_axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(24),
      I1 => t2(24),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[24]_i_2_n_0\
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(25),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(25),
      I4 => \s_axi_rdata[25]_i_2_n_0\,
      O => D(25)
    );
\s_axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(25),
      I1 => t2(25),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[25]_i_2_n_0\
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(26),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(26),
      I4 => \s_axi_rdata[26]_i_2_n_0\,
      O => D(26)
    );
\s_axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(26),
      I1 => t2(26),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[26]_i_2_n_0\
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(27),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(27),
      I4 => \s_axi_rdata[27]_i_2_n_0\,
      O => D(27)
    );
\s_axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(27),
      I1 => t2(27),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[27]_i_2_n_0\
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(28),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(28),
      I4 => \s_axi_rdata[28]_i_2_n_0\,
      O => D(28)
    );
\s_axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(28),
      I1 => t2(28),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[28]_i_2_n_0\
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(29),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(29),
      I4 => \s_axi_rdata[29]_i_2_n_0\,
      O => D(29)
    );
\s_axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(29),
      I1 => t2(29),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[29]_i_2_n_0\
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \s_axi_rdata[2]_i_2_n_0\,
      I1 => winner_code(0),
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \winner_onehot_latched_reg_n_0_[2]\,
      I4 => \s_axi_rdata[3]_i_4_n_0\,
      I5 => \s_axi_rdata[2]_i_3_n_0\,
      O => D(2)
    );
\s_axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(2),
      I1 => t2(2),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[2]_i_2_n_0\
    );
\s_axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000CA000000000"
    )
        port map (
      I0 => t1(2),
      I1 => t3(2),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[2]_i_3_n_0\
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(30),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(30),
      I4 => \s_axi_rdata[30]_i_3_n_0\,
      O => D(30)
    );
\s_axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(30),
      I1 => t2(30),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[30]_i_3_n_0\
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[31]\,
      I1 => t0(31),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(31),
      I4 => \s_axi_rdata[31]_i_5_n_0\,
      O => D(31)
    );
\s_axi_rdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A0000000C00"
    )
        port map (
      I0 => t3(31),
      I1 => t2(31),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[31]_i_5_n_0\
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \s_axi_rdata[3]_i_2_n_0\,
      I1 => winner_code(1),
      I2 => \s_axi_rdata_reg[0]\,
      I3 => \winner_onehot_latched_reg_n_0_[3]\,
      I4 => \s_axi_rdata[3]_i_4_n_0\,
      I5 => \s_axi_rdata[3]_i_5_n_0\,
      O => D(3)
    );
\s_axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(3),
      I1 => t2(3),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[3]_i_2_n_0\
    );
\s_axi_rdata[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => bench_done,
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(1),
      O => \s_axi_rdata[3]_i_4_n_0\
    );
\s_axi_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000CA000000000"
    )
        port map (
      I0 => t1(3),
      I1 => t3(3),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[3]_i_5_n_0\
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(4),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(4),
      I4 => \s_axi_rdata[4]_i_2_n_0\,
      O => D(4)
    );
\s_axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(4),
      I1 => t2(4),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[4]_i_2_n_0\
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(5),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(5),
      I4 => \s_axi_rdata[5]_i_2_n_0\,
      O => D(5)
    );
\s_axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(5),
      I1 => t2(5),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[5]_i_2_n_0\
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(6),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(6),
      I4 => \s_axi_rdata[6]_i_2_n_0\,
      O => D(6)
    );
\s_axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(6),
      I1 => t2(6),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[6]_i_2_n_0\
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(7),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(7),
      I4 => \s_axi_rdata[7]_i_2_n_0\,
      O => D(7)
    );
\s_axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(7),
      I1 => t2(7),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[7]_i_2_n_0\
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(8),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(8),
      I4 => \s_axi_rdata[8]_i_2_n_0\,
      O => D(8)
    );
\s_axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(8),
      I1 => t2(8),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[8]_i_2_n_0\
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \s_axi_rdata_reg[4]\,
      I1 => t3(9),
      I2 => \s_axi_rdata_reg[4]_0\,
      I3 => t1(9),
      I4 => \s_axi_rdata[9]_i_2_n_0\,
      O => D(9)
    );
\s_axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => t0(9),
      I1 => t2(9),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(2),
      I4 => s_axi_araddr(3),
      I5 => s_axi_araddr(0),
      O => \s_axi_rdata[9]_i_2_n_0\
    );
\time_cond[0][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEBAA"
    )
        port map (
      I0 => \time_cond[0][31]_i_2_n_0\,
      I1 => st(2),
      I2 => st(1),
      I3 => start,
      I4 => st(0),
      O => \time_cond[0][31]_i_1_n_0\
    );
\time_cond[0][31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \cond_idx_reg_n_0_[1]\,
      I1 => \cond_idx_reg_n_0_[0]\,
      I2 => \time_cond[3][31]_i_3_n_0\,
      O => \time_cond[0][31]_i_2_n_0\
    );
\time_cond[1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F88F8888"
    )
        port map (
      I0 => \time_cond[3][31]_i_3_n_0\,
      I1 => \time_cond[1][31]_i_2_n_0\,
      I2 => st(2),
      I3 => st(1),
      I4 => start,
      I5 => st(0),
      O => \time_cond[1][31]_i_1_n_0\
    );
\time_cond[1][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cond_idx_reg_n_0_[0]\,
      I1 => \cond_idx_reg_n_0_[1]\,
      O => \time_cond[1][31]_i_2_n_0\
    );
\time_cond[2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F88F8888"
    )
        port map (
      I0 => \time_cond[3][31]_i_3_n_0\,
      I1 => \time_cond[2][31]_i_2_n_0\,
      I2 => st(2),
      I3 => st(1),
      I4 => start,
      I5 => st(0),
      O => \time_cond[2][31]_i_1_n_0\
    );
\time_cond[2][31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cond_idx_reg_n_0_[1]\,
      I1 => \cond_idx_reg_n_0_[0]\,
      O => \time_cond[2][31]_i_2_n_0\
    );
\time_cond[3][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[0]\,
      O => time_cond0_in(0)
    );
\time_cond[3][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[10]\,
      O => time_cond0_in(10)
    );
\time_cond[3][11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[11]\,
      O => time_cond0_in(11)
    );
\time_cond[3][12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[12]\,
      O => time_cond0_in(12)
    );
\time_cond[3][13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[13]\,
      O => time_cond0_in(13)
    );
\time_cond[3][14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[14]\,
      O => time_cond0_in(14)
    );
\time_cond[3][15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[15]\,
      O => time_cond0_in(15)
    );
\time_cond[3][16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[16]\,
      O => time_cond0_in(16)
    );
\time_cond[3][17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[17]\,
      O => time_cond0_in(17)
    );
\time_cond[3][18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[18]\,
      O => time_cond0_in(18)
    );
\time_cond[3][19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[19]\,
      O => time_cond0_in(19)
    );
\time_cond[3][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[1]\,
      O => time_cond0_in(1)
    );
\time_cond[3][20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[20]\,
      O => time_cond0_in(20)
    );
\time_cond[3][21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[21]\,
      O => time_cond0_in(21)
    );
\time_cond[3][22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[22]\,
      O => time_cond0_in(22)
    );
\time_cond[3][23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[23]\,
      O => time_cond0_in(23)
    );
\time_cond[3][24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[24]\,
      O => time_cond0_in(24)
    );
\time_cond[3][25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[25]\,
      O => time_cond0_in(25)
    );
\time_cond[3][26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[26]\,
      O => time_cond0_in(26)
    );
\time_cond[3][27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[27]\,
      O => time_cond0_in(27)
    );
\time_cond[3][28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[28]\,
      O => time_cond0_in(28)
    );
\time_cond[3][29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[29]\,
      O => time_cond0_in(29)
    );
\time_cond[3][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[2]\,
      O => time_cond0_in(2)
    );
\time_cond[3][30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[30]\,
      O => time_cond0_in(30)
    );
\time_cond[3][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444F44F4444"
    )
        port map (
      I0 => \FSM_sequential_st[1]_i_2_n_0\,
      I1 => \time_cond[3][31]_i_3_n_0\,
      I2 => st(2),
      I3 => st(1),
      I4 => start,
      I5 => st(0),
      O => \time_cond[3][31]_i_1_n_0\
    );
\time_cond[3][31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[31]\,
      O => time_cond0_in(31)
    );
\time_cond[3][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => st(0),
      I1 => winner_valid,
      I2 => \op_idx_reg_n_0_[2]\,
      I3 => \op_idx_reg_n_0_[3]\,
      I4 => \op_idx_reg_n_0_[0]\,
      I5 => \op_idx_reg_n_0_[1]\,
      O => \time_cond[3][31]_i_3_n_0\
    );
\time_cond[3][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[3]\,
      O => time_cond0_in(3)
    );
\time_cond[3][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[4]\,
      O => time_cond0_in(4)
    );
\time_cond[3][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[5]\,
      O => time_cond0_in(5)
    );
\time_cond[3][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[6]\,
      O => time_cond0_in(6)
    );
\time_cond[3][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[7]\,
      O => time_cond0_in(7)
    );
\time_cond[3][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[8]\,
      O => time_cond0_in(8)
    );
\time_cond[3][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => st(1),
      I1 => st(2),
      I2 => \cond_cycle_acc_reg_n_0_[9]\,
      O => time_cond0_in(9)
    );
\time_cond_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(0),
      Q => t0(0),
      R => \^rst\
    );
\time_cond_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(10),
      Q => t0(10),
      R => \^rst\
    );
\time_cond_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(11),
      Q => t0(11),
      R => \^rst\
    );
\time_cond_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(12),
      Q => t0(12),
      R => \^rst\
    );
\time_cond_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(13),
      Q => t0(13),
      R => \^rst\
    );
\time_cond_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(14),
      Q => t0(14),
      R => \^rst\
    );
\time_cond_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(15),
      Q => t0(15),
      R => \^rst\
    );
\time_cond_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(16),
      Q => t0(16),
      R => \^rst\
    );
\time_cond_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(17),
      Q => t0(17),
      R => \^rst\
    );
\time_cond_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(18),
      Q => t0(18),
      R => \^rst\
    );
\time_cond_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(19),
      Q => t0(19),
      R => \^rst\
    );
\time_cond_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(1),
      Q => t0(1),
      R => \^rst\
    );
\time_cond_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(20),
      Q => t0(20),
      R => \^rst\
    );
\time_cond_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(21),
      Q => t0(21),
      R => \^rst\
    );
\time_cond_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(22),
      Q => t0(22),
      R => \^rst\
    );
\time_cond_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(23),
      Q => t0(23),
      R => \^rst\
    );
\time_cond_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(24),
      Q => t0(24),
      R => \^rst\
    );
\time_cond_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(25),
      Q => t0(25),
      R => \^rst\
    );
\time_cond_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(26),
      Q => t0(26),
      R => \^rst\
    );
\time_cond_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(27),
      Q => t0(27),
      R => \^rst\
    );
\time_cond_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(28),
      Q => t0(28),
      R => \^rst\
    );
\time_cond_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(29),
      Q => t0(29),
      R => \^rst\
    );
\time_cond_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(2),
      Q => t0(2),
      R => \^rst\
    );
\time_cond_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(30),
      Q => t0(30),
      R => \^rst\
    );
\time_cond_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(31),
      Q => t0(31),
      R => \^rst\
    );
\time_cond_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(3),
      Q => t0(3),
      R => \^rst\
    );
\time_cond_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(4),
      Q => t0(4),
      R => \^rst\
    );
\time_cond_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(5),
      Q => t0(5),
      R => \^rst\
    );
\time_cond_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(6),
      Q => t0(6),
      R => \^rst\
    );
\time_cond_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(7),
      Q => t0(7),
      R => \^rst\
    );
\time_cond_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(8),
      Q => t0(8),
      R => \^rst\
    );
\time_cond_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[0][31]_i_1_n_0\,
      D => time_cond0_in(9),
      Q => t0(9),
      R => \^rst\
    );
\time_cond_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(0),
      Q => t1(0),
      R => \^rst\
    );
\time_cond_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(10),
      Q => t1(10),
      R => \^rst\
    );
\time_cond_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(11),
      Q => t1(11),
      R => \^rst\
    );
\time_cond_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(12),
      Q => t1(12),
      R => \^rst\
    );
\time_cond_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(13),
      Q => t1(13),
      R => \^rst\
    );
\time_cond_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(14),
      Q => t1(14),
      R => \^rst\
    );
\time_cond_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(15),
      Q => t1(15),
      R => \^rst\
    );
\time_cond_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(16),
      Q => t1(16),
      R => \^rst\
    );
\time_cond_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(17),
      Q => t1(17),
      R => \^rst\
    );
\time_cond_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(18),
      Q => t1(18),
      R => \^rst\
    );
\time_cond_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(19),
      Q => t1(19),
      R => \^rst\
    );
\time_cond_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(1),
      Q => t1(1),
      R => \^rst\
    );
\time_cond_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(20),
      Q => t1(20),
      R => \^rst\
    );
\time_cond_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(21),
      Q => t1(21),
      R => \^rst\
    );
\time_cond_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(22),
      Q => t1(22),
      R => \^rst\
    );
\time_cond_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(23),
      Q => t1(23),
      R => \^rst\
    );
\time_cond_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(24),
      Q => t1(24),
      R => \^rst\
    );
\time_cond_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(25),
      Q => t1(25),
      R => \^rst\
    );
\time_cond_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(26),
      Q => t1(26),
      R => \^rst\
    );
\time_cond_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(27),
      Q => t1(27),
      R => \^rst\
    );
\time_cond_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(28),
      Q => t1(28),
      R => \^rst\
    );
\time_cond_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(29),
      Q => t1(29),
      R => \^rst\
    );
\time_cond_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(2),
      Q => t1(2),
      R => \^rst\
    );
\time_cond_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(30),
      Q => t1(30),
      R => \^rst\
    );
\time_cond_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(31),
      Q => t1(31),
      R => \^rst\
    );
\time_cond_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(3),
      Q => t1(3),
      R => \^rst\
    );
\time_cond_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(4),
      Q => t1(4),
      R => \^rst\
    );
\time_cond_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(5),
      Q => t1(5),
      R => \^rst\
    );
\time_cond_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(6),
      Q => t1(6),
      R => \^rst\
    );
\time_cond_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(7),
      Q => t1(7),
      R => \^rst\
    );
\time_cond_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(8),
      Q => t1(8),
      R => \^rst\
    );
\time_cond_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[1][31]_i_1_n_0\,
      D => time_cond0_in(9),
      Q => t1(9),
      R => \^rst\
    );
\time_cond_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(0),
      Q => t2(0),
      R => \^rst\
    );
\time_cond_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(10),
      Q => t2(10),
      R => \^rst\
    );
\time_cond_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(11),
      Q => t2(11),
      R => \^rst\
    );
\time_cond_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(12),
      Q => t2(12),
      R => \^rst\
    );
\time_cond_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(13),
      Q => t2(13),
      R => \^rst\
    );
\time_cond_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(14),
      Q => t2(14),
      R => \^rst\
    );
\time_cond_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(15),
      Q => t2(15),
      R => \^rst\
    );
\time_cond_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(16),
      Q => t2(16),
      R => \^rst\
    );
\time_cond_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(17),
      Q => t2(17),
      R => \^rst\
    );
\time_cond_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(18),
      Q => t2(18),
      R => \^rst\
    );
\time_cond_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(19),
      Q => t2(19),
      R => \^rst\
    );
\time_cond_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(1),
      Q => t2(1),
      R => \^rst\
    );
\time_cond_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(20),
      Q => t2(20),
      R => \^rst\
    );
\time_cond_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(21),
      Q => t2(21),
      R => \^rst\
    );
\time_cond_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(22),
      Q => t2(22),
      R => \^rst\
    );
\time_cond_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(23),
      Q => t2(23),
      R => \^rst\
    );
\time_cond_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(24),
      Q => t2(24),
      R => \^rst\
    );
\time_cond_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(25),
      Q => t2(25),
      R => \^rst\
    );
\time_cond_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(26),
      Q => t2(26),
      R => \^rst\
    );
\time_cond_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(27),
      Q => t2(27),
      R => \^rst\
    );
\time_cond_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(28),
      Q => t2(28),
      R => \^rst\
    );
\time_cond_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(29),
      Q => t2(29),
      R => \^rst\
    );
\time_cond_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(2),
      Q => t2(2),
      R => \^rst\
    );
\time_cond_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(30),
      Q => t2(30),
      R => \^rst\
    );
\time_cond_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(31),
      Q => t2(31),
      R => \^rst\
    );
\time_cond_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(3),
      Q => t2(3),
      R => \^rst\
    );
\time_cond_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(4),
      Q => t2(4),
      R => \^rst\
    );
\time_cond_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(5),
      Q => t2(5),
      R => \^rst\
    );
\time_cond_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(6),
      Q => t2(6),
      R => \^rst\
    );
\time_cond_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(7),
      Q => t2(7),
      R => \^rst\
    );
\time_cond_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(8),
      Q => t2(8),
      R => \^rst\
    );
\time_cond_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[2][31]_i_1_n_0\,
      D => time_cond0_in(9),
      Q => t2(9),
      R => \^rst\
    );
\time_cond_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(0),
      Q => t3(0),
      R => \^rst\
    );
\time_cond_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(10),
      Q => t3(10),
      R => \^rst\
    );
\time_cond_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(11),
      Q => t3(11),
      R => \^rst\
    );
\time_cond_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(12),
      Q => t3(12),
      R => \^rst\
    );
\time_cond_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(13),
      Q => t3(13),
      R => \^rst\
    );
\time_cond_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(14),
      Q => t3(14),
      R => \^rst\
    );
\time_cond_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(15),
      Q => t3(15),
      R => \^rst\
    );
\time_cond_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(16),
      Q => t3(16),
      R => \^rst\
    );
\time_cond_reg[3][17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(17),
      Q => t3(17),
      R => \^rst\
    );
\time_cond_reg[3][18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(18),
      Q => t3(18),
      R => \^rst\
    );
\time_cond_reg[3][19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(19),
      Q => t3(19),
      R => \^rst\
    );
\time_cond_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(1),
      Q => t3(1),
      R => \^rst\
    );
\time_cond_reg[3][20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(20),
      Q => t3(20),
      R => \^rst\
    );
\time_cond_reg[3][21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(21),
      Q => t3(21),
      R => \^rst\
    );
\time_cond_reg[3][22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(22),
      Q => t3(22),
      R => \^rst\
    );
\time_cond_reg[3][23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(23),
      Q => t3(23),
      R => \^rst\
    );
\time_cond_reg[3][24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(24),
      Q => t3(24),
      R => \^rst\
    );
\time_cond_reg[3][25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(25),
      Q => t3(25),
      R => \^rst\
    );
\time_cond_reg[3][26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(26),
      Q => t3(26),
      R => \^rst\
    );
\time_cond_reg[3][27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(27),
      Q => t3(27),
      R => \^rst\
    );
\time_cond_reg[3][28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(28),
      Q => t3(28),
      R => \^rst\
    );
\time_cond_reg[3][29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(29),
      Q => t3(29),
      R => \^rst\
    );
\time_cond_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(2),
      Q => t3(2),
      R => \^rst\
    );
\time_cond_reg[3][30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(30),
      Q => t3(30),
      R => \^rst\
    );
\time_cond_reg[3][31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(31),
      Q => t3(31),
      R => \^rst\
    );
\time_cond_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(3),
      Q => t3(3),
      R => \^rst\
    );
\time_cond_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(4),
      Q => t3(4),
      R => \^rst\
    );
\time_cond_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(5),
      Q => t3(5),
      R => \^rst\
    );
\time_cond_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(6),
      Q => t3(6),
      R => \^rst\
    );
\time_cond_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(7),
      Q => t3(7),
      R => \^rst\
    );
\time_cond_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(8),
      Q => t3(8),
      R => \^rst\
    );
\time_cond_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \time_cond[3][31]_i_1_n_0\,
      D => time_cond0_in(9),
      Q => t3(9),
      R => \^rst\
    );
u_router: entity work.router_bd_bench_axi_0_0_router
     port map (
      \FSM_sequential_st_reg[1]\ => \FSM_sequential_st[1]_i_2_n_0\,
      \FSM_sequential_st_reg[2]\ => u_router_n_1,
      \FSM_sequential_st_reg[2]_0\ => u_router_n_2,
      \FSM_sequential_st_reg[2]_1\ => u_router_n_3,
      FSM_sequential_st_reg_0 => r_start_reg_n_0,
      Q(3 downto 0) => r_opcode(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^rst\,
      st(2 downto 0) => st(2 downto 0),
      \st__0\(0) => \st__0\(2),
      start => start,
      start_b12_reg_0(1) => \r_cond_reg_n_0_[1]\,
      start_b12_reg_0(0) => \r_cond_reg_n_0_[0]\
    );
\winner_code[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \p_0_out_carry__2_n_0\,
      I1 => \MINSEL.minv1_carry__2_n_0\,
      I2 => \MINSEL.idx1_carry__2_n_0\,
      O => \MINSEL.idx\(0)
    );
\winner_code[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001D"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => \MINSEL.minv1_carry__2_n_0\,
      I2 => \p_0_out_carry__2_n_0\,
      I3 => \MINSEL.idx1_carry__2_n_0\,
      O => \MINSEL.idx\(1)
    );
\winner_code_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => winner_onehot_latched,
      D => \MINSEL.idx\(0),
      Q => winner_code(0),
      R => \^rst\
    );
\winner_code_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => winner_onehot_latched,
      D => \MINSEL.idx\(1),
      Q => winner_code(1),
      R => \^rst\
    );
\winner_onehot_latched[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \MINSEL.idx1_carry__2_n_0\,
      O => \winner_onehot_latched[0]_i_1_n_0\
    );
\winner_onehot_latched[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => \MINSEL.idx1_carry__2_n_0\,
      I1 => \p_0_out_carry__2_n_0\,
      I2 => \MINSEL.minv1_carry__2_n_0\,
      I3 => \p_0_out_inferred__0/i__carry__2_n_0\,
      O => \winner_onehot_latched[1]_i_1_n_0\
    );
\winner_onehot_latched[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \MINSEL.idx1_carry__2_n_0\,
      I1 => \p_0_out_carry__2_n_0\,
      I2 => \MINSEL.minv1_carry__2_n_0\,
      O => \winner_onehot_latched[2]_i_1_n_0\
    );
\winner_onehot_latched[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => st(0),
      I1 => st(2),
      I2 => st(1),
      I3 => \cond_idx_reg_n_0_[0]\,
      I4 => \cond_idx_reg_n_0_[1]\,
      O => winner_onehot_latched
    );
\winner_onehot_latched[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \p_0_out_inferred__0/i__carry__2_n_0\,
      I1 => \MINSEL.minv1_carry__2_n_0\,
      I2 => \MINSEL.idx1_carry__2_n_0\,
      O => \winner_onehot_latched[3]_i_2_n_0\
    );
\winner_onehot_latched_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => winner_onehot_latched,
      D => \winner_onehot_latched[0]_i_1_n_0\,
      Q => \winner_onehot_latched_reg_n_0_[0]\,
      R => \^rst\
    );
\winner_onehot_latched_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => winner_onehot_latched,
      D => \winner_onehot_latched[1]_i_1_n_0\,
      Q => \winner_onehot_latched_reg_n_0_[1]\,
      R => \^rst\
    );
\winner_onehot_latched_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => winner_onehot_latched,
      D => \winner_onehot_latched[2]_i_1_n_0\,
      Q => \winner_onehot_latched_reg_n_0_[2]\,
      R => \^rst\
    );
\winner_onehot_latched_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => winner_onehot_latched,
      D => \winner_onehot_latched[3]_i_2_n_0\,
      Q => \winner_onehot_latched_reg_n_0_[3]\,
      R => \^rst\
    );
winner_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"51FF555000AA0000"
    )
        port map (
      I0 => winner_onehot_latched,
      I1 => start,
      I2 => st(0),
      I3 => st(1),
      I4 => st(2),
      I5 => bench_done,
      O => winner_valid_i_1_n_0
    );
winner_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => winner_valid_i_1_n_0,
      Q => bench_done,
      R => \^rst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity router_bd_bench_axi_0_0_router_bench_axi is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of router_bd_bench_axi_0_0_router_bench_axi : entity is "router_bench_axi";
end router_bd_bench_axi_0_0_router_bench_axi;

architecture STRUCTURE of router_bd_bench_axi_0_0_router_bench_axi is
  signal data0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pwrup_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pwrup_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \pwrup_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \pwrup_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal pwrup_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pwrup_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pwrup_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pwrup_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pwrup_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pwrup_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pwrup_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pwrup_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pwrup_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pwrup_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pwrup_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pwrup_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pwrup_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pwrup_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pwrup_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pwrup_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pwrup_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pwrup_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pwrup_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pwrup_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pwrup_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pwrup_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pwrup_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pwrup_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pwrup_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pwrup_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pwrup_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pwrup_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pwrup_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pwrup_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pwrup_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pwrup_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal rd_hs : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_arready0 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_axi_awready0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axi_wready0 : STD_LOGIC;
  signal soft_clear1_out : STD_LOGIC;
  signal soft_clear_reg_n_0 : STD_LOGIC;
  signal start_pulse5_out : STD_LOGIC;
  signal start_pulse_reg_n_0 : STD_LOGIC;
  signal started_once_i_1_n_0 : STD_LOGIC;
  signal started_once_reg_n_0 : STD_LOGIC;
  signal u_bench_n_1 : STD_LOGIC;
  signal u_bench_n_2 : STD_LOGIC;
  signal u_bench_n_3 : STD_LOGIC;
  signal u_bench_n_40 : STD_LOGIC;
  signal wr_hs : STD_LOGIC;
  signal \NLW_pwrup_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pwrup_cnt_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \pwrup_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pwrup_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pwrup_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s_axi_arready_i_1 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_i_4\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_1 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of s_axi_wready_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of start_pulse_i_2 : label is "soft_lutpair51";
begin
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
bench_done_latched_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => u_bench_n_3,
      Q => data0(1),
      R => '0'
    );
bench_st_running_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => u_bench_n_40,
      Q => data0(0),
      R => rst
    );
\pwrup_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwrup_cnt[0]_i_3_n_0\,
      I1 => started_once_reg_n_0,
      O => \pwrup_cnt[0]_i_1_n_0\
    );
\pwrup_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => u_bench_n_2,
      I1 => pwrup_cnt_reg(2),
      I2 => pwrup_cnt_reg(15),
      I3 => pwrup_cnt_reg(1),
      I4 => pwrup_cnt_reg(0),
      I5 => \pwrup_cnt[0]_i_5_n_0\,
      O => \pwrup_cnt[0]_i_3_n_0\
    );
\pwrup_cnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwrup_cnt_reg(0),
      O => \pwrup_cnt[0]_i_4_n_0\
    );
\pwrup_cnt[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => pwrup_cnt_reg(11),
      I1 => pwrup_cnt_reg(9),
      I2 => pwrup_cnt_reg(6),
      I3 => pwrup_cnt_reg(7),
      I4 => u_bench_n_1,
      O => \pwrup_cnt[0]_i_5_n_0\
    );
\pwrup_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[0]_i_2_n_7\,
      Q => pwrup_cnt_reg(0),
      R => rst
    );
\pwrup_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwrup_cnt_reg[0]_i_2_n_0\,
      CO(2) => \pwrup_cnt_reg[0]_i_2_n_1\,
      CO(1) => \pwrup_cnt_reg[0]_i_2_n_2\,
      CO(0) => \pwrup_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pwrup_cnt_reg[0]_i_2_n_4\,
      O(2) => \pwrup_cnt_reg[0]_i_2_n_5\,
      O(1) => \pwrup_cnt_reg[0]_i_2_n_6\,
      O(0) => \pwrup_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => pwrup_cnt_reg(3 downto 1),
      S(0) => \pwrup_cnt[0]_i_4_n_0\
    );
\pwrup_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[8]_i_1_n_5\,
      Q => pwrup_cnt_reg(10),
      R => rst
    );
\pwrup_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[8]_i_1_n_4\,
      Q => pwrup_cnt_reg(11),
      R => rst
    );
\pwrup_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[12]_i_1_n_7\,
      Q => pwrup_cnt_reg(12),
      R => rst
    );
\pwrup_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwrup_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_pwrup_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pwrup_cnt_reg[12]_i_1_n_1\,
      CO(1) => \pwrup_cnt_reg[12]_i_1_n_2\,
      CO(0) => \pwrup_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwrup_cnt_reg[12]_i_1_n_4\,
      O(2) => \pwrup_cnt_reg[12]_i_1_n_5\,
      O(1) => \pwrup_cnt_reg[12]_i_1_n_6\,
      O(0) => \pwrup_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => pwrup_cnt_reg(15 downto 12)
    );
\pwrup_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[12]_i_1_n_6\,
      Q => pwrup_cnt_reg(13),
      R => rst
    );
\pwrup_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[12]_i_1_n_5\,
      Q => pwrup_cnt_reg(14),
      R => rst
    );
\pwrup_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[12]_i_1_n_4\,
      Q => pwrup_cnt_reg(15),
      R => rst
    );
\pwrup_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[0]_i_2_n_6\,
      Q => pwrup_cnt_reg(1),
      R => rst
    );
\pwrup_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[0]_i_2_n_5\,
      Q => pwrup_cnt_reg(2),
      R => rst
    );
\pwrup_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[0]_i_2_n_4\,
      Q => pwrup_cnt_reg(3),
      R => rst
    );
\pwrup_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[4]_i_1_n_7\,
      Q => pwrup_cnt_reg(4),
      R => rst
    );
\pwrup_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwrup_cnt_reg[0]_i_2_n_0\,
      CO(3) => \pwrup_cnt_reg[4]_i_1_n_0\,
      CO(2) => \pwrup_cnt_reg[4]_i_1_n_1\,
      CO(1) => \pwrup_cnt_reg[4]_i_1_n_2\,
      CO(0) => \pwrup_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwrup_cnt_reg[4]_i_1_n_4\,
      O(2) => \pwrup_cnt_reg[4]_i_1_n_5\,
      O(1) => \pwrup_cnt_reg[4]_i_1_n_6\,
      O(0) => \pwrup_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => pwrup_cnt_reg(7 downto 4)
    );
\pwrup_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[4]_i_1_n_6\,
      Q => pwrup_cnt_reg(5),
      R => rst
    );
\pwrup_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[4]_i_1_n_5\,
      Q => pwrup_cnt_reg(6),
      R => rst
    );
\pwrup_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[4]_i_1_n_4\,
      Q => pwrup_cnt_reg(7),
      R => rst
    );
\pwrup_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[8]_i_1_n_7\,
      Q => pwrup_cnt_reg(8),
      R => rst
    );
\pwrup_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwrup_cnt_reg[4]_i_1_n_0\,
      CO(3) => \pwrup_cnt_reg[8]_i_1_n_0\,
      CO(2) => \pwrup_cnt_reg[8]_i_1_n_1\,
      CO(1) => \pwrup_cnt_reg[8]_i_1_n_2\,
      CO(0) => \pwrup_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwrup_cnt_reg[8]_i_1_n_4\,
      O(2) => \pwrup_cnt_reg[8]_i_1_n_5\,
      O(1) => \pwrup_cnt_reg[8]_i_1_n_6\,
      O(0) => \pwrup_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => pwrup_cnt_reg(11 downto 8)
    );
\pwrup_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \pwrup_cnt[0]_i_1_n_0\,
      D => \pwrup_cnt_reg[8]_i_1_n_6\,
      Q => pwrup_cnt_reg(9),
      R => rst
    );
s_axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => s_axi_arready0
    );
s_axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_arready0,
      Q => \^s_axi_arready\,
      R => rst
    );
s_axi_awready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_awready\,
      O => s_axi_awready0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_awready0,
      Q => \^s_axi_awready\,
      R => rst
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444444444444444"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => \^s_axi_awready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => \^s_axi_wready\,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(2),
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(0),
      O => \s_axi_rdata[30]_i_2_n_0\
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => rd_hs
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      O => \s_axi_rdata[31]_i_3_n_0\
    );
\s_axi_rdata[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(3),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(0),
      O => \s_axi_rdata[31]_i_4_n_0\
    );
\s_axi_rdata[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(2),
      I3 => s_axi_araddr(3),
      O => \s_axi_rdata[3]_i_3_n_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(0),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(10),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(11),
      Q => s_axi_rdata(11),
      R => rst
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(12),
      Q => s_axi_rdata(12),
      R => rst
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(13),
      Q => s_axi_rdata(13),
      R => rst
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(14),
      Q => s_axi_rdata(14),
      R => rst
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(15),
      Q => s_axi_rdata(15),
      R => rst
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(16),
      Q => s_axi_rdata(16),
      R => rst
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(17),
      Q => s_axi_rdata(17),
      R => rst
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(18),
      Q => s_axi_rdata(18),
      R => rst
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(19),
      Q => s_axi_rdata(19),
      R => rst
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(1),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(20),
      Q => s_axi_rdata(20),
      R => rst
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(21),
      Q => s_axi_rdata(21),
      R => rst
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(22),
      Q => s_axi_rdata(22),
      R => rst
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(23),
      Q => s_axi_rdata(23),
      R => rst
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(24),
      Q => s_axi_rdata(24),
      R => rst
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(25),
      Q => s_axi_rdata(25),
      R => rst
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(26),
      Q => s_axi_rdata(26),
      R => rst
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(27),
      Q => s_axi_rdata(27),
      R => rst
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(28),
      Q => s_axi_rdata(28),
      R => rst
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(29),
      Q => s_axi_rdata(29),
      R => rst
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(2),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(30),
      Q => s_axi_rdata(30),
      R => rst
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(31),
      Q => s_axi_rdata(31),
      R => rst
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(3),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(4),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(5),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(6),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(7),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(8),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_hs,
      D => p_0_in(9),
      Q => s_axi_rdata(9),
      R => rst
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s_axi_arvalid,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => rst
    );
s_axi_wready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^s_axi_wready\,
      O => s_axi_wready0
    );
s_axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_wready0,
      Q => \^s_axi_wready\,
      R => rst
    );
soft_clear_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => wr_hs,
      I1 => s_axi_awaddr(0),
      I2 => s_axi_awaddr(3),
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(2),
      I5 => s_axi_wdata(1),
      O => soft_clear1_out
    );
soft_clear_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => soft_clear1_out,
      Q => soft_clear_reg_n_0,
      R => rst
    );
start_pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => wr_hs,
      I1 => s_axi_awaddr(0),
      I2 => s_axi_awaddr(3),
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(2),
      I5 => s_axi_wdata(0),
      O => start_pulse5_out
    );
start_pulse_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \^s_axi_awready\,
      O => wr_hs
    );
start_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start_pulse5_out,
      Q => start_pulse_reg_n_0,
      R => rst
    );
started_once_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \pwrup_cnt[0]_i_3_n_0\,
      I1 => started_once_reg_n_0,
      O => started_once_i_1_n_0
    );
started_once_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => started_once_i_1_n_0,
      Q => started_once_reg_n_0,
      R => rst
    );
u_bench: entity work.router_bd_bench_axi_0_0_bench_engine
     port map (
      D(31 downto 0) => p_0_in(31 downto 0),
      \FSM_sequential_st_reg[2]_0\ => started_once_reg_n_0,
      bench_done_latched_reg => start_pulse_reg_n_0,
      bench_done_latched_reg_0 => soft_clear_reg_n_0,
      data0(1 downto 0) => data0(1 downto 0),
      led(3 downto 0) => led(3 downto 0),
      pwrup_cnt_reg(15 downto 0) => pwrup_cnt_reg(15 downto 0),
      pwrup_cnt_reg_14_sp_1 => u_bench_n_1,
      pwrup_cnt_reg_3_sp_1 => u_bench_n_2,
      rst => rst,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => u_bench_n_3,
      \s_axi_rdata_reg[0]\ => \s_axi_rdata[3]_i_3_n_0\,
      \s_axi_rdata_reg[31]\ => \s_axi_rdata[31]_i_3_n_0\,
      \s_axi_rdata_reg[4]\ => \s_axi_rdata[30]_i_2_n_0\,
      \s_axi_rdata_reg[4]_0\ => \s_axi_rdata[31]_i_4_n_0\,
      winner_valid_reg_0 => u_bench_n_40
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity router_bd_bench_axi_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of router_bd_bench_axi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of router_bd_bench_axi_0_0 : entity is "router_bd_bench_axi_0_0,router_bench_axi,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of router_bd_bench_axi_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of router_bd_bench_axi_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of router_bd_bench_axi_0_0 : entity is "router_bench_axi,Vivado 2025.1";
end router_bd_bench_axi_0_0;

architecture STRUCTURE of router_bd_bench_axi_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN router_bd_ps7_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_MODE of s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN router_bd_ps7_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.router_bd_bench_axi_0_0_router_bench_axi
     port map (
      led(3 downto 0) => led(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
