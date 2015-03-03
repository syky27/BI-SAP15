library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Popis vstup� a v�stup� 7-segmentov�ho dekod�ru
--    vstupy: d, c, b, a
--    v�stupy: ca, cb, cc, cd, ce, cf, cg, dp
-- v�stupy ca ... cg ovl�daj� jednotliv� segmenty displeje,
-- v�stup dp ovl�d� "te�ku" za ka�d�m v�stupem (ponech�n vypnut�)
entity decoder_7seg is
   Port ( 
      d : in  STD_LOGIC;
      c : in  STD_LOGIC; 
      b : in  STD_LOGIC;
      a : in  STD_LOGIC;
      ca : out  STD_LOGIC;
      cb : out  STD_LOGIC;
      cc : out  STD_LOGIC;
      cd : out  STD_LOGIC;
      ce : out  STD_LOGIC;
      cf : out  STD_LOGIC;
      cg : out  STD_LOGIC;
			



      dp : out  STD_LOGIC
   );
end decoder_7seg;                                       
-- popis chov�n� 7-segmentov�ho dekod�ru
architecture decoder_7seg_arch of decoder_7seg is       
   -- vnit�n� sign�l, kter� se pou��v� k rozli�en� jednotliv�ch vstup�
   signal   input :  std_logic_vector (3 downto 0);     
   
begin

   -- zpracov�n� vstup� pro jednodu��� pr�ci s tabulkou 
   input(3) <= d;
   input(2) <= c;
   input(1) <= b;
   input(0) <= a;
	
-- Zn�zorn�n� 7-segmentov�ho displeje
-- (v�ce se m��ete dozv�d�t v referen�n�m manu�lu p��pravku Basys-2)       
--       CA  
--       --- 
--  CF  |   |  CB     
--       ---    <- CG  
--  CE  |   |  CC                                    
--       --- .  <- DP                               
--       CD
--
--  Ka�d� segment je zapnut� (rozsv�cen�) hodnotou log. 0
--
--  ��sla 0..9 zobrazujte podle obecn� zn�m� konvence,
--  pro ostatn� hodnoty (A..F) pou�ijte n�sleduj�c� zobrazen�:
--  A:      B:      C:      D:      E:      F:
--    ---             ---             ---     ---
--   |   |   |       |           |   |       |
--    ---     ---             ---     ---     ---
--   |   |   |   |   |       |   |   |       |
--            ---     ---     ---     ---

   -------------------------------------------------------------------
   -------------------------------------------------------------------
   -- Zde dopl�te 3 algebraick� v�razy pro segmenty CA, CB, CC      --
   -------------------------------------------------------------------
   -------------------------------------------------------------------
	
   
ca <= ((not d) and (not c) and (not b) and a) or ((not d) and c and (not b) and (not a)) or (d and c and (not b) and a )or (d and (not c) and b and a);
cb <= (c and b and (not a)) or (d and b and a) or ((not d) and c and (not b) and a) or (d and c and (not b) and (not a));
cc <= ((not d) and (not c) and b and (not a)) or (d and c and (not b) and (not a)) or (d and c and b);

   -------------------------------------------------------------------
   -------------------------------------------------------------------
   -- Zde dopl�te v�razy tabulkou pro zbyl� segmenty CD, CE, CF, CG --
   -------------------------------------------------------------------
   -------------------------------------------------------------------
	
   -- ------------------------------------------------------------------------------
   -- |  fun�kn� hodnota cd(d, c, b, a) |  stavov� index s  |  d  |  c  |  b  |  a  | 
   -- ------------------------------------------------------------------------------
   with input select
   cd <= '0'   when	"0000",         -- |           0       |  0  |  0  |  0  |  0  |       
         '1'   when	"0001",         -- |           1       |  0  |  0  |  0  |  1  |
         '0'   when	"0010",         -- |           2       |  0  |  0  |  1  |  0  |
         '0'   when	"0011",         -- |           3       |  0  |  0  |  1  |  1  |
         '1'   when	"0100",         -- |           4       |  0  |  1  |  0  |  0  |
         '0'   when	"0101",         -- |           5       |  0  |  1  |  0  |  1  |
         '0'   when	"0110",         -- |           6       |  0  |  1  |  1  |  0  |
         '1'   when	"0111",         -- |           7       |  0  |  1  |  1  |  1  |
         '0'   when	"1000",         -- |           8       |  1  |  0  |  0  |  0  |
         '0'   when	"1001",         -- |           9       |  1  |  0  |  0  |  1  |
         '1'   when	"1010",         -- |          10 (A)   |  1  |  0  |  1  |  0  |
         '0'   when	"1011",         -- |          11 (b)   |  1  |  0  |  1  |  1  |
         '0'   when	"1100",         -- |          12 (C)   |  1  |  1  |  0  |  0  |
         '0'   when	"1101",         -- |          13 (d)   |  1  |  1  |  0  |  1  |
         '0'   when	"1110",         -- |          14 (E)   |  1  |  1  |  1  |  0  |
         '1'   when	"1111",         -- |          15 (F)   |  1  |  1  |  1  |  1  |
         '1'	when others;
   
   -- ------------------------------------------------------------------------------;
   -- ------------------------------------------------------------------------------
   -- |  fun�kn� hodnota ce(d, c, b, a) |  stavov� index s  |  d  |  c  |  b  |  a  | 
   -- ------------------------------------------------------------------------------
   with input select
   ce <= '0'   when	"0000",         -- |           0       |  0  |  0  |  0  |  0  |  
         '1'   when	"0001",         -- |           1       |  0  |  0  |  0  |  1  |   
         '0'   when	"0010",         -- |           2       |  0  |  0  |  1  |  0  |           
         '1'   when	"0011",         -- |           3       |  0  |  0  |  1  |  1  |
         '1'   when	"0100",         -- |           4       |  0  |  1  |  0  |  0  |   
         '1'   when	"0101",         -- |           5       |  0  |  1  |  0  |  1  |   
         '0'   when	"0110",         -- |           6       |  0  |  1  |  1  |  0  |
         '1'   when	"0111",         -- |           7       |  0  |  1  |  1  |  1  |
         '0'   when	"1000",         -- |           8       |  1  |  0  |  0  |  0  |
         '1'   when	"1001",         -- |           9       |  1  |  0  |  0  |  1  |
         '0'   when	"1010",         -- |          10 (A)   |  1  |  0  |  1  |  0  |
         '0'   when	"1011",         -- |          11 (b)   |  1  |  0  |  1  |  1  |
         '0'   when	"1100",         -- |          12 (C)   |  1  |  1  |  0  |  0  |
         '0'   when	"1101",         -- |          13 (d)   |  1  |  1  |  0  |  1  |
         '0'   when	"1110",         -- |          14 (E)   |  1  |  1  |  1  |  0  |
         '1'   when	"1111",         -- |          15 (F)   |  1  |  1  |  1  |  1  |
         '1'	when others;
   
   -- ------------------------------------------------------------------------------;
   -- ------------------------------------------------------------------------------
   -- |  fun�kn� hodnota cf(d, c, b, a) |  stavov� index s  |  d  |  c  |  b  |  a  | 
   -- ------------------------------------------------------------------------------
   with input select
   cf <= '0'   when	"0000",         -- |           0       |  0  |  0  |  0  |  0  |            
         '1'   when	"0001",         -- |           1       |  0  |  0  |  0  |  1  |
         '1'   when	"0010",         -- |           2       |  0  |  0  |  1  |  0  |
         '1'   when	"0011",         -- |           3       |  0  |  0  |  1  |  1  |
         '0'   when	"0100",         -- |           4       |  0  |  1  |  0  |  0  |           
         '0'   when	"0101",         -- |           5       |  0  |  1  |  0  |  1  |
         '0'   when	"0110",         -- |           6       |  0  |  1  |  1  |  0  |             
         '1'   when	"0111",         -- |           7       |  0  |  1  |  1  |  1  |           
         '0'   when	"1000",         -- |           8       |  1  |  0  |  0  |  0  |          
         '0'   when	"1001",         -- |           9       |  1  |  0  |  0  |  1  |          
         '0'   when	"1010",         -- |          10 (A)   |  1  |  0  |  1  |  0  |
         '0'   when	"1011",         -- |          11 (b)   |  1  |  0  |  1  |  1  |
         '0'   when	"1100",         -- |          12 (C)   |  1  |  1  |  0  |  0  |
         '1'   when	"1101",         -- |          13 (d)   |  1  |  1  |  0  |  1  |
         '0'   when	"1110",         -- |          14 (E)   |  1  |  1  |  1  |  0  |
         '0'   when	"1111",         -- |          15 (F)   |  1  |  1  |  1  |  1  |
         '1'	when others;
   
   -- ------------------------------------------------------------------------------;
   -- ------------------------------------------------------------------------------
   -- |  fun�kn� hodnota cg(d, c, b, a) |  stavov� index s  |  d  |  c  |  b  |  a  | 
   -- ------------------------------------------------------------------------------
   with input select
   cg <= '1'   when	"0000",         -- |           0       |  0  |  0  |  0  |  0  |     
         '1'   when	"0001",         -- |           1       |  0  |  0  |  0  |  1  |            
         '0'   when	"0010",         -- |           2       |  0  |  0  |  1  |  0  |         
         '0'   when	"0011",         -- |           3       |  0  |  0  |  1  |  1  |
         '0'   when	"0100",         -- |           4       |  0  |  1  |  0  |  0  |
         '0'   when	"0101",         -- |           5       |  0  |  1  |  0  |  1  |
         '0'   when	"0110",         -- |           6       |  0  |  1  |  1  |  0  |
         '1'   when	"0111",         -- |           7       |  0  |  1  |  1  |  1  |             
         '0'   when	"1000",         -- |           8       |  1  |  0  |  0  |  0  |             
         '0'   when	"1001",         -- |           9       |  1  |  0  |  0  |  1  |
         '0'   when	"1010",         -- |          10 (A)   |  1  |  0  |  1  |  0  |
         '0'   when	"1011",         -- |          11 (b)   |  1  |  0  |  1  |  1  |
         '1'   when	"1100",         -- |          12 (C)   |  1  |  1  |  0  |  0  |
         '0'   when	"1101",         -- |          13 (d)   |  1  |  1  |  0  |  1  |
         '0'   when	"1110",         -- |          14 (E)   |  1  |  1  |  1  |  0  |
         '0'   when	"1111",         -- |          15 (F)   |  1  |  1  |  1  |  1  |
         '1'	when others;
    
   -- ------------------------------------------------------------------------------;

-------------------------------------------------------------------
-------------------------------------------------------------------
-- V�raz DP je ponech�n na konstantn� hodnot� '1' (vypnuto)      --
-------------------------------------------------------------------
-------------------------------------------------------------------
	
   dp <= '1';  -- mu�ete zm�nit, pokud mate chu�
	
end decoder_7seg_arch;

