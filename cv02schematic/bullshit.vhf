--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : bullshit.vhf
-- /___/   /\     Timestamp : 02/24/2015 17:17:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl H:/BI-SAP/cv02schematic/bullshit.vhf -w H:/BI-SAP/cv02schematic/bullshit.sch
--Design Name: bullshit
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

entity bullshit is
   port ( A : in    std_logic; 
          B : in    std_logic; 
          C : in    std_logic; 
          F : out   std_logic);
end bullshit;

architecture BEHAVIORAL of bullshit is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2B1
      port map (I0=>A,
                I1=>C,
                O=>XLXN_1);
   
   XLXI_2 : AND2B1
      port map (I0=>A,
                I1=>B,
                O=>XLXN_2);
   
   XLXI_3 : AND3B2
      port map (I0=>C,
                I1=>B,
                I2=>A,
                O=>XLXN_3);
   
   XLXI_4 : OR3
      port map (I0=>XLXN_3,
                I1=>XLXN_2,
                I2=>XLXN_1,
                O=>F);
   
end BEHAVIORAL;


