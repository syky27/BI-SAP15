--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : gates.vhf
-- /___/   /\     Timestamp : 02/17/2015 17:25:56
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl H:/BI-SAP/BI-SAP15/cv01counter/gates.vhf -w H:/BI-SAP/BI-SAP15/cv01counter/gates.sch
--Design Name: gates
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

entity gates is
   port ( A : in    std_logic; 
          B : in    std_logic; 
          p : in    std_logic; 
          q : out   std_logic; 
          S : out   std_logic);
end gates;

architecture BEHAVIORAL of gates is
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


