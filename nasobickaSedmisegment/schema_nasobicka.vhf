--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schema_nasobicka.vhf
-- /___/   /\     Timestamp : 03/03/2015 17:42:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/sykorto6/Desktop/BI-SAP/JP/BI-SAP/Projekty_XILINX_PRIPRAVA/Nasobicka_a_sedmisegment/Sedmisegment/schema_nasobicka.vhf -w C:/Users/sykorto6/Desktop/BI-SAP/JP/BI-SAP/Projekty_XILINX_PRIPRAVA/Nasobicka_a_sedmisegment/Sedmisegment/schema_nasobicka.sch
--Design Name: schema_nasobicka
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

entity schema_nasobicka is
   port ( A   : in    std_logic; 
          B   : in    std_logic; 
          C   : in    std_logic; 
          D   : in    std_logic; 
          AN1 : out   std_logic; 
          AN2 : out   std_logic; 
          AN3 : out   std_logic; 
          CA  : out   std_logic; 
          CB  : out   std_logic; 
          CC  : out   std_logic; 
          CD  : out   std_logic; 
          CE  : out   std_logic; 
          CF  : out   std_logic; 
          CG  : out   std_logic; 
          DP  : out   std_logic);
end schema_nasobicka;

architecture BEHAVIORAL of schema_nasobicka is
   attribute BOX_TYPE   : string ;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   component decoder_7seg
      port ( d  : in    std_logic; 
             c  : in    std_logic; 
             b  : in    std_logic; 
             a  : in    std_logic; 
             ca : out   std_logic; 
             cb : out   std_logic; 
             cc : out   std_logic; 
             cd : out   std_logic; 
             ce : out   std_logic; 
             cf : out   std_logic; 
             cg : out   std_logic; 
             dp : out   std_logic);
   end component;
   
   component nasobicka
      port ( d    : in    std_logic; 
             c    : in    std_logic; 
             b    : in    std_logic; 
             a    : in    std_logic; 
             outa : out   std_logic; 
             outb : out   std_logic; 
             outc : out   std_logic; 
             outd : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   XLXI_1 : decoder_7seg
      port map (a=>XLXN_18,
                b=>XLXN_19,
                c=>XLXN_20,
                d=>XLXN_21,
                ca=>CA,
                cb=>CB,
                cc=>CC,
                cd=>CD,
                ce=>CE,
                cf=>CF,
                cg=>CG,
                dp=>DP);
   
   XLXI_2 : nasobicka
      port map (a=>A,
                b=>B,
                c=>C,
                d=>D,
                outa=>XLXN_18,
                outb=>XLXN_19,
                outc=>XLXN_20,
                outd=>XLXN_21);
   
   XLXI_6 : VCC
      port map (P=>AN3);
   
   XLXI_7 : VCC
      port map (P=>AN2);
   
   XLXI_8 : VCC
      port map (P=>AN1);
   
end BEHAVIORAL;


