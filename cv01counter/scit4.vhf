--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : scit4.vhf
-- /___/   /\     Timestamp : 02/17/2015 17:37:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl H:/BI-SAP/BI-SAP15/cv01counter/scit4.vhf -w H:/BI-SAP/BI-SAP15/cv01counter/scit4.sch
--Design Name: scit4
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity gates_MUSER_scit4 is
   port ( A : in    std_logic; 
          B : in    std_logic; 
          p : in    std_logic; 
          q : out   std_logic; 
          S : out   std_logic);
end gates_MUSER_scit4;

architecture BEHAVIORAL of gates_MUSER_scit4 is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_4 : std_logic;
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : NAND2
      port map (I0=>XLXN_4,
                I1=>p,
                O=>XLXN_1);
   
   XLXI_2 : NAND2
      port map (I0=>A,
                I1=>B,
                O=>XLXN_2);
   
   XLXI_3 : NAND2
      port map (I0=>XLXN_2,
                I1=>XLXN_1,
                O=>q);
   
   XLXI_4 : XOR2
      port map (I0=>XLXN_4,
                I1=>p,
                O=>S);
   
   XLXI_5 : XOR2
      port map (I0=>B,
                I1=>A,
                O=>XLXN_4);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity scit4 is
   port ( A0   : in    std_logic; 
          A1   : in    std_logic; 
          A2   : in    std_logic; 
          A3   : in    std_logic; 
          B0   : in    std_logic; 
          B1   : in    std_logic; 
          B2   : in    std_logic; 
          B3   : in    std_logic; 
          CIN  : in    std_logic; 
          COUT : out   std_logic; 
          S0   : out   std_logic; 
          S1   : out   std_logic; 
          S2   : out   std_logic; 
          S3   : out   std_logic);
end scit4;

architecture BEHAVIORAL of scit4 is
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   component gates_MUSER_scit4
      port ( p : in    std_logic; 
             B : in    std_logic; 
             A : in    std_logic; 
             q : out   std_logic; 
             S : out   std_logic);
   end component;
   
begin
   XLXI_1 : gates_MUSER_scit4
      port map (A=>A0,
                B=>B0,
                p=>CIN,
                q=>XLXN_3,
                S=>S0);
   
   XLXI_2 : gates_MUSER_scit4
      port map (A=>A1,
                B=>B1,
                p=>XLXN_3,
                q=>XLXN_2,
                S=>S1);
   
   XLXI_3 : gates_MUSER_scit4
      port map (A=>A2,
                B=>B2,
                p=>XLXN_2,
                q=>XLXN_1,
                S=>S2);
   
   XLXI_4 : gates_MUSER_scit4
      port map (A=>A3,
                B=>B3,
                p=>XLXN_1,
                q=>COUT,
                S=>S3);
   
end BEHAVIORAL;


