--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: bpm_counter_synthesis.vhd
-- /___/   /\     Timestamp: Sun Oct 08 12:00:20 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm bpm_counter -w -dir netgen/synthesis -ofmt vhdl -sim bpm_counter.ngc bpm_counter_synthesis.vhd 
-- Device	: xc3s400-4-ft256
-- Input file	: bpm_counter.ngc
-- Output file	: C:\Users\Isabel\Documents\Music-Player\ISE Projects\bpm_counter\netgen\synthesis\bpm_counter_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: bpm_counter
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity bpm_counter is
  port (
    clk : in STD_LOGIC := 'X'; 
    Resetn : in STD_LOGIC := 'X'; 
    an : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    hex : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    Default : in STD_LOGIC_VECTOR ( 8 downto 0 ); 
    average_clockcs : in STD_LOGIC_VECTOR ( 29 downto 0 ) 
  );
end bpm_counter;

architecture Structure of bpm_counter is
  signal Default_0_IBUF_9 : STD_LOGIC; 
  signal Default_1_IBUF_10 : STD_LOGIC; 
  signal Default_2_IBUF_11 : STD_LOGIC; 
  signal Default_3_IBUF_12 : STD_LOGIC; 
  signal Default_4_IBUF_13 : STD_LOGIC; 
  signal Default_5_IBUF_14 : STD_LOGIC; 
  signal Default_6_IBUF_15 : STD_LOGIC; 
  signal Default_7_IBUF_16 : STD_LOGIC; 
  signal Default_8_IBUF_17 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_1_19 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_10_20 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_11_21 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_12_22 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_13_23 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_14_24 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_15_25 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_16_26 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_17_27 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_18_28 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_19_29 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_2_30 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_20_31 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_21_32 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_22 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_3_34 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_4_35 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_5_36 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_6_37 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_7_38 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_8_39 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_9_40 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_10_rt_41 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_11_rt_42 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_14_rt_43 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_16_rt_44 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_18_rt_45 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_19_rt_46 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_21_rt_47 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_9_rt_48 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_0_rt_49 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_1_51 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_10_52 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_11_53 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_12_54 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_13_55 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_14_56 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_15_57 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_16_58 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_17_59 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_18_60 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_19 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_2_62 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_3_63 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_4_64 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_5_65 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_6_66 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_7_67 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_8_68 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_9_69 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_11_rt_70 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_12_rt_71 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_17_rt_72 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_18_rt_73 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_2_rt_74 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_3_rt_75 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_6_rt_76 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_10_8_rt_77 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_1_79 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_10_80 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_11_81 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_12_82 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_13_83 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_14_84 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_15_85 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_16_86 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_17_87 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_18 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_2_89 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_3_90 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_4_91 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_5_92 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_6_93 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_7_94 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_8_95 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_9_96 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_11_10_rt_97 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_1_99 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_10_100 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_11_101 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_12_102 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_13_103 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_14 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_2_105 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_3_106 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_4_107 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_5_108 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_6_109 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_7_110 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_8_111 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_9_112 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_10_rt_113 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_12_rt_114 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_13_rt_115 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_1_rt_116 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_3_rt_117 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_7_rt_118 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_12_8_rt_119 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_13_1_121 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_13_10_122 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_13_11 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_13_2_124 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_13_3_125 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_13_4_126 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_13_5_127 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_13_6_128 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_13_7_129 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_13_8_130 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_13_9_131 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_14_1_133 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_14_2_134 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_14_3_135 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_14_4_136 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_14_5_137 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_14_6_138 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_14_7 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_14_5_rt_140 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_14_6_rt_141 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_15_1_143 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_15_2_144 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_15_3_145 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_15_4_146 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_15_5 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_16_1_149 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_16_2 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_1_152 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_10_153 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_11_154 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_12_155 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_13_156 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_14_157 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_15_158 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_16_159 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_17_160 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_18_161 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_19_162 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_2_163 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_20_164 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_21_165 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_22 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_3_167 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_4_168 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_5_169 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_6_170 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_7_171 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_8_172 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_9_173 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_1_17_rt_174 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_1_176 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_10_177 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_11_178 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_12_179 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_13_180 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_14_181 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_15_182 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_16_183 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_17_184 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_18_185 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_19_186 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_2_187 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_20_188 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_21_189 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_22 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_3_191 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_4_192 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_5_193 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_6_194 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_7_195 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_8_196 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_9_197 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_10_rt_198 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_11_rt_199 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_12_rt_200 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_15_rt_201 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_16_rt_202 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_18_rt_203 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_19_rt_204 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_1_rt_205 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_20_rt_206 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_2_rt_207 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_3_rt_208 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_9_rt_209 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_2_rt_210 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_1_212 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_10_213 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_11_214 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_12_215 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_13_216 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_14_217 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_15_218 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_16_219 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_17_220 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_18_221 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_19_222 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_2_223 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_20_224 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_21_225 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_22 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_3_227 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_4_228 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_5_229 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_6_230 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_7_231 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_8_232 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_9_233 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_3_0_rt_234 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_1_236 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_10_237 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_11_238 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_12_239 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_13_240 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_14_241 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_15_242 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_16_243 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_17_244 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_18_245 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_19_246 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_2_247 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_20_248 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_21_249 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_22 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_3_251 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_4_252 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_5_253 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_6_254 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_7_255 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_8_256 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_9_257 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_10_rt_258 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_15_rt_259 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_18_rt_260 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_21_rt_261 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_3_rt_262 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_4_rt_263 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_6_rt_264 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_8_rt_265 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_4_rt_266 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_1_268 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_10_269 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_11_270 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_12_271 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_13_272 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_14_273 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_15_274 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_16_275 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_17_276 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_18_277 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_19_278 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_2_279 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_20_280 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_21_281 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_22 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_3_283 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_4_284 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_5_285 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_6_286 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_7_287 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_8_288 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_9_289 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_5_1_rt_290 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_1_292 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_10_293 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_11_294 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_12_295 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_13_296 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_14_297 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_15_298 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_16_299 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_17_300 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_18_301 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_19_302 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_2_303 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_20_304 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_21_305 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_22 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_3_307 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_4_308 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_5_309 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_6_310 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_7_311 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_8_312 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_9_313 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_0_rt_314 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_13_rt_315 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_14_rt_316 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_15_rt_317 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_21_rt_318 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_5_rt_319 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_6_7_rt_320 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_1_322 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_10_323 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_11_324 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_12_325 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_13_326 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_14_327 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_15_328 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_16_329 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_17_330 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_18_331 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_19_332 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_2_333 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_20_334 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_21_335 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_22 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_3_337 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_4_338 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_5_339 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_6_340 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_7_341 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_8_342 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_9_343 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_12_rt_344 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_7_16_rt_345 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_1_347 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_10_348 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_11_349 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_12_350 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_13_351 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_14_352 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_15_353 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_16_354 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_17_355 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_18_356 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_19_357 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_2_358 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_20_359 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_21_360 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_22 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_3_362 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_4_363 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_5_364 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_6_365 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_7_366 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_8_367 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_9_368 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_11_rt_369 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_14_rt_370 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_15_rt_371 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_17_rt_372 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_20_rt_373 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_3_rt_374 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_4_rt_375 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_5_rt_376 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_6_rt_377 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_8_9_rt_378 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_1_380 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_10_381 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_11_382 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_12_383 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_13_384 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_14_385 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_15_386 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_16_387 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_17_388 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_18_389 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_19_390 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_2_391 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_20_392 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_21_393 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_22 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_3_395 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_4_396 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_5_397 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_6_398 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_7_399 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_8_400 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_9_401 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_13_rt_402 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_16_rt_403 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_1_rt_404 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy_9_2_rt_405 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_1_407 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_10_408 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_11_409 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_12_410 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_13_411 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_2_412 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_3_413 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_4_414 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_5_415 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_6_416 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_7_417 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_8_418 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_0_9_419 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_10_1_421 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_10_10_422 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_10_11 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_10_2_424 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_10_3_425 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_10_4_426 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_10_5_427 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_10_6_428 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_10_7 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_10_8 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_10_9_431 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_1_433 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_10_434 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_11_435 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_12_436 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_13_437 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_14 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_15_439 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_16 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_17 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_2 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_3 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_4_444 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_5 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_6 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_7 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_8 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_11_9 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_12_1 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_12_2_452 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_12_3_453 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_12_4 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_12_5_455 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_12_6_456 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_12_7_457 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_13_1 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_13_10_460 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_13_11 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_13_2_462 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_13_3_463 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_13_4_464 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_13_5_465 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_13_6_466 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_13_7_467 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_13_8_468 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_13_9_469 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_14_1_471 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_14_2_472 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_14_3_473 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_14_4_474 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_14_5_475 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_15_1 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_15_2 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_15_3_479 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_15_4_480 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_15_5_481 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_16_1_483 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_16_2_484 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_1_486 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_10_487 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_11_488 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_12 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_13 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_14 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_15_492 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_16_493 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_17 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_18 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_19_496 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_2_497 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_20 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_21_499 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_3 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_4_501 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_5 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_6 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_7_504 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_8_505 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_1_9 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_2_1_508 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_2_2_509 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_2_3_510 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_2_4_511 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_2_5_512 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_2_6_513 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_2_7_514 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_2_8_515 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_2_9_516 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_1_518 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_10_519 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_11 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_12_521 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_13_522 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_14 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_15_524 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_16_525 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_17 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_18 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_19_528 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_2_529 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_20 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_21 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_3_532 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_4 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_5 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_6_535 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_7_536 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_8 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_3_9 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_1_540 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_10_541 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_11_542 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_12_543 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_13_544 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_2_545 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_3_546 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_4_547 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_5_548 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_6_549 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_7_550 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_8_551 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_4_9_552 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_1_554 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_10 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_11 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_12_557 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_13_558 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_14 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_15 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_16_561 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_17_562 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_18 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_19 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_2 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_20 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_21 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_3 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_4 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_5_570 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_6_571 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_7_572 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_8_573 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_5_9_574 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_1 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_10 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_11 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_12_579 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_13_580 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_14_581 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_15_582 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_2_583 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_3_584 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_4_585 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_5_586 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_6_587 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_7_588 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_8_589 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_6_9_590 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_1_592 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_10 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_11_594 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_12_595 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_13_596 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_14 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_15 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_16 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_17_600 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_18_601 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_19 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_2_603 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_20_604 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_3_605 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_4_606 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_5_607 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_6 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_7_609 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_8_610 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_7_9_611 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_1_613 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_10_614 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_11_615 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_12_616 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_2_617 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_3_618 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_4_619 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_5_620 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_6_621 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_7_622 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_8 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_8_9 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_1_626 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_10_627 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_11_628 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_12_629 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_13_630 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_14_631 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_15 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_16_633 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_17 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_18_635 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_2_636 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_3_637 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_4_638 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_5_639 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_6_640 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_7 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_8_642 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_lut_9_9 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N341 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal Resetn_IBUF_694 : STD_LOGIC; 
  signal an_0_OBUF_699 : STD_LOGIC; 
  signal an_1_OBUF_700 : STD_LOGIC; 
  signal an_2_OBUF_701 : STD_LOGIC; 
  signal an_3_OBUF_702 : STD_LOGIC; 
  signal average_clockcs_0_IBUF_733 : STD_LOGIC; 
  signal average_clockcs_10_IBUF_734 : STD_LOGIC; 
  signal average_clockcs_11_IBUF_735 : STD_LOGIC; 
  signal average_clockcs_12_IBUF_736 : STD_LOGIC; 
  signal average_clockcs_13_IBUF_737 : STD_LOGIC; 
  signal average_clockcs_14_IBUF_738 : STD_LOGIC; 
  signal average_clockcs_15_IBUF_739 : STD_LOGIC; 
  signal average_clockcs_16_IBUF_740 : STD_LOGIC; 
  signal average_clockcs_17_IBUF_741 : STD_LOGIC; 
  signal average_clockcs_18_IBUF_742 : STD_LOGIC; 
  signal average_clockcs_19_IBUF_743 : STD_LOGIC; 
  signal average_clockcs_1_IBUF_744 : STD_LOGIC; 
  signal average_clockcs_20_IBUF_745 : STD_LOGIC; 
  signal average_clockcs_21_IBUF_746 : STD_LOGIC; 
  signal average_clockcs_22_IBUF_747 : STD_LOGIC; 
  signal average_clockcs_23_IBUF_748 : STD_LOGIC; 
  signal average_clockcs_24_IBUF_749 : STD_LOGIC; 
  signal average_clockcs_25_IBUF_750 : STD_LOGIC; 
  signal average_clockcs_26_IBUF_751 : STD_LOGIC; 
  signal average_clockcs_27_IBUF_752 : STD_LOGIC; 
  signal average_clockcs_28_IBUF_753 : STD_LOGIC; 
  signal average_clockcs_29_IBUF_754 : STD_LOGIC; 
  signal average_clockcs_2_IBUF_755 : STD_LOGIC; 
  signal average_clockcs_3_IBUF_756 : STD_LOGIC; 
  signal average_clockcs_4_IBUF_757 : STD_LOGIC; 
  signal average_clockcs_5_IBUF_758 : STD_LOGIC; 
  signal average_clockcs_6_IBUF_759 : STD_LOGIC; 
  signal average_clockcs_7_IBUF_760 : STD_LOGIC; 
  signal average_clockcs_8_IBUF_761 : STD_LOGIC; 
  signal average_clockcs_9_IBUF_762 : STD_LOGIC; 
  signal bpm_0_and0000 : STD_LOGIC; 
  signal bpm_0_and0001 : STD_LOGIC; 
  signal bpm_1_and0000 : STD_LOGIC; 
  signal bpm_1_and0001 : STD_LOGIC; 
  signal bpm_2_and0000 : STD_LOGIC; 
  signal bpm_2_and0001 : STD_LOGIC; 
  signal bpm_3_and0000 : STD_LOGIC; 
  signal bpm_3_and0001 : STD_LOGIC; 
  signal bpm_4_and0000 : STD_LOGIC; 
  signal bpm_4_and0001 : STD_LOGIC; 
  signal bpm_5_and0000 : STD_LOGIC; 
  signal bpm_5_and0001 : STD_LOGIC; 
  signal bpm_6_and0000 : STD_LOGIC; 
  signal bpm_6_and0001 : STD_LOGIC; 
  signal bpm_7_and0000 : STD_LOGIC; 
  signal bpm_7_and0001 : STD_LOGIC; 
  signal bpm_8_and0000 : STD_LOGIC; 
  signal bpm_8_and0001 : STD_LOGIC; 
  signal bpm_mux0023_0_112_791 : STD_LOGIC; 
  signal bpm_mux0023_0_136_792 : STD_LOGIC; 
  signal bpm_mux0023_1_13_794 : STD_LOGIC; 
  signal bpm_mux0023_1_150_795 : STD_LOGIC; 
  signal bpm_mux0023_1_203_796 : STD_LOGIC; 
  signal bpm_mux0023_1_22_797 : STD_LOGIC; 
  signal bpm_mux0023_1_253_798 : STD_LOGIC; 
  signal bpm_mux0023_1_305_799 : STD_LOGIC; 
  signal bpm_mux0023_1_31_800 : STD_LOGIC; 
  signal bpm_mux0023_1_57_801 : STD_LOGIC; 
  signal bpm_mux0023_1_97_802 : STD_LOGIC; 
  signal bpm_mux0023_2_106_804 : STD_LOGIC; 
  signal bpm_mux0023_2_317 : STD_LOGIC; 
  signal bpm_mux0023_2_3171_806 : STD_LOGIC; 
  signal bpm_mux0023_2_332_807 : STD_LOGIC; 
  signal bpm_mux0023_2_87_808 : STD_LOGIC; 
  signal bpm_mux0023_2_9_809 : STD_LOGIC; 
  signal bpm_mux0023_3_10_811 : STD_LOGIC; 
  signal bpm_mux0023_3_152_812 : STD_LOGIC; 
  signal bpm_mux0023_3_21_813 : STD_LOGIC; 
  signal bpm_mux0023_3_39_814 : STD_LOGIC; 
  signal bpm_mux0023_3_58_815 : STD_LOGIC; 
  signal bpm_mux0023_3_91_816 : STD_LOGIC; 
  signal bpm_mux0023_4_12_818 : STD_LOGIC; 
  signal bpm_mux0023_4_20_819 : STD_LOGIC; 
  signal bpm_mux0023_4_34_820 : STD_LOGIC; 
  signal bpm_mux0023_4_67_821 : STD_LOGIC; 
  signal bpm_mux0023_4_91_822 : STD_LOGIC; 
  signal bpm_mux0023_5_110_824 : STD_LOGIC; 
  signal bpm_mux0023_5_3_825 : STD_LOGIC; 
  signal bpm_mux0023_5_50_826 : STD_LOGIC; 
  signal bpm_mux0023_6_13_828 : STD_LOGIC; 
  signal bpm_mux0023_6_34_829 : STD_LOGIC; 
  signal bpm_mux0023_6_46_830 : STD_LOGIC; 
  signal bpm_mux0023_7_17 : STD_LOGIC; 
  signal bpm_mux0023_7_171_833 : STD_LOGIC; 
  signal bpm_mux0023_7_32_834 : STD_LOGIC; 
  signal bpm_mux0023_7_62_835 : STD_LOGIC; 
  signal bpm_mux0023_7_81 : STD_LOGIC; 
  signal bpm_mux0023_7_811_837 : STD_LOGIC; 
  signal bpm_mux0023_7_98_838 : STD_LOGIC; 
  signal clk_BUFGP_841 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_1_843 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_2_844 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_3_845 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_4_846 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_5_847 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_6_848 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_7_849 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_8 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_3_rt_851 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_7_rt_852 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_rt_853 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_1_855 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_2_856 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_3_857 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_4_858 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_5_859 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_6_860 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_7_861 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_8 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_1_864 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_2_865 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_3_866 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_4_867 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_5_868 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_6_869 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_7_870 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_8 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_1_873 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_2_874 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_3_875 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_4_876 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_5_877 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_6_878 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_7_879 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_8 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_1_882 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_2_883 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_3_884 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_4_885 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_5_886 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_6_887 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_1_889 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_2_890 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_3_891 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_4_892 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_5_893 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_6 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_6_1_896 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_0_1_899 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_0_2_900 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_1_902 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_2_903 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_3_904 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_4_905 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_5_906 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_6_907 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_7_908 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_8_909 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_1_911 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_2_912 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_3_913 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_1_915 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_2_916 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_3_917 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_4_918 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_5_919 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_6_920 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_7_921 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_8_922 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_1_924 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_2 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_3_926 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_4_927 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_5 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_6_929 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_7_930 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_1_932 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_2_933 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_3_934 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_4_935 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_5_936 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_6_937 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_1 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_2 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_3 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_4 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_5 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_6_944 : STD_LOGIC; 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_7_1 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_4_948 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_5_949 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_6_950 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_7_951 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_8 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_3_rt_953 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_4_rt_954 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_6_rt_955 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_7_rt_956 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_4_957 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_5_958 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_6_959 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_7_960 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_8 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_4_962 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_5_963 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_6_964 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_7_965 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_8 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_5_rt_967 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_4_968 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_5_969 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_6_970 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_7_971 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_8 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_3_rt_973 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_4_974 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_5_975 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_6_976 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_7_977 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_8 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_5_rt_979 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_2 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_3_981 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_4_982 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_cy_6_2_983 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_0_2_984 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_4 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_5_986 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_6 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_7_988 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_8_989 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_2_990 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_3_991 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_4_992 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_5_993 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_5_994 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_6 : STD_LOGIC; 
  signal displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_7 : STD_LOGIC; 
  signal displayvalue_N0 : STD_LOGIC; 
  signal displayvalue_N1 : STD_LOGIC; 
  signal displayvalue_decimal_part_10_18_1056 : STD_LOGIC; 
  signal displayvalue_decimal_part_cmp_ge0000 : STD_LOGIC; 
  signal displayvalue_decimal_part_cmp_ge0001 : STD_LOGIC; 
  signal displayvalue_decimal_part_cmp_ge0002 : STD_LOGIC; 
  signal displayvalue_decimal_part_cmp_ge0003 : STD_LOGIC; 
  signal displayvalue_decimal_part_cmp_ge0004 : STD_LOGIC; 
  signal displayvalue_decimal_part_cmp_ge0005 : STD_LOGIC; 
  signal displayvalue_decimal_part_cmp_ge0006 : STD_LOGIC; 
  signal displayvalue_decimal_part_cmp_ge0007 : STD_LOGIC; 
  signal displayvalue_decimal_part_cmp_ge0008 : STD_LOGIC; 
  signal displayvalue_decimal_part_mux0008_15_10_1069 : STD_LOGIC; 
  signal displayvalue_decimal_part_mux0008_15_20_1070 : STD_LOGIC; 
  signal displayvalue_decimal_part_mux0008_17_12_1071 : STD_LOGIC; 
  signal displayvalue_decimal_part_mux0008_17_34_1072 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_0_Q_1092 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_10_Q_1093 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_11_Q_1094 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_12_Q_1095 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_13_Q_1096 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_14_Q_1097 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_1_Q_1098 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_2_Q_1099 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_3_Q_1100 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_4_Q_1101 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_5_Q_1102 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_6_Q_1103 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_7_Q_1104 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_8_Q_1105 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_cy_9_Q_1106 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_0_Q_1107 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_10_Q_1108 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_11_Q_1109 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_12_Q_1110 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_13_Q_1111 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_14_Q_1112 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_1_Q_1113 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_2_Q_1114 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_3_Q_1115 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_4_Q_1116 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_5_Q_1117 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_6_Q_1118 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_7_Q_1119 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_8_Q_1120 : STD_LOGIC; 
  signal displayvalue_digit_bit_0_1_wg_lut_9_Q_1121 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_10_rt_1126 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_11_rt_1128 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_12_rt_1130 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_13_rt_1132 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_14_rt_1134 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_15_rt_1136 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_16_rt_1138 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_17_rt_1140 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_18_rt_1142 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_19_rt_1144 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_1_rt_1146 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_20_rt_1148 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_21_rt_1150 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_22_rt_1152 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_23_rt_1154 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_24_rt_1156 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_25_rt_1158 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_26_rt_1160 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_27_rt_1162 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_28_rt_1164 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_29_rt_1166 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_2_rt_1168 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_30_rt_1170 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_3_rt_1172 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_4_rt_1174 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_5_rt_1176 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_6_rt_1178 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_7_rt_1180 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_8_rt_1182 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_cy_9_rt_1184 : STD_LOGIC; 
  signal displayvalue_display_Mcount_counter_xor_31_rt_1186 : STD_LOGIC; 
  signal displayvalue_display_Mmux_binary_3_1187 : STD_LOGIC; 
  signal displayvalue_display_Mmux_binary_31_1188 : STD_LOGIC; 
  signal displayvalue_display_Mmux_binary_32_1189 : STD_LOGIC; 
  signal displayvalue_display_Mmux_binary_4_1190 : STD_LOGIC; 
  signal displayvalue_display_Mmux_binary_41_1191 : STD_LOGIC; 
  signal displayvalue_display_Mmux_binary_42_1192 : STD_LOGIC; 
  signal displayvalue_display_Mmux_binary_43_1193 : STD_LOGIC; 
  signal displayvalue_display_Result_0_1 : STD_LOGIC; 
  signal displayvalue_display_Result_1_1 : STD_LOGIC; 
  signal displayvalue_display_digit_cmp_eq0000 : STD_LOGIC; 
  signal displayvalue_hundred_bit_0_1_1283 : STD_LOGIC; 
  signal displayvalue_hundred_bit_0_2_1284 : STD_LOGIC; 
  signal displayvalue_ten_bit_0_11_1287 : STD_LOGIC; 
  signal displayvalue_ten_bit_0_30_1288 : STD_LOGIC; 
  signal displayvalue_ten_part_2_1 : STD_LOGIC; 
  signal displayvalue_ten_part_3_1_1_1302 : STD_LOGIC; 
  signal displayvalue_ten_part_4_1_1_1304 : STD_LOGIC; 
  signal displayvalue_ten_part_6_1_1_1307 : STD_LOGIC; 
  signal displayvalue_ten_part_6_1_2_1308 : STD_LOGIC; 
  signal displayvalue_ten_part_cmp_ge0004 : STD_LOGIC; 
  signal displayvalue_ten_part_cmp_ge0005 : STD_LOGIC; 
  signal displayvalue_ten_part_cmp_ge0006 : STD_LOGIC; 
  signal displayvalue_ten_part_cmp_ge0007 : STD_LOGIC; 
  signal displayvalue_ten_part_cmp_ge0008 : STD_LOGIC; 
  signal displayvalue_ten_part_mux0008_10_Q : STD_LOGIC; 
  signal displayvalue_ten_part_mux0008_12_Q : STD_LOGIC; 
  signal hex_0_OBUF_1342 : STD_LOGIC; 
  signal hex_1_OBUF_1343 : STD_LOGIC; 
  signal hex_2_OBUF_1344 : STD_LOGIC; 
  signal hex_3_OBUF_1345 : STD_LOGIC; 
  signal hex_4_OBUF_1346 : STD_LOGIC; 
  signal hex_5_OBUF_1347 : STD_LOGIC; 
  signal hex_6_OBUF_1348 : STD_LOGIC; 
  signal Mcompar_bpm_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal Mcompar_bpm_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal bpm : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal bpm_mux0023 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal displayvalue_Mcompar_decimal_part_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal displayvalue_Msub_decimal_part_share0000_cy : STD_LOGIC_VECTOR ( 17 downto 1 ); 
  signal displayvalue_Msub_decimal_part_share0000_lut : STD_LOGIC_VECTOR ( 18 downto 1 ); 
  signal displayvalue_Msub_ten_part_share0000_cy : STD_LOGIC_VECTOR ( 16 downto 2 ); 
  signal displayvalue_Msub_ten_part_share0000_lut : STD_LOGIC_VECTOR ( 8 downto 2 ); 
  signal displayvalue_decimal_part : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal displayvalue_decimal_part_share0000 : STD_LOGIC_VECTOR ( 18 downto 1 ); 
  signal displayvalue_digit_bit : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal displayvalue_display_Mcount_counter_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal displayvalue_display_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal displayvalue_display_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal displayvalue_display_binary : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal displayvalue_display_counter : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal displayvalue_display_digit : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal displayvalue_display_digit_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal displayvalue_display_digit_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal displayvalue_hundred_bit : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal displayvalue_ten_bit : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal displayvalue_ten_part : STD_LOGIC_VECTOR ( 16 downto 2 ); 
  signal displayvalue_ten_part_share0000 : STD_LOGIC_VECTOR ( 17 downto 2 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  Mcompar_bpm_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_0_rt_49,
      O => Mcompar_bpm_cmp_lt0000_cy(0)
    );
  Mcompar_bpm_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      I1 => average_clockcs_8_IBUF_761,
      O => Mcompar_bpm_cmp_lt0000_lut(1)
    );
  Mcompar_bpm_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(0),
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(1),
      O => Mcompar_bpm_cmp_lt0000_cy(1)
    );
  Mcompar_bpm_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(1),
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_rt_210,
      O => Mcompar_bpm_cmp_lt0000_cy(2)
    );
  Mcompar_bpm_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_10_IBUF_734,
      I1 => average_clockcs_11_IBUF_735,
      I2 => average_clockcs_12_IBUF_736,
      I3 => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_lut(3)
    );
  Mcompar_bpm_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(2),
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(3),
      O => Mcompar_bpm_cmp_lt0000_cy(3)
    );
  Mcompar_bpm_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(3),
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_4_rt_266,
      O => Mcompar_bpm_cmp_lt0000_cy(4)
    );
  Mcompar_bpm_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(4),
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(5),
      O => Mcompar_bpm_cmp_lt0000_cy(5)
    );
  Mcompar_bpm_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_16_IBUF_740,
      I1 => average_clockcs_17_IBUF_741,
      I2 => average_clockcs_18_IBUF_742,
      I3 => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut(6)
    );
  Mcompar_bpm_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(5),
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut(6),
      O => Mcompar_bpm_cmp_lt0000_cy(6)
    );
  Mcompar_bpm_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      I1 => average_clockcs_21_IBUF_746,
      I2 => average_clockcs_22_IBUF_747,
      I3 => average_clockcs_23_IBUF_748,
      O => Mcompar_bpm_cmp_lt0000_lut(7)
    );
  Mcompar_bpm_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(6),
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(7),
      O => Mcompar_bpm_cmp_lt0000_cy(7)
    );
  Mcompar_bpm_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_24_IBUF_749,
      I1 => average_clockcs_25_IBUF_750,
      I2 => average_clockcs_26_IBUF_751,
      I3 => average_clockcs_27_IBUF_752,
      O => Mcompar_bpm_cmp_lt0000_lut(8)
    );
  Mcompar_bpm_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(7),
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(8),
      O => Mcompar_bpm_cmp_lt0000_cy(8)
    );
  Mcompar_bpm_cmp_lt0000_lut_9_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_28_IBUF_753,
      I1 => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut(9)
    );
  Mcompar_bpm_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(8),
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(9),
      O => Mcompar_bpm_cmp_lt0000_cy(9)
    );
  Mcompar_bpm_cmp_lt0000_lut_0_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      I1 => average_clockcs_4_IBUF_757,
      I2 => average_clockcs_5_IBUF_758,
      I3 => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_lut(0)
    );
  Mcompar_bpm_cmp_lt0000_cy_0_0 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut(0),
      O => Mcompar_bpm_cmp_lt0000_cy_0_1_19
    );
  Mcompar_bpm_cmp_lt0000_lut_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      I1 => average_clockcs_8_IBUF_761,
      O => Mcompar_bpm_cmp_lt0000_lut_1_1_486
    );
  Mcompar_bpm_cmp_lt0000_cy_1_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_1_19,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_1_1_486,
      O => Mcompar_bpm_cmp_lt0000_cy_1_1_152
    );
  Mcompar_bpm_cmp_lt0000_lut_2_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_9_IBUF_762,
      I1 => average_clockcs_10_IBUF_734,
      I2 => average_clockcs_11_IBUF_735,
      O => Mcompar_bpm_cmp_lt0000_lut(2)
    );
  Mcompar_bpm_cmp_lt0000_cy_2_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_1_152,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(2),
      O => Mcompar_bpm_cmp_lt0000_cy_2_1_176
    );
  Mcompar_bpm_cmp_lt0000_cy_3_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_1_176,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_3_0_rt_234,
      O => Mcompar_bpm_cmp_lt0000_cy_3_1_212
    );
  Mcompar_bpm_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_13_IBUF_737,
      I1 => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_lut(4)
    );
  Mcompar_bpm_cmp_lt0000_cy_4_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_1_212,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(4),
      O => Mcompar_bpm_cmp_lt0000_cy_4_1_236
    );
  Mcompar_bpm_cmp_lt0000_lut_5_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_15_IBUF_739,
      I1 => average_clockcs_16_IBUF_740,
      I2 => average_clockcs_17_IBUF_741,
      I3 => average_clockcs_18_IBUF_742,
      O => Mcompar_bpm_cmp_lt0000_lut_5_1_554
    );
  Mcompar_bpm_cmp_lt0000_cy_5_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_1_236,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_5_1_554,
      O => Mcompar_bpm_cmp_lt0000_cy_5_1_268
    );
  Mcompar_bpm_cmp_lt0000_cy_6_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_1_268,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_6_0_rt_314,
      O => Mcompar_bpm_cmp_lt0000_cy_6_1_292
    );
  Mcompar_bpm_cmp_lt0000_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      I1 => average_clockcs_21_IBUF_746,
      I2 => average_clockcs_22_IBUF_747,
      I3 => average_clockcs_23_IBUF_748,
      O => Mcompar_bpm_cmp_lt0000_lut_7_1_592
    );
  Mcompar_bpm_cmp_lt0000_cy_7_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_1_292,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_1_592,
      O => Mcompar_bpm_cmp_lt0000_cy_7_1_322
    );
  Mcompar_bpm_cmp_lt0000_lut_8_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_24_IBUF_749,
      I1 => average_clockcs_25_IBUF_750,
      I2 => average_clockcs_26_IBUF_751,
      I3 => average_clockcs_27_IBUF_752,
      O => Mcompar_bpm_cmp_lt0000_lut_8_1_613
    );
  Mcompar_bpm_cmp_lt0000_cy_8_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_1_322,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_8_1_613,
      O => Mcompar_bpm_cmp_lt0000_cy_8_1_347
    );
  Mcompar_bpm_cmp_lt0000_lut_9_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_28_IBUF_753,
      I1 => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_9_1_626
    );
  Mcompar_bpm_cmp_lt0000_cy_9_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_1_347,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_1_626,
      O => Mcompar_bpm_cmp_lt0000_cy_9_1_380
    );
  Mcompar_bpm_cmp_lt0000_lut_0_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      I1 => average_clockcs_1_IBUF_744,
      I2 => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_0_1_407
    );
  Mcompar_bpm_cmp_lt0000_cy_0_1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_1_407,
      O => Mcompar_bpm_cmp_lt0000_cy_0_2_30
    );
  Mcompar_bpm_cmp_lt0000_lut_1_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      I1 => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_lut_1_2_497
    );
  Mcompar_bpm_cmp_lt0000_cy_1_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_2_30,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_2_497,
      O => Mcompar_bpm_cmp_lt0000_cy_1_2_163
    );
  Mcompar_bpm_cmp_lt0000_cy_2_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_2_163,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_1_rt_205,
      O => Mcompar_bpm_cmp_lt0000_cy_2_2_187
    );
  Mcompar_bpm_cmp_lt0000_lut_3_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_6_IBUF_759,
      I1 => average_clockcs_7_IBUF_760,
      I2 => average_clockcs_8_IBUF_761,
      O => Mcompar_bpm_cmp_lt0000_lut_3_1_518
    );
  Mcompar_bpm_cmp_lt0000_cy_3_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_2_187,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_1_518,
      O => Mcompar_bpm_cmp_lt0000_cy_3_2_223
    );
  Mcompar_bpm_cmp_lt0000_lut_4_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_9_IBUF_762,
      I1 => average_clockcs_10_IBUF_734,
      I2 => average_clockcs_11_IBUF_735,
      I3 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_lut_4_1_540
    );
  Mcompar_bpm_cmp_lt0000_cy_4_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_2_223,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_1_540,
      O => Mcompar_bpm_cmp_lt0000_cy_4_2_247
    );
  Mcompar_bpm_cmp_lt0000_cy_5_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_2_247,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_5_1_rt_290,
      O => Mcompar_bpm_cmp_lt0000_cy_5_2_279
    );
  Mcompar_bpm_cmp_lt0000_cy_6_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_2_279,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_6_1,
      O => Mcompar_bpm_cmp_lt0000_cy_6_2_303
    );
  Mcompar_bpm_cmp_lt0000_lut_7_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_15_IBUF_739,
      I1 => average_clockcs_16_IBUF_740,
      O => Mcompar_bpm_cmp_lt0000_lut_7_2_603
    );
  Mcompar_bpm_cmp_lt0000_cy_7_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_2_303,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_7_2_603,
      O => Mcompar_bpm_cmp_lt0000_cy_7_2_333
    );
  Mcompar_bpm_cmp_lt0000_lut_8_2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_17_IBUF_741,
      I1 => average_clockcs_18_IBUF_742,
      I2 => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_8_2_617
    );
  Mcompar_bpm_cmp_lt0000_cy_8_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_2_333,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_8_2_617,
      O => Mcompar_bpm_cmp_lt0000_cy_8_2_358
    );
  Mcompar_bpm_cmp_lt0000_cy_9_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_2_358,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_9_1_rt_404,
      O => Mcompar_bpm_cmp_lt0000_cy_9_2_391
    );
  Mcompar_bpm_cmp_lt0000_lut_10_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut(10)
    );
  Mcompar_bpm_cmp_lt0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_2_391,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(10),
      O => Mcompar_bpm_cmp_lt0000_cy(10)
    );
  Mcompar_bpm_cmp_lt0000_lut_11_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut(11)
    );
  Mcompar_bpm_cmp_lt0000_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(10),
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(11),
      O => Mcompar_bpm_cmp_lt0000_cy(11)
    );
  Mcompar_bpm_cmp_lt0000_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(11),
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(12),
      O => Mcompar_bpm_cmp_lt0000_cy(12)
    );
  Mcompar_bpm_cmp_lt0000_lut_0_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_1_IBUF_744,
      I1 => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_0_2_412
    );
  Mcompar_bpm_cmp_lt0000_cy_0_2 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_2_412,
      O => Mcompar_bpm_cmp_lt0000_cy_0_3_34
    );
  Mcompar_bpm_cmp_lt0000_cy_1_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_3_34,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_3,
      O => Mcompar_bpm_cmp_lt0000_cy_1_3_167
    );
  Mcompar_bpm_cmp_lt0000_cy_2_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_3_167,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_2_rt_207,
      O => Mcompar_bpm_cmp_lt0000_cy_2_3_191
    );
  Mcompar_bpm_cmp_lt0000_lut_3_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_5_IBUF_758,
      I1 => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_lut_3_2_529
    );
  Mcompar_bpm_cmp_lt0000_cy_3_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_3_191,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_2_529,
      O => Mcompar_bpm_cmp_lt0000_cy_3_3_227
    );
  Mcompar_bpm_cmp_lt0000_lut_4_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      I1 => average_clockcs_8_IBUF_761,
      I2 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_4_2_545
    );
  Mcompar_bpm_cmp_lt0000_cy_4_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_3_227,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_2_545,
      O => Mcompar_bpm_cmp_lt0000_cy_4_3_251
    );
  Mcompar_bpm_cmp_lt0000_cy_5_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_3_251,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_2,
      O => Mcompar_bpm_cmp_lt0000_cy_5_3_283
    );
  Mcompar_bpm_cmp_lt0000_lut_6_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_11_IBUF_735,
      I1 => average_clockcs_12_IBUF_736,
      I2 => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_lut_6_2_583
    );
  Mcompar_bpm_cmp_lt0000_cy_6_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_3_283,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_2_583,
      O => Mcompar_bpm_cmp_lt0000_cy_6_3_307
    );
  Mcompar_bpm_cmp_lt0000_lut_7_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      I1 => average_clockcs_15_IBUF_739,
      I2 => average_clockcs_16_IBUF_740,
      I3 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_lut_7_3_605
    );
  Mcompar_bpm_cmp_lt0000_cy_7_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_3_307,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_3_605,
      O => Mcompar_bpm_cmp_lt0000_cy_7_3_337
    );
  Mcompar_bpm_cmp_lt0000_lut_8_3 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      I1 => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_8_3_618
    );
  Mcompar_bpm_cmp_lt0000_cy_8_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_3_337,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_8_3_618,
      O => Mcompar_bpm_cmp_lt0000_cy_8_3_362
    );
  Mcompar_bpm_cmp_lt0000_cy_9_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_3_362,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_9_2_rt_405,
      O => Mcompar_bpm_cmp_lt0000_cy_9_3_395
    );
  Mcompar_bpm_cmp_lt0000_lut_10_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut_10_1_421
    );
  Mcompar_bpm_cmp_lt0000_cy_10_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_3_395,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_10_1_421,
      O => Mcompar_bpm_cmp_lt0000_cy_10_1_51
    );
  Mcompar_bpm_cmp_lt0000_lut_11_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut_11_1_433
    );
  Mcompar_bpm_cmp_lt0000_cy_11_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_1_51,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_1_433,
      O => Mcompar_bpm_cmp_lt0000_cy_11_1_79
    );
  Mcompar_bpm_cmp_lt0000_cy_12_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_1_79,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_12_1,
      O => Mcompar_bpm_cmp_lt0000_cy_12_1_99
    );
  Mcompar_bpm_cmp_lt0000_lut_0_3 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      I1 => average_clockcs_1_IBUF_744,
      I2 => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_0_3_413
    );
  Mcompar_bpm_cmp_lt0000_cy_0_3 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_3_413,
      O => Mcompar_bpm_cmp_lt0000_cy_0_4_35
    );
  Mcompar_bpm_cmp_lt0000_lut_1_4 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      I1 => average_clockcs_4_IBUF_757,
      I2 => average_clockcs_5_IBUF_758,
      O => Mcompar_bpm_cmp_lt0000_lut_1_4_501
    );
  Mcompar_bpm_cmp_lt0000_cy_1_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_4_35,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_4_501,
      O => Mcompar_bpm_cmp_lt0000_cy_1_4_168
    );
  Mcompar_bpm_cmp_lt0000_cy_2_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_4_168,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_3_rt_208,
      O => Mcompar_bpm_cmp_lt0000_cy_2_4_192
    );
  Mcompar_bpm_cmp_lt0000_lut_3_3 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      I1 => average_clockcs_8_IBUF_761,
      I2 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_3_3_532
    );
  Mcompar_bpm_cmp_lt0000_cy_3_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_4_192,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_3_532,
      O => Mcompar_bpm_cmp_lt0000_cy_3_4_228
    );
  Mcompar_bpm_cmp_lt0000_cy_4_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_4_228,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_4_3_rt_262,
      O => Mcompar_bpm_cmp_lt0000_cy_4_4_252
    );
  Mcompar_bpm_cmp_lt0000_cy_5_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_4_252,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_3,
      O => Mcompar_bpm_cmp_lt0000_cy_5_4_284
    );
  Mcompar_bpm_cmp_lt0000_lut_6_3 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_12_IBUF_736,
      I1 => average_clockcs_13_IBUF_737,
      I2 => average_clockcs_14_IBUF_738,
      I3 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_lut_6_3_584
    );
  Mcompar_bpm_cmp_lt0000_cy_6_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_4_284,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_3_584,
      O => Mcompar_bpm_cmp_lt0000_cy_6_4_308
    );
  Mcompar_bpm_cmp_lt0000_lut_7_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_16_IBUF_740,
      I1 => average_clockcs_17_IBUF_741,
      I2 => average_clockcs_18_IBUF_742,
      I3 => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_7_4_606
    );
  Mcompar_bpm_cmp_lt0000_cy_7_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_4_308,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_4_606,
      O => Mcompar_bpm_cmp_lt0000_cy_7_4_338
    );
  Mcompar_bpm_cmp_lt0000_cy_8_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_4_338,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_8_3_rt_374,
      O => Mcompar_bpm_cmp_lt0000_cy_8_4_363
    );
  Mcompar_bpm_cmp_lt0000_lut_9_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut_9_2_636
    );
  Mcompar_bpm_cmp_lt0000_cy_9_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_4_363,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_2_636,
      O => Mcompar_bpm_cmp_lt0000_cy_9_4_396
    );
  Mcompar_bpm_cmp_lt0000_lut_10_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut_10_2_424
    );
  Mcompar_bpm_cmp_lt0000_cy_10_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_4_396,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_10_2_424,
      O => Mcompar_bpm_cmp_lt0000_cy_10_2_62
    );
  Mcompar_bpm_cmp_lt0000_cy_11_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_2_62,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_2,
      O => Mcompar_bpm_cmp_lt0000_cy_11_2_89
    );
  Mcompar_bpm_cmp_lt0000_lut_0_4 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      I1 => average_clockcs_1_IBUF_744,
      I2 => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_0_4_414
    );
  Mcompar_bpm_cmp_lt0000_cy_0_4 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_4_414,
      O => Mcompar_bpm_cmp_lt0000_cy_0_5_36
    );
  Mcompar_bpm_cmp_lt0000_cy_1_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_5_36,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_5,
      O => Mcompar_bpm_cmp_lt0000_cy_1_5_169
    );
  Mcompar_bpm_cmp_lt0000_lut_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_4_IBUF_757,
      I1 => average_clockcs_5_IBUF_758,
      O => Mcompar_bpm_cmp_lt0000_lut_2_1_508
    );
  Mcompar_bpm_cmp_lt0000_cy_2_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_5_169,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_2_1_508,
      O => Mcompar_bpm_cmp_lt0000_cy_2_5_193
    );
  Mcompar_bpm_cmp_lt0000_cy_3_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_5_193,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_4,
      O => Mcompar_bpm_cmp_lt0000_cy_3_5_229
    );
  Mcompar_bpm_cmp_lt0000_cy_4_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_5_229,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_4_4_rt_263,
      O => Mcompar_bpm_cmp_lt0000_cy_4_5_253
    );
  Mcompar_bpm_cmp_lt0000_cy_5_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_5_253,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_4,
      O => Mcompar_bpm_cmp_lt0000_cy_5_5_285
    );
  Mcompar_bpm_cmp_lt0000_lut_6_4 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_9_IBUF_762,
      I1 => average_clockcs_10_IBUF_734,
      I2 => average_clockcs_11_IBUF_735,
      I3 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_lut_6_4_585
    );
  Mcompar_bpm_cmp_lt0000_cy_6_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_5_285,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_4_585,
      O => Mcompar_bpm_cmp_lt0000_cy_6_5_309
    );
  Mcompar_bpm_cmp_lt0000_lut_7_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_13_IBUF_737,
      I1 => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_lut_7_5_607
    );
  Mcompar_bpm_cmp_lt0000_cy_7_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_5_309,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_5_607,
      O => Mcompar_bpm_cmp_lt0000_cy_7_5_339
    );
  Mcompar_bpm_cmp_lt0000_cy_8_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_5_339,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_8_4_rt_375,
      O => Mcompar_bpm_cmp_lt0000_cy_8_5_364
    );
  Mcompar_bpm_cmp_lt0000_lut_9_3 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_16_IBUF_740,
      I1 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_lut_9_3_637
    );
  Mcompar_bpm_cmp_lt0000_cy_9_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_5_364,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_3_637,
      O => Mcompar_bpm_cmp_lt0000_cy_9_5_397
    );
  Mcompar_bpm_cmp_lt0000_cy_10_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_5_397,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_10_2_rt_74,
      O => Mcompar_bpm_cmp_lt0000_cy_10_3_63
    );
  Mcompar_bpm_cmp_lt0000_cy_11_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_3_63,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_3,
      O => Mcompar_bpm_cmp_lt0000_cy_11_3_90
    );
  Mcompar_bpm_cmp_lt0000_cy_12_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_3_90,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_12_1_rt_116,
      O => Mcompar_bpm_cmp_lt0000_cy_12_2_105
    );
  Mcompar_bpm_cmp_lt0000_lut_13_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut(13)
    );
  Mcompar_bpm_cmp_lt0000_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_2_105,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(13),
      O => Mcompar_bpm_cmp_lt0000_cy(13)
    );
  Mcompar_bpm_cmp_lt0000_lut_14_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut(14)
    );
  Mcompar_bpm_cmp_lt0000_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(13),
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(14),
      O => Mcompar_bpm_cmp_lt0000_cy(14)
    );
  Mcompar_bpm_cmp_lt0000_cy_15_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy(14),
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(15),
      O => Mcompar_bpm_cmp_lt0000_cy(15)
    );
  Mcompar_bpm_cmp_lt0000_lut_0_5 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      I1 => average_clockcs_4_IBUF_757,
      I2 => average_clockcs_5_IBUF_758,
      O => Mcompar_bpm_cmp_lt0000_lut_0_5_415
    );
  Mcompar_bpm_cmp_lt0000_cy_0_5 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_5_415,
      O => Mcompar_bpm_cmp_lt0000_cy_0_6_37
    );
  Mcompar_bpm_cmp_lt0000_cy_1_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_6_37,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_6,
      O => Mcompar_bpm_cmp_lt0000_cy_1_6_170
    );
  Mcompar_bpm_cmp_lt0000_lut_2_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      I1 => average_clockcs_8_IBUF_761,
      I2 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_2_2_509
    );
  Mcompar_bpm_cmp_lt0000_cy_2_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_6_170,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_2_2_509,
      O => Mcompar_bpm_cmp_lt0000_cy_2_6_194
    );
  Mcompar_bpm_cmp_lt0000_cy_3_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_6_194,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_5,
      O => Mcompar_bpm_cmp_lt0000_cy_3_6_230
    );
  Mcompar_bpm_cmp_lt0000_lut_4_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_11_IBUF_735,
      I1 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_lut_4_3_546
    );
  Mcompar_bpm_cmp_lt0000_cy_4_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_6_230,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_3_546,
      O => Mcompar_bpm_cmp_lt0000_cy_4_6_254
    );
  Mcompar_bpm_cmp_lt0000_lut_5_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_13_IBUF_737,
      I1 => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_lut_5_5_570
    );
  Mcompar_bpm_cmp_lt0000_cy_5_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_6_254,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_5_570,
      O => Mcompar_bpm_cmp_lt0000_cy_5_6_286
    );
  Mcompar_bpm_cmp_lt0000_cy_6_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_6_286,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_6_5_rt_319,
      O => Mcompar_bpm_cmp_lt0000_cy_6_6_310
    );
  Mcompar_bpm_cmp_lt0000_cy_7_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_6_310,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_6,
      O => Mcompar_bpm_cmp_lt0000_cy_7_6_340
    );
  Mcompar_bpm_cmp_lt0000_cy_8_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_6_340,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_8_5_rt_376,
      O => Mcompar_bpm_cmp_lt0000_cy_8_6_365
    );
  Mcompar_bpm_cmp_lt0000_lut_9_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      I1 => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_9_4_638
    );
  Mcompar_bpm_cmp_lt0000_cy_9_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_6_365,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_4_638,
      O => Mcompar_bpm_cmp_lt0000_cy_9_6_398
    );
  Mcompar_bpm_cmp_lt0000_cy_10_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_6_398,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_10_3_rt_75,
      O => Mcompar_bpm_cmp_lt0000_cy_10_4_64
    );
  Mcompar_bpm_cmp_lt0000_lut_11_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut_11_4_444
    );
  Mcompar_bpm_cmp_lt0000_cy_11_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_4_64,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_4_444,
      O => Mcompar_bpm_cmp_lt0000_cy_11_4_91
    );
  Mcompar_bpm_cmp_lt0000_lut_12_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut_12_2_452
    );
  Mcompar_bpm_cmp_lt0000_cy_12_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_4_91,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_12_2_452,
      O => Mcompar_bpm_cmp_lt0000_cy_12_3_106
    );
  Mcompar_bpm_cmp_lt0000_cy_13_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_3_106,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_13_1,
      O => Mcompar_bpm_cmp_lt0000_cy_13_1_121
    );
  Mcompar_bpm_cmp_lt0000_lut_0_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      I1 => average_clockcs_1_IBUF_744,
      O => Mcompar_bpm_cmp_lt0000_lut_0_6_416
    );
  Mcompar_bpm_cmp_lt0000_cy_0_6 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_6_416,
      O => Mcompar_bpm_cmp_lt0000_cy_0_7_38
    );
  Mcompar_bpm_cmp_lt0000_lut_1_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_2_IBUF_755,
      I1 => average_clockcs_3_IBUF_756,
      I2 => average_clockcs_4_IBUF_757,
      I3 => average_clockcs_5_IBUF_758,
      O => Mcompar_bpm_cmp_lt0000_lut_1_7_504
    );
  Mcompar_bpm_cmp_lt0000_cy_1_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_7_38,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_7_504,
      O => Mcompar_bpm_cmp_lt0000_cy_1_7_171
    );
  Mcompar_bpm_cmp_lt0000_lut_2_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_6_IBUF_759,
      I1 => average_clockcs_7_IBUF_760,
      I2 => average_clockcs_8_IBUF_761,
      I3 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_2_3_510
    );
  Mcompar_bpm_cmp_lt0000_cy_2_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_7_171,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_2_3_510,
      O => Mcompar_bpm_cmp_lt0000_cy_2_7_195
    );
  Mcompar_bpm_cmp_lt0000_lut_3_6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_10_IBUF_734,
      I1 => average_clockcs_11_IBUF_735,
      O => Mcompar_bpm_cmp_lt0000_lut_3_6_535
    );
  Mcompar_bpm_cmp_lt0000_cy_3_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_7_195,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_6_535,
      O => Mcompar_bpm_cmp_lt0000_cy_3_7_231
    );
  Mcompar_bpm_cmp_lt0000_cy_4_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_7_231,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_4_6_rt_264,
      O => Mcompar_bpm_cmp_lt0000_cy_4_7_255
    );
  Mcompar_bpm_cmp_lt0000_lut_5_6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_13_IBUF_737,
      I1 => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_lut_5_6_571
    );
  Mcompar_bpm_cmp_lt0000_cy_5_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_7_255,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_6_571,
      O => Mcompar_bpm_cmp_lt0000_cy_5_7_287
    );
  Mcompar_bpm_cmp_lt0000_lut_6_5 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_15_IBUF_739,
      I1 => average_clockcs_16_IBUF_740,
      I2 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_lut_6_5_586
    );
  Mcompar_bpm_cmp_lt0000_cy_6_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_7_287,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_5_586,
      O => Mcompar_bpm_cmp_lt0000_cy_6_7_311
    );
  Mcompar_bpm_cmp_lt0000_lut_7_7 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      I1 => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_7_7_609
    );
  Mcompar_bpm_cmp_lt0000_cy_7_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_7_311,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_7_609,
      O => Mcompar_bpm_cmp_lt0000_cy_7_7_341
    );
  Mcompar_bpm_cmp_lt0000_cy_8_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_7_341,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_8_6_rt_377,
      O => Mcompar_bpm_cmp_lt0000_cy_8_7_366
    );
  Mcompar_bpm_cmp_lt0000_lut_9_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut_9_5_639
    );
  Mcompar_bpm_cmp_lt0000_cy_9_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_7_366,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_5_639,
      O => Mcompar_bpm_cmp_lt0000_cy_9_7_399
    );
  Mcompar_bpm_cmp_lt0000_lut_10_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut_10_3_425
    );
  Mcompar_bpm_cmp_lt0000_cy_10_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_7_399,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_10_3_425,
      O => Mcompar_bpm_cmp_lt0000_cy_10_5_65
    );
  Mcompar_bpm_cmp_lt0000_cy_11_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_5_65,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_5,
      O => Mcompar_bpm_cmp_lt0000_cy_11_5_92
    );
  Mcompar_bpm_cmp_lt0000_lut_0_7 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      I1 => average_clockcs_1_IBUF_744,
      I2 => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_0_7_417
    );
  Mcompar_bpm_cmp_lt0000_cy_0_7 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_7_417,
      O => Mcompar_bpm_cmp_lt0000_cy_0_8_39
    );
  Mcompar_bpm_cmp_lt0000_lut_1_8 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      I1 => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_lut_1_8_505
    );
  Mcompar_bpm_cmp_lt0000_cy_1_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_8_39,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_8_505,
      O => Mcompar_bpm_cmp_lt0000_cy_1_8_172
    );
  Mcompar_bpm_cmp_lt0000_lut_2_4 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_5_IBUF_758,
      I1 => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_lut_2_4_511
    );
  Mcompar_bpm_cmp_lt0000_cy_2_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_8_172,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_2_4_511,
      O => Mcompar_bpm_cmp_lt0000_cy_2_8_196
    );
  Mcompar_bpm_cmp_lt0000_lut_3_7 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      I1 => average_clockcs_8_IBUF_761,
      I2 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_3_7_536
    );
  Mcompar_bpm_cmp_lt0000_cy_3_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_8_196,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_7_536,
      O => Mcompar_bpm_cmp_lt0000_cy_3_8_232
    );
  Mcompar_bpm_cmp_lt0000_lut_4_4 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_10_IBUF_734,
      I1 => average_clockcs_11_IBUF_735,
      I2 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_lut_4_4_547
    );
  Mcompar_bpm_cmp_lt0000_cy_4_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_8_232,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_4_547,
      O => Mcompar_bpm_cmp_lt0000_cy_4_8_256
    );
  Mcompar_bpm_cmp_lt0000_lut_5_7 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_13_IBUF_737,
      I1 => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_lut_5_7_572
    );
  Mcompar_bpm_cmp_lt0000_cy_5_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_8_256,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_7_572,
      O => Mcompar_bpm_cmp_lt0000_cy_5_8_288
    );
  Mcompar_bpm_cmp_lt0000_cy_6_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_8_288,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_6_7_rt_320,
      O => Mcompar_bpm_cmp_lt0000_cy_6_8_312
    );
  Mcompar_bpm_cmp_lt0000_lut_7_8 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_16_IBUF_740,
      I1 => average_clockcs_17_IBUF_741,
      I2 => average_clockcs_18_IBUF_742,
      O => Mcompar_bpm_cmp_lt0000_lut_7_8_610
    );
  Mcompar_bpm_cmp_lt0000_cy_7_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_8_312,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_8_610,
      O => Mcompar_bpm_cmp_lt0000_cy_7_8_342
    );
  Mcompar_bpm_cmp_lt0000_lut_8_4 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_19_IBUF_743,
      I1 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_lut_8_4_619
    );
  Mcompar_bpm_cmp_lt0000_cy_8_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_8_342,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_8_4_619,
      O => Mcompar_bpm_cmp_lt0000_cy_8_8_367
    );
  Mcompar_bpm_cmp_lt0000_lut_9_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut_9_6_640
    );
  Mcompar_bpm_cmp_lt0000_cy_9_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_8_367,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_6_640,
      O => Mcompar_bpm_cmp_lt0000_cy_9_8_400
    );
  Mcompar_bpm_cmp_lt0000_lut_10_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut_10_4_426
    );
  Mcompar_bpm_cmp_lt0000_cy_10_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_8_400,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_10_4_426,
      O => Mcompar_bpm_cmp_lt0000_cy_10_6_66
    );
  Mcompar_bpm_cmp_lt0000_cy_11_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_6_66,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_6,
      O => Mcompar_bpm_cmp_lt0000_cy_11_6_93
    );
  Mcompar_bpm_cmp_lt0000_lut_0_8 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      I1 => average_clockcs_1_IBUF_744,
      O => Mcompar_bpm_cmp_lt0000_lut_0_8_418
    );
  Mcompar_bpm_cmp_lt0000_cy_0_8 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_8_418,
      O => Mcompar_bpm_cmp_lt0000_cy_0_9_40
    );
  Mcompar_bpm_cmp_lt0000_cy_1_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_9_40,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_9,
      O => Mcompar_bpm_cmp_lt0000_cy_1_9_173
    );
  Mcompar_bpm_cmp_lt0000_lut_2_5 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      I1 => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_lut_2_5_512
    );
  Mcompar_bpm_cmp_lt0000_cy_2_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_9_173,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_2_5_512,
      O => Mcompar_bpm_cmp_lt0000_cy_2_9_197
    );
  Mcompar_bpm_cmp_lt0000_cy_3_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_9_197,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_8,
      O => Mcompar_bpm_cmp_lt0000_cy_3_9_233
    );
  Mcompar_bpm_cmp_lt0000_cy_4_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_9_233,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_4_8_rt_265,
      O => Mcompar_bpm_cmp_lt0000_cy_4_9_257
    );
  Mcompar_bpm_cmp_lt0000_lut_5_8 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      I1 => average_clockcs_8_IBUF_761,
      I2 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_5_8_573
    );
  Mcompar_bpm_cmp_lt0000_cy_5_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_9_257,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_8_573,
      O => Mcompar_bpm_cmp_lt0000_cy_5_9_289
    );
  Mcompar_bpm_cmp_lt0000_lut_6_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_10_IBUF_734,
      I1 => average_clockcs_11_IBUF_735,
      O => Mcompar_bpm_cmp_lt0000_lut_6_6_587
    );
  Mcompar_bpm_cmp_lt0000_cy_6_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_9_289,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_6_587,
      O => Mcompar_bpm_cmp_lt0000_cy_6_9_313
    );
  Mcompar_bpm_cmp_lt0000_lut_7_9 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_12_IBUF_736,
      I1 => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_lut_7_9_611
    );
  Mcompar_bpm_cmp_lt0000_cy_7_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_9_313,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_9_611,
      O => Mcompar_bpm_cmp_lt0000_cy_7_9_343
    );
  Mcompar_bpm_cmp_lt0000_lut_8_5 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      I1 => average_clockcs_15_IBUF_739,
      I2 => average_clockcs_16_IBUF_740,
      O => Mcompar_bpm_cmp_lt0000_lut_8_5_620
    );
  Mcompar_bpm_cmp_lt0000_cy_8_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_9_343,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_8_5_620,
      O => Mcompar_bpm_cmp_lt0000_cy_8_9_368
    );
  Mcompar_bpm_cmp_lt0000_cy_9_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_9_368,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_7,
      O => Mcompar_bpm_cmp_lt0000_cy_9_9_401
    );
  Mcompar_bpm_cmp_lt0000_cy_10_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_9_401,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_10_6_rt_76,
      O => Mcompar_bpm_cmp_lt0000_cy_10_7_67
    );
  Mcompar_bpm_cmp_lt0000_cy_11_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_7_67,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_7,
      O => Mcompar_bpm_cmp_lt0000_cy_11_7_94
    );
  Mcompar_bpm_cmp_lt0000_cy_12_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_7_94,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_12_3_rt_117,
      O => Mcompar_bpm_cmp_lt0000_cy_12_4_107
    );
  Mcompar_bpm_cmp_lt0000_lut_13_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut_13_2_462
    );
  Mcompar_bpm_cmp_lt0000_cy_13_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_4_107,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_13_2_462,
      O => Mcompar_bpm_cmp_lt0000_cy_13_2_124
    );
  Mcompar_bpm_cmp_lt0000_lut_14_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut_14_1_471
    );
  Mcompar_bpm_cmp_lt0000_cy_14_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_13_2_124,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_14_1_471,
      O => Mcompar_bpm_cmp_lt0000_cy_14_1_133
    );
  Mcompar_bpm_cmp_lt0000_cy_15_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_14_1_133,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_15_1,
      O => Mcompar_bpm_cmp_lt0000_cy_15_1_143
    );
  Mcompar_bpm_cmp_lt0000_cy_0_9 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_0_9_rt_48,
      O => Mcompar_bpm_cmp_lt0000_cy_0_10_20
    );
  Mcompar_bpm_cmp_lt0000_lut_1_10 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_5_IBUF_758,
      I1 => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_lut_1_10_487
    );
  Mcompar_bpm_cmp_lt0000_cy_1_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_10_20,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_10_487,
      O => Mcompar_bpm_cmp_lt0000_cy_1_10_153
    );
  Mcompar_bpm_cmp_lt0000_cy_2_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_10_153,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_9_rt_209,
      O => Mcompar_bpm_cmp_lt0000_cy_2_10_177
    );
  Mcompar_bpm_cmp_lt0000_cy_3_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_10_177,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_9,
      O => Mcompar_bpm_cmp_lt0000_cy_3_10_213
    );
  Mcompar_bpm_cmp_lt0000_lut_4_5 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_9_IBUF_762,
      I1 => average_clockcs_10_IBUF_734,
      I2 => average_clockcs_11_IBUF_735,
      I3 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_lut_4_5_548
    );
  Mcompar_bpm_cmp_lt0000_cy_4_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_10_213,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_5_548,
      O => Mcompar_bpm_cmp_lt0000_cy_4_10_237
    );
  Mcompar_bpm_cmp_lt0000_lut_5_9 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_13_IBUF_737,
      I1 => average_clockcs_14_IBUF_738,
      I2 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_lut_5_9_574
    );
  Mcompar_bpm_cmp_lt0000_cy_5_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_10_237,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_9_574,
      O => Mcompar_bpm_cmp_lt0000_cy_5_10_269
    );
  Mcompar_bpm_cmp_lt0000_lut_6_7 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_16_IBUF_740,
      I1 => average_clockcs_17_IBUF_741,
      I2 => average_clockcs_18_IBUF_742,
      O => Mcompar_bpm_cmp_lt0000_lut_6_7_588
    );
  Mcompar_bpm_cmp_lt0000_cy_6_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_10_269,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_7_588,
      O => Mcompar_bpm_cmp_lt0000_cy_6_10_293
    );
  Mcompar_bpm_cmp_lt0000_cy_7_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_10_293,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_10,
      O => Mcompar_bpm_cmp_lt0000_cy_7_10_323
    );
  Mcompar_bpm_cmp_lt0000_cy_8_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_10_323,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_8_9_rt_378,
      O => Mcompar_bpm_cmp_lt0000_cy_8_10_348
    );
  Mcompar_bpm_cmp_lt0000_lut_9_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut_9_8_642
    );
  Mcompar_bpm_cmp_lt0000_cy_9_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_10_348,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_8_642,
      O => Mcompar_bpm_cmp_lt0000_cy_9_10_381
    );
  Mcompar_bpm_cmp_lt0000_lut_10_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut_10_5_427
    );
  Mcompar_bpm_cmp_lt0000_cy_10_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_10_381,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_10_5_427,
      O => Mcompar_bpm_cmp_lt0000_cy_10_8_68
    );
  Mcompar_bpm_cmp_lt0000_cy_11_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_8_68,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_8,
      O => Mcompar_bpm_cmp_lt0000_cy_11_8_95
    );
  Mcompar_bpm_cmp_lt0000_cy_0_10 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_0_10_rt_41,
      O => Mcompar_bpm_cmp_lt0000_cy_0_11_21
    );
  Mcompar_bpm_cmp_lt0000_lut_1_11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_8_IBUF_761,
      I1 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_1_11_488
    );
  Mcompar_bpm_cmp_lt0000_cy_1_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_11_21,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_11_488,
      O => Mcompar_bpm_cmp_lt0000_cy_1_11_154
    );
  Mcompar_bpm_cmp_lt0000_cy_2_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_11_154,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_10_rt_198,
      O => Mcompar_bpm_cmp_lt0000_cy_2_11_178
    );
  Mcompar_bpm_cmp_lt0000_lut_3_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_11_IBUF_735,
      I1 => average_clockcs_12_IBUF_736,
      I2 => average_clockcs_13_IBUF_737,
      I3 => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_lut_3_10_519
    );
  Mcompar_bpm_cmp_lt0000_cy_3_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_11_178,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_10_519,
      O => Mcompar_bpm_cmp_lt0000_cy_3_11_214
    );
  Mcompar_bpm_cmp_lt0000_cy_4_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_11_214,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_4_10_rt_258,
      O => Mcompar_bpm_cmp_lt0000_cy_4_11_238
    );
  Mcompar_bpm_cmp_lt0000_cy_5_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_11_238,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_10,
      O => Mcompar_bpm_cmp_lt0000_cy_5_11_270
    );
  Mcompar_bpm_cmp_lt0000_lut_6_8 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_17_IBUF_741,
      I1 => average_clockcs_18_IBUF_742,
      I2 => average_clockcs_19_IBUF_743,
      I3 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_lut_6_8_589
    );
  Mcompar_bpm_cmp_lt0000_cy_6_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_11_270,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_8_589,
      O => Mcompar_bpm_cmp_lt0000_cy_6_11_294
    );
  Mcompar_bpm_cmp_lt0000_lut_7_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut_7_11_594
    );
  Mcompar_bpm_cmp_lt0000_cy_7_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_11_294,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_11_594,
      O => Mcompar_bpm_cmp_lt0000_cy_7_11_324
    );
  Mcompar_bpm_cmp_lt0000_lut_8_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut_8_6_621
    );
  Mcompar_bpm_cmp_lt0000_cy_8_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_11_324,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_8_6_621,
      O => Mcompar_bpm_cmp_lt0000_cy_8_11_349
    );
  Mcompar_bpm_cmp_lt0000_cy_9_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_11_349,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_9,
      O => Mcompar_bpm_cmp_lt0000_cy_9_11_382
    );
  Mcompar_bpm_cmp_lt0000_cy_0_11 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_0_11_rt_42,
      O => Mcompar_bpm_cmp_lt0000_cy_0_12_22
    );
  Mcompar_bpm_cmp_lt0000_cy_1_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_12_22,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_12,
      O => Mcompar_bpm_cmp_lt0000_cy_1_12_155
    );
  Mcompar_bpm_cmp_lt0000_cy_2_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_12_155,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_11_rt_199,
      O => Mcompar_bpm_cmp_lt0000_cy_2_12_179
    );
  Mcompar_bpm_cmp_lt0000_cy_3_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_12_179,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_11,
      O => Mcompar_bpm_cmp_lt0000_cy_3_12_215
    );
  Mcompar_bpm_cmp_lt0000_lut_4_6 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_5_IBUF_758,
      I1 => average_clockcs_6_IBUF_759,
      I2 => average_clockcs_7_IBUF_760,
      O => Mcompar_bpm_cmp_lt0000_lut_4_6_549
    );
  Mcompar_bpm_cmp_lt0000_cy_4_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_12_215,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_6_549,
      O => Mcompar_bpm_cmp_lt0000_cy_4_12_239
    );
  Mcompar_bpm_cmp_lt0000_cy_5_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_12_239,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_11,
      O => Mcompar_bpm_cmp_lt0000_cy_5_12_271
    );
  Mcompar_bpm_cmp_lt0000_lut_6_9 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_9_IBUF_762,
      I1 => average_clockcs_10_IBUF_734,
      I2 => average_clockcs_11_IBUF_735,
      O => Mcompar_bpm_cmp_lt0000_lut_6_9_590
    );
  Mcompar_bpm_cmp_lt0000_cy_6_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_12_271,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_9_590,
      O => Mcompar_bpm_cmp_lt0000_cy_6_12_295
    );
  Mcompar_bpm_cmp_lt0000_lut_7_12 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_12_IBUF_736,
      I1 => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_lut_7_12_595
    );
  Mcompar_bpm_cmp_lt0000_cy_7_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_12_295,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_12_595,
      O => Mcompar_bpm_cmp_lt0000_cy_7_12_325
    );
  Mcompar_bpm_cmp_lt0000_cy_8_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_12_325,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_8_11_rt_369,
      O => Mcompar_bpm_cmp_lt0000_cy_8_12_350
    );
  Mcompar_bpm_cmp_lt0000_lut_9_10 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_15_IBUF_739,
      I1 => average_clockcs_16_IBUF_740,
      O => Mcompar_bpm_cmp_lt0000_lut_9_10_627
    );
  Mcompar_bpm_cmp_lt0000_cy_9_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_12_350,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_10_627,
      O => Mcompar_bpm_cmp_lt0000_cy_9_12_383
    );
  Mcompar_bpm_cmp_lt0000_cy_10_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_12_383,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_10_8_rt_77,
      O => Mcompar_bpm_cmp_lt0000_cy_10_9_69
    );
  Mcompar_bpm_cmp_lt0000_cy_11_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_9_69,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_9,
      O => Mcompar_bpm_cmp_lt0000_cy_11_9_96
    );
  Mcompar_bpm_cmp_lt0000_lut_12_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_19_IBUF_743,
      I1 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_lut_12_3_453
    );
  Mcompar_bpm_cmp_lt0000_cy_12_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_9_96,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_12_3_453,
      O => Mcompar_bpm_cmp_lt0000_cy_12_5_108
    );
  Mcompar_bpm_cmp_lt0000_lut_13_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut_13_3_463
    );
  Mcompar_bpm_cmp_lt0000_cy_13_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_5_108,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_13_3_463,
      O => Mcompar_bpm_cmp_lt0000_cy_13_3_125
    );
  Mcompar_bpm_cmp_lt0000_lut_14_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut_14_2_472
    );
  Mcompar_bpm_cmp_lt0000_cy_14_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_13_3_125,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_14_2_472,
      O => Mcompar_bpm_cmp_lt0000_cy_14_2_134
    );
  Mcompar_bpm_cmp_lt0000_cy_15_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_14_2_134,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_15_2,
      O => Mcompar_bpm_cmp_lt0000_cy_15_2_144
    );
  Mcompar_bpm_cmp_lt0000_lut_0_9 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      I1 => average_clockcs_1_IBUF_744,
      O => Mcompar_bpm_cmp_lt0000_lut_0_9_419
    );
  Mcompar_bpm_cmp_lt0000_cy_0_12 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_9_419,
      O => Mcompar_bpm_cmp_lt0000_cy_0_13_23
    );
  Mcompar_bpm_cmp_lt0000_cy_1_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_13_23,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_13,
      O => Mcompar_bpm_cmp_lt0000_cy_1_13_156
    );
  Mcompar_bpm_cmp_lt0000_cy_2_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_13_156,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_12_rt_200,
      O => Mcompar_bpm_cmp_lt0000_cy_2_13_180
    );
  Mcompar_bpm_cmp_lt0000_lut_3_12 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_4_IBUF_757,
      I1 => average_clockcs_5_IBUF_758,
      O => Mcompar_bpm_cmp_lt0000_lut_3_12_521
    );
  Mcompar_bpm_cmp_lt0000_cy_3_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_13_180,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_12_521,
      O => Mcompar_bpm_cmp_lt0000_cy_3_13_216
    );
  Mcompar_bpm_cmp_lt0000_lut_4_7 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_6_IBUF_759,
      I1 => average_clockcs_7_IBUF_760,
      I2 => average_clockcs_8_IBUF_761,
      O => Mcompar_bpm_cmp_lt0000_lut_4_7_550
    );
  Mcompar_bpm_cmp_lt0000_cy_4_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_13_216,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_7_550,
      O => Mcompar_bpm_cmp_lt0000_cy_4_13_240
    );
  Mcompar_bpm_cmp_lt0000_lut_5_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_9_IBUF_762,
      I1 => average_clockcs_10_IBUF_734,
      I2 => average_clockcs_11_IBUF_735,
      I3 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_lut_5_12_557
    );
  Mcompar_bpm_cmp_lt0000_cy_5_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_13_240,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_12_557,
      O => Mcompar_bpm_cmp_lt0000_cy_5_13_272
    );
  Mcompar_bpm_cmp_lt0000_cy_6_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_13_272,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_6_10,
      O => Mcompar_bpm_cmp_lt0000_cy_6_13_296
    );
  Mcompar_bpm_cmp_lt0000_cy_7_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_13_296,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_7_12_rt_344,
      O => Mcompar_bpm_cmp_lt0000_cy_7_13_326
    );
  Mcompar_bpm_cmp_lt0000_lut_8_7 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_15_IBUF_739,
      I1 => average_clockcs_16_IBUF_740,
      I2 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_lut_8_7_622
    );
  Mcompar_bpm_cmp_lt0000_cy_8_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_13_326,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_8_7_622,
      O => Mcompar_bpm_cmp_lt0000_cy_8_13_351
    );
  Mcompar_bpm_cmp_lt0000_lut_9_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      I1 => average_clockcs_19_IBUF_743,
      I2 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_lut_9_11_628
    );
  Mcompar_bpm_cmp_lt0000_cy_9_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_13_351,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_9_11_628,
      O => Mcompar_bpm_cmp_lt0000_cy_9_13_384
    );
  Mcompar_bpm_cmp_lt0000_lut_10_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      I2 => average_clockcs_23_IBUF_748,
      I3 => average_clockcs_24_IBUF_749,
      O => Mcompar_bpm_cmp_lt0000_lut_10_6_428
    );
  Mcompar_bpm_cmp_lt0000_cy_10_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_13_384,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_10_6_428,
      O => Mcompar_bpm_cmp_lt0000_cy_10_10_52
    );
  Mcompar_bpm_cmp_lt0000_lut_11_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_25_IBUF_750,
      I1 => average_clockcs_26_IBUF_751,
      I2 => average_clockcs_27_IBUF_752,
      I3 => average_clockcs_28_IBUF_753,
      O => Mcompar_bpm_cmp_lt0000_lut_11_10_434
    );
  Mcompar_bpm_cmp_lt0000_cy_11_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_10_52,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_10_434,
      O => Mcompar_bpm_cmp_lt0000_cy_11_10_80
    );
  Mcompar_bpm_cmp_lt0000_cy_12_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_10_80,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_12_4,
      O => Mcompar_bpm_cmp_lt0000_cy_12_6_109
    );
  Mcompar_bpm_cmp_lt0000_lut_0_10 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      I1 => average_clockcs_1_IBUF_744,
      O => Mcompar_bpm_cmp_lt0000_lut_0_10_408
    );
  Mcompar_bpm_cmp_lt0000_cy_0_13 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_10_408,
      O => Mcompar_bpm_cmp_lt0000_cy_0_14_24
    );
  Mcompar_bpm_cmp_lt0000_cy_1_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_14_24,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_14,
      O => Mcompar_bpm_cmp_lt0000_cy_1_14_157
    );
  Mcompar_bpm_cmp_lt0000_lut_2_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      I1 => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_lut_2_6_513
    );
  Mcompar_bpm_cmp_lt0000_cy_2_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_14_157,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_2_6_513,
      O => Mcompar_bpm_cmp_lt0000_cy_2_14_181
    );
  Mcompar_bpm_cmp_lt0000_lut_3_13 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_5_IBUF_758,
      I1 => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_lut_3_13_522
    );
  Mcompar_bpm_cmp_lt0000_cy_3_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_14_181,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_13_522,
      O => Mcompar_bpm_cmp_lt0000_cy_3_14_217
    );
  Mcompar_bpm_cmp_lt0000_lut_4_8 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      I1 => average_clockcs_8_IBUF_761,
      I2 => average_clockcs_9_IBUF_762,
      I3 => average_clockcs_10_IBUF_734,
      O => Mcompar_bpm_cmp_lt0000_lut_4_8_551
    );
  Mcompar_bpm_cmp_lt0000_cy_4_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_14_217,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_8_551,
      O => Mcompar_bpm_cmp_lt0000_cy_4_14_241
    );
  Mcompar_bpm_cmp_lt0000_lut_5_13 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_11_IBUF_735,
      I1 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_lut_5_13_558
    );
  Mcompar_bpm_cmp_lt0000_cy_5_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_14_241,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_13_558,
      O => Mcompar_bpm_cmp_lt0000_cy_5_14_273
    );
  Mcompar_bpm_cmp_lt0000_cy_6_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_14_273,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_6_13_rt_315,
      O => Mcompar_bpm_cmp_lt0000_cy_6_14_297
    );
  Mcompar_bpm_cmp_lt0000_lut_7_13 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      I1 => average_clockcs_15_IBUF_739,
      I2 => average_clockcs_16_IBUF_740,
      I3 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_lut_7_13_596
    );
  Mcompar_bpm_cmp_lt0000_cy_7_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_14_297,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_13_596,
      O => Mcompar_bpm_cmp_lt0000_cy_7_14_327
    );
  Mcompar_bpm_cmp_lt0000_cy_8_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_14_327,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_8_8,
      O => Mcompar_bpm_cmp_lt0000_cy_8_14_352
    );
  Mcompar_bpm_cmp_lt0000_cy_9_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_14_352,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_9_13_rt_402,
      O => Mcompar_bpm_cmp_lt0000_cy_9_14_385
    );
  Mcompar_bpm_cmp_lt0000_cy_10_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_14_385,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_10_7,
      O => Mcompar_bpm_cmp_lt0000_cy_10_11_53
    );
  Mcompar_bpm_cmp_lt0000_cy_11_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_11_53,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_11_10_rt_97,
      O => Mcompar_bpm_cmp_lt0000_cy_11_11_81
    );
  Mcompar_bpm_cmp_lt0000_lut_12_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_22_IBUF_747,
      I1 => average_clockcs_23_IBUF_748,
      I2 => average_clockcs_24_IBUF_749,
      I3 => average_clockcs_25_IBUF_750,
      O => Mcompar_bpm_cmp_lt0000_lut_12_5_455
    );
  Mcompar_bpm_cmp_lt0000_cy_12_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_11_81,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_12_5_455,
      O => Mcompar_bpm_cmp_lt0000_cy_12_7_110
    );
  Mcompar_bpm_cmp_lt0000_lut_13_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_26_IBUF_751,
      I1 => average_clockcs_27_IBUF_752,
      I2 => average_clockcs_28_IBUF_753,
      I3 => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_13_4_464
    );
  Mcompar_bpm_cmp_lt0000_cy_13_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_7_110,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_13_4_464,
      O => Mcompar_bpm_cmp_lt0000_cy_13_4_126
    );
  Mcompar_bpm_cmp_lt0000_cy_0_14 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_0_14_rt_43,
      O => Mcompar_bpm_cmp_lt0000_cy_0_15_25
    );
  Mcompar_bpm_cmp_lt0000_lut_1_15 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_1_IBUF_744,
      I1 => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_1_15_492
    );
  Mcompar_bpm_cmp_lt0000_cy_1_14 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_15_25,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_15_492,
      O => Mcompar_bpm_cmp_lt0000_cy_1_15_158
    );
  Mcompar_bpm_cmp_lt0000_lut_2_7 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      I1 => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_lut_2_7_514
    );
  Mcompar_bpm_cmp_lt0000_cy_2_14 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_15_158,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_2_7_514,
      O => Mcompar_bpm_cmp_lt0000_cy_2_15_182
    );
  Mcompar_bpm_cmp_lt0000_cy_3_14 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_15_182,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_14,
      O => Mcompar_bpm_cmp_lt0000_cy_3_15_218
    );
  Mcompar_bpm_cmp_lt0000_lut_4_9 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_6_IBUF_759,
      I1 => average_clockcs_7_IBUF_760,
      I2 => average_clockcs_8_IBUF_761,
      I3 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_4_9_552
    );
  Mcompar_bpm_cmp_lt0000_cy_4_14 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_15_218,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_9_552,
      O => Mcompar_bpm_cmp_lt0000_cy_4_15_242
    );
  Mcompar_bpm_cmp_lt0000_cy_5_14 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_15_242,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_14,
      O => Mcompar_bpm_cmp_lt0000_cy_5_15_274
    );
  Mcompar_bpm_cmp_lt0000_cy_6_14 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_15_274,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_6_14_rt_316,
      O => Mcompar_bpm_cmp_lt0000_cy_6_15_298
    );
  Mcompar_bpm_cmp_lt0000_cy_7_14 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_15_298,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_14,
      O => Mcompar_bpm_cmp_lt0000_cy_7_15_328
    );
  Mcompar_bpm_cmp_lt0000_cy_8_14 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_15_328,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_8_14_rt_370,
      O => Mcompar_bpm_cmp_lt0000_cy_8_15_353
    );
  Mcompar_bpm_cmp_lt0000_lut_9_12 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      I1 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_lut_9_12_629
    );
  Mcompar_bpm_cmp_lt0000_cy_9_14 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_15_353,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_12_629,
      O => Mcompar_bpm_cmp_lt0000_cy_9_15_386
    );
  Mcompar_bpm_cmp_lt0000_cy_10_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_15_386,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_10_11_rt_70,
      O => Mcompar_bpm_cmp_lt0000_cy_10_12_54
    );
  Mcompar_bpm_cmp_lt0000_lut_11_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_17_IBUF_741,
      I1 => average_clockcs_18_IBUF_742,
      I2 => average_clockcs_19_IBUF_743,
      I3 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_lut_11_11_435
    );
  Mcompar_bpm_cmp_lt0000_cy_11_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_12_54,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_11_435,
      O => Mcompar_bpm_cmp_lt0000_cy_11_12_82
    );
  Mcompar_bpm_cmp_lt0000_cy_12_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_12_82,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_12_7_rt_118,
      O => Mcompar_bpm_cmp_lt0000_cy_12_8_111
    );
  Mcompar_bpm_cmp_lt0000_lut_13_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_22_IBUF_747,
      I1 => average_clockcs_23_IBUF_748,
      I2 => average_clockcs_24_IBUF_749,
      I3 => average_clockcs_25_IBUF_750,
      O => Mcompar_bpm_cmp_lt0000_lut_13_5_465
    );
  Mcompar_bpm_cmp_lt0000_cy_13_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_8_111,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_13_5_465,
      O => Mcompar_bpm_cmp_lt0000_cy_13_5_127
    );
  Mcompar_bpm_cmp_lt0000_lut_14_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_26_IBUF_751,
      I1 => average_clockcs_27_IBUF_752,
      I2 => average_clockcs_28_IBUF_753,
      I3 => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_14_3_473
    );
  Mcompar_bpm_cmp_lt0000_cy_14_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_13_5_127,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_14_3_473,
      O => Mcompar_bpm_cmp_lt0000_cy_14_3_135
    );
  Mcompar_bpm_cmp_lt0000_lut_0_11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      I1 => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_lut_0_11_409
    );
  Mcompar_bpm_cmp_lt0000_cy_0_15 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_11_409,
      O => Mcompar_bpm_cmp_lt0000_cy_0_16_26
    );
  Mcompar_bpm_cmp_lt0000_lut_1_16 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_5_IBUF_758,
      I1 => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_lut_1_16_493
    );
  Mcompar_bpm_cmp_lt0000_cy_1_15 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_16_26,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_16_493,
      O => Mcompar_bpm_cmp_lt0000_cy_1_16_159
    );
  Mcompar_bpm_cmp_lt0000_cy_2_15 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_16_159,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_15_rt_201,
      O => Mcompar_bpm_cmp_lt0000_cy_2_16_183
    );
  Mcompar_bpm_cmp_lt0000_lut_3_15 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_8_IBUF_761,
      I1 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_3_15_524
    );
  Mcompar_bpm_cmp_lt0000_cy_3_15 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_16_183,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_15_524,
      O => Mcompar_bpm_cmp_lt0000_cy_3_16_219
    );
  Mcompar_bpm_cmp_lt0000_cy_4_15 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_16_219,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_4_15_rt_259,
      O => Mcompar_bpm_cmp_lt0000_cy_4_16_243
    );
  Mcompar_bpm_cmp_lt0000_cy_5_15 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_16_243,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_15,
      O => Mcompar_bpm_cmp_lt0000_cy_5_16_275
    );
  Mcompar_bpm_cmp_lt0000_cy_6_15 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_16_275,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_6_15_rt_317,
      O => Mcompar_bpm_cmp_lt0000_cy_6_16_299
    );
  Mcompar_bpm_cmp_lt0000_cy_7_15 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_16_299,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_15,
      O => Mcompar_bpm_cmp_lt0000_cy_7_16_329
    );
  Mcompar_bpm_cmp_lt0000_cy_8_15 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_16_329,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_8_15_rt_371,
      O => Mcompar_bpm_cmp_lt0000_cy_8_16_354
    );
  Mcompar_bpm_cmp_lt0000_lut_9_13 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_15_IBUF_739,
      I1 => average_clockcs_16_IBUF_740,
      I2 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_lut_9_13_630
    );
  Mcompar_bpm_cmp_lt0000_cy_9_15 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_16_354,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_13_630,
      O => Mcompar_bpm_cmp_lt0000_cy_9_16_387
    );
  Mcompar_bpm_cmp_lt0000_cy_10_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_16_387,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_10_12_rt_71,
      O => Mcompar_bpm_cmp_lt0000_cy_10_13_55
    );
  Mcompar_bpm_cmp_lt0000_lut_11_12 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_19_IBUF_743,
      I1 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_lut_11_12_436
    );
  Mcompar_bpm_cmp_lt0000_cy_11_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_13_55,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_12_436,
      O => Mcompar_bpm_cmp_lt0000_cy_11_13_83
    );
  Mcompar_bpm_cmp_lt0000_cy_12_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_13_83,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_12_8_rt_119,
      O => Mcompar_bpm_cmp_lt0000_cy_12_9_112
    );
  Mcompar_bpm_cmp_lt0000_lut_13_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_22_IBUF_747,
      I1 => average_clockcs_23_IBUF_748,
      I2 => average_clockcs_24_IBUF_749,
      I3 => average_clockcs_25_IBUF_750,
      O => Mcompar_bpm_cmp_lt0000_lut_13_6_466
    );
  Mcompar_bpm_cmp_lt0000_cy_13_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_9_112,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_13_6_466,
      O => Mcompar_bpm_cmp_lt0000_cy_13_6_128
    );
  Mcompar_bpm_cmp_lt0000_lut_14_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_26_IBUF_751,
      I1 => average_clockcs_27_IBUF_752,
      I2 => average_clockcs_28_IBUF_753,
      I3 => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_14_4_474
    );
  Mcompar_bpm_cmp_lt0000_cy_14_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_13_6_128,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_14_4_474,
      O => Mcompar_bpm_cmp_lt0000_cy_14_4_136
    );
  Mcompar_bpm_cmp_lt0000_cy_0_16 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_0_16_rt_44,
      O => Mcompar_bpm_cmp_lt0000_cy_0_17_27
    );
  Mcompar_bpm_cmp_lt0000_cy_1_16 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_17_27,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_17,
      O => Mcompar_bpm_cmp_lt0000_cy_1_17_160
    );
  Mcompar_bpm_cmp_lt0000_cy_2_16 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_17_160,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_16_rt_202,
      O => Mcompar_bpm_cmp_lt0000_cy_2_17_184
    );
  Mcompar_bpm_cmp_lt0000_lut_3_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_4_IBUF_757,
      I1 => average_clockcs_5_IBUF_758,
      I2 => average_clockcs_6_IBUF_759,
      I3 => average_clockcs_7_IBUF_760,
      O => Mcompar_bpm_cmp_lt0000_lut_3_16_525
    );
  Mcompar_bpm_cmp_lt0000_cy_3_16 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_17_184,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_16_525,
      O => Mcompar_bpm_cmp_lt0000_cy_3_17_220
    );
  Mcompar_bpm_cmp_lt0000_lut_4_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_8_IBUF_761,
      I1 => average_clockcs_9_IBUF_762,
      I2 => average_clockcs_10_IBUF_734,
      I3 => average_clockcs_11_IBUF_735,
      O => Mcompar_bpm_cmp_lt0000_lut_4_10_541
    );
  Mcompar_bpm_cmp_lt0000_cy_4_16 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_17_220,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_4_10_541,
      O => Mcompar_bpm_cmp_lt0000_cy_4_17_244
    );
  Mcompar_bpm_cmp_lt0000_lut_5_16 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_12_IBUF_736,
      I1 => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_lut_5_16_561
    );
  Mcompar_bpm_cmp_lt0000_cy_5_16 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_17_244,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_5_16_561,
      O => Mcompar_bpm_cmp_lt0000_cy_5_17_276
    );
  Mcompar_bpm_cmp_lt0000_cy_6_16 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_17_276,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_6_11,
      O => Mcompar_bpm_cmp_lt0000_cy_6_17_300
    );
  Mcompar_bpm_cmp_lt0000_cy_7_16 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_17_300,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_7_16_rt_345,
      O => Mcompar_bpm_cmp_lt0000_cy_7_17_330
    );
  Mcompar_bpm_cmp_lt0000_cy_8_16 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_17_330,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_8_9,
      O => Mcompar_bpm_cmp_lt0000_cy_8_17_355
    );
  Mcompar_bpm_cmp_lt0000_cy_9_16 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_17_355,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_9_16_rt_403,
      O => Mcompar_bpm_cmp_lt0000_cy_9_17_388
    );
  Mcompar_bpm_cmp_lt0000_cy_10_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_17_388,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_10_8,
      O => Mcompar_bpm_cmp_lt0000_cy_10_14_56
    );
  Mcompar_bpm_cmp_lt0000_lut_11_13 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_19_IBUF_743,
      I1 => average_clockcs_20_IBUF_745,
      I2 => average_clockcs_21_IBUF_746,
      O => Mcompar_bpm_cmp_lt0000_lut_11_13_437
    );
  Mcompar_bpm_cmp_lt0000_cy_11_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_14_56,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_11_13_437,
      O => Mcompar_bpm_cmp_lt0000_cy_11_14_84
    );
  Mcompar_bpm_cmp_lt0000_lut_12_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_22_IBUF_747,
      I1 => average_clockcs_23_IBUF_748,
      I2 => average_clockcs_24_IBUF_749,
      I3 => average_clockcs_25_IBUF_750,
      O => Mcompar_bpm_cmp_lt0000_lut_12_6_456
    );
  Mcompar_bpm_cmp_lt0000_cy_12_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_14_84,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_12_6_456,
      O => Mcompar_bpm_cmp_lt0000_cy_12_10_100
    );
  Mcompar_bpm_cmp_lt0000_lut_13_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_26_IBUF_751,
      I1 => average_clockcs_27_IBUF_752,
      I2 => average_clockcs_28_IBUF_753,
      I3 => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_13_7_467
    );
  Mcompar_bpm_cmp_lt0000_cy_13_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_10_100,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_13_7_467,
      O => Mcompar_bpm_cmp_lt0000_cy_13_7_129
    );
  Mcompar_bpm_cmp_lt0000_lut_0_12 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      I1 => average_clockcs_4_IBUF_757,
      I2 => average_clockcs_5_IBUF_758,
      I3 => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_lut_0_12_410
    );
  Mcompar_bpm_cmp_lt0000_cy_0_17 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_12_410,
      O => Mcompar_bpm_cmp_lt0000_cy_0_18_28
    );
  Mcompar_bpm_cmp_lt0000_cy_1_17 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_18_28,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_1_17_rt_174,
      O => Mcompar_bpm_cmp_lt0000_cy_1_18_161
    );
  Mcompar_bpm_cmp_lt0000_lut_2_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_8_IBUF_761,
      I1 => average_clockcs_9_IBUF_762,
      I2 => average_clockcs_10_IBUF_734,
      I3 => average_clockcs_11_IBUF_735,
      O => Mcompar_bpm_cmp_lt0000_lut_2_8_515
    );
  Mcompar_bpm_cmp_lt0000_cy_2_17 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_18_161,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_2_8_515,
      O => Mcompar_bpm_cmp_lt0000_cy_2_18_185
    );
  Mcompar_bpm_cmp_lt0000_cy_3_17 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_18_185,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_17,
      O => Mcompar_bpm_cmp_lt0000_cy_3_18_221
    );
  Mcompar_bpm_cmp_lt0000_lut_4_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_13_IBUF_737,
      I1 => average_clockcs_14_IBUF_738,
      I2 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_lut_4_11_542
    );
  Mcompar_bpm_cmp_lt0000_cy_4_17 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_18_221,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_11_542,
      O => Mcompar_bpm_cmp_lt0000_cy_4_18_245
    );
  Mcompar_bpm_cmp_lt0000_lut_5_17 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_16_IBUF_740,
      I1 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_lut_5_17_562
    );
  Mcompar_bpm_cmp_lt0000_cy_5_17 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_18_245,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_17_562,
      O => Mcompar_bpm_cmp_lt0000_cy_5_18_277
    );
  Mcompar_bpm_cmp_lt0000_lut_6_12 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      I1 => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_6_12_579
    );
  Mcompar_bpm_cmp_lt0000_cy_6_17 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_18_277,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_12_579,
      O => Mcompar_bpm_cmp_lt0000_cy_6_18_301
    );
  Mcompar_bpm_cmp_lt0000_cy_7_17 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_18_301,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_16,
      O => Mcompar_bpm_cmp_lt0000_cy_7_18_331
    );
  Mcompar_bpm_cmp_lt0000_cy_8_17 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_18_331,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_8_17_rt_372,
      O => Mcompar_bpm_cmp_lt0000_cy_8_18_356
    );
  Mcompar_bpm_cmp_lt0000_lut_9_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_22_IBUF_747,
      I1 => average_clockcs_23_IBUF_748,
      I2 => average_clockcs_24_IBUF_749,
      I3 => average_clockcs_25_IBUF_750,
      O => Mcompar_bpm_cmp_lt0000_lut_9_14_631
    );
  Mcompar_bpm_cmp_lt0000_cy_9_17 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_18_356,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_14_631,
      O => Mcompar_bpm_cmp_lt0000_cy_9_18_389
    );
  Mcompar_bpm_cmp_lt0000_lut_10_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_26_IBUF_751,
      I1 => average_clockcs_27_IBUF_752,
      I2 => average_clockcs_28_IBUF_753,
      I3 => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_10_9_431
    );
  Mcompar_bpm_cmp_lt0000_cy_10_14 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_18_389,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_10_9_431,
      O => Mcompar_bpm_cmp_lt0000_cy_10_15_57
    );
  Mcompar_bpm_cmp_lt0000_cy_0_18 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_0_18_rt_45,
      O => Mcompar_bpm_cmp_lt0000_cy_0_19_29
    );
  Mcompar_bpm_cmp_lt0000_cy_1_18 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_19_29,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_18,
      O => Mcompar_bpm_cmp_lt0000_cy_1_19_162
    );
  Mcompar_bpm_cmp_lt0000_cy_2_18 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_19_162,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_18_rt_203,
      O => Mcompar_bpm_cmp_lt0000_cy_2_19_186
    );
  Mcompar_bpm_cmp_lt0000_cy_3_18 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_19_186,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_18,
      O => Mcompar_bpm_cmp_lt0000_cy_3_19_222
    );
  Mcompar_bpm_cmp_lt0000_cy_4_18 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_19_222,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_4_18_rt_260,
      O => Mcompar_bpm_cmp_lt0000_cy_4_19_246
    );
  Mcompar_bpm_cmp_lt0000_cy_5_18 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_19_246,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_18,
      O => Mcompar_bpm_cmp_lt0000_cy_5_19_278
    );
  Mcompar_bpm_cmp_lt0000_lut_6_13 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_6_IBUF_759,
      I1 => average_clockcs_7_IBUF_760,
      O => Mcompar_bpm_cmp_lt0000_lut_6_13_580
    );
  Mcompar_bpm_cmp_lt0000_cy_6_18 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_19_278,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_13_580,
      O => Mcompar_bpm_cmp_lt0000_cy_6_19_302
    );
  Mcompar_bpm_cmp_lt0000_lut_7_17 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_8_IBUF_761,
      I1 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_7_17_600
    );
  Mcompar_bpm_cmp_lt0000_cy_7_18 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_19_302,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_17_600,
      O => Mcompar_bpm_cmp_lt0000_cy_7_19_332
    );
  Mcompar_bpm_cmp_lt0000_lut_8_10 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_10_IBUF_734,
      I1 => average_clockcs_11_IBUF_735,
      I2 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_lut_8_10_614
    );
  Mcompar_bpm_cmp_lt0000_cy_8_18 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_19_332,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_8_10_614,
      O => Mcompar_bpm_cmp_lt0000_cy_8_19_357
    );
  Mcompar_bpm_cmp_lt0000_cy_9_18 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_19_357,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_15,
      O => Mcompar_bpm_cmp_lt0000_cy_9_19_390
    );
  Mcompar_bpm_cmp_lt0000_lut_10_10 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      I1 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_lut_10_10_422
    );
  Mcompar_bpm_cmp_lt0000_cy_10_15 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_19_390,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_10_10_422,
      O => Mcompar_bpm_cmp_lt0000_cy_10_16_58
    );
  Mcompar_bpm_cmp_lt0000_cy_11_14 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_16_58,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_14,
      O => Mcompar_bpm_cmp_lt0000_cy_11_15_85
    );
  Mcompar_bpm_cmp_lt0000_cy_12_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_15_85,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_12_10_rt_113,
      O => Mcompar_bpm_cmp_lt0000_cy_12_11_101
    );
  Mcompar_bpm_cmp_lt0000_lut_13_8 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      I1 => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_13_8_468
    );
  Mcompar_bpm_cmp_lt0000_cy_13_7 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_11_101,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_13_8_468,
      O => Mcompar_bpm_cmp_lt0000_cy_13_8_130
    );
  Mcompar_bpm_cmp_lt0000_lut_14_5 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      I1 => average_clockcs_21_IBUF_746,
      O => Mcompar_bpm_cmp_lt0000_lut_14_5_475
    );
  Mcompar_bpm_cmp_lt0000_cy_14_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_13_8_130,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_14_5_475,
      O => Mcompar_bpm_cmp_lt0000_cy_14_5_137
    );
  Mcompar_bpm_cmp_lt0000_lut_15_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_22_IBUF_747,
      I1 => average_clockcs_23_IBUF_748,
      I2 => average_clockcs_24_IBUF_749,
      I3 => average_clockcs_25_IBUF_750,
      O => Mcompar_bpm_cmp_lt0000_lut_15_3_479
    );
  Mcompar_bpm_cmp_lt0000_cy_15_2 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_14_5_137,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_15_3_479,
      O => Mcompar_bpm_cmp_lt0000_cy_15_3_145
    );
  Mcompar_bpm_cmp_lt0000_lut_16_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_26_IBUF_751,
      I1 => average_clockcs_27_IBUF_752,
      I2 => average_clockcs_28_IBUF_753,
      I3 => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut(16)
    );
  Mcompar_bpm_cmp_lt0000_cy_16_Q : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_15_3_145,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut(16),
      O => Mcompar_bpm_cmp_lt0000_cy(16)
    );
  Mcompar_bpm_cmp_lt0000_cy_0_19 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_0_19_rt_46,
      O => Mcompar_bpm_cmp_lt0000_cy_0_20_31
    );
  Mcompar_bpm_cmp_lt0000_lut_1_19 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_1_IBUF_744,
      I1 => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_1_19_496
    );
  Mcompar_bpm_cmp_lt0000_cy_1_19 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_20_31,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_19_496,
      O => Mcompar_bpm_cmp_lt0000_cy_1_20_164
    );
  Mcompar_bpm_cmp_lt0000_cy_2_19 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_20_164,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_19_rt_204,
      O => Mcompar_bpm_cmp_lt0000_cy_2_20_188
    );
  Mcompar_bpm_cmp_lt0000_lut_3_19 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_4_IBUF_757,
      I1 => average_clockcs_5_IBUF_758,
      O => Mcompar_bpm_cmp_lt0000_lut_3_19_528
    );
  Mcompar_bpm_cmp_lt0000_cy_3_19 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_20_188,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_19_528,
      O => Mcompar_bpm_cmp_lt0000_cy_3_20_224
    );
  Mcompar_bpm_cmp_lt0000_lut_4_12 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_6_IBUF_759,
      I1 => average_clockcs_7_IBUF_760,
      I2 => average_clockcs_8_IBUF_761,
      O => Mcompar_bpm_cmp_lt0000_lut_4_12_543
    );
  Mcompar_bpm_cmp_lt0000_cy_4_19 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_20_224,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_12_543,
      O => Mcompar_bpm_cmp_lt0000_cy_4_20_248
    );
  Mcompar_bpm_cmp_lt0000_cy_5_19 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_20_248,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_19,
      O => Mcompar_bpm_cmp_lt0000_cy_5_20_280
    );
  Mcompar_bpm_cmp_lt0000_lut_6_14 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_10_IBUF_734,
      I1 => average_clockcs_11_IBUF_735,
      I2 => average_clockcs_12_IBUF_736,
      I3 => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_lut_6_14_581
    );
  Mcompar_bpm_cmp_lt0000_cy_6_19 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_20_280,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_14_581,
      O => Mcompar_bpm_cmp_lt0000_cy_6_20_304
    );
  Mcompar_bpm_cmp_lt0000_lut_7_18 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      I1 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_lut_7_18_601
    );
  Mcompar_bpm_cmp_lt0000_cy_7_19 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_20_304,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_7_18_601,
      O => Mcompar_bpm_cmp_lt0000_cy_7_20_334
    );
  Mcompar_bpm_cmp_lt0000_lut_8_11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_16_IBUF_740,
      I1 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_lut_8_11_615
    );
  Mcompar_bpm_cmp_lt0000_cy_8_19 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_20_334,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_8_11_615,
      O => Mcompar_bpm_cmp_lt0000_cy_8_20_359
    );
  Mcompar_bpm_cmp_lt0000_lut_9_16 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      I1 => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_9_16_633
    );
  Mcompar_bpm_cmp_lt0000_cy_9_19 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_20_359,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_9_16_633,
      O => Mcompar_bpm_cmp_lt0000_cy_9_20_392
    );
  Mcompar_bpm_cmp_lt0000_cy_10_16 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_20_392,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_10_11,
      O => Mcompar_bpm_cmp_lt0000_cy_10_17_59
    );
  Mcompar_bpm_cmp_lt0000_lut_11_15 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      I1 => average_clockcs_22_IBUF_747,
      O => Mcompar_bpm_cmp_lt0000_lut_11_15_439
    );
  Mcompar_bpm_cmp_lt0000_cy_11_15 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_17_59,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_11_15_439,
      O => Mcompar_bpm_cmp_lt0000_cy_11_16_86
    );
  Mcompar_bpm_cmp_lt0000_lut_12_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_23_IBUF_748,
      I1 => average_clockcs_24_IBUF_749,
      I2 => average_clockcs_25_IBUF_750,
      I3 => average_clockcs_26_IBUF_751,
      O => Mcompar_bpm_cmp_lt0000_lut_12_7_457
    );
  Mcompar_bpm_cmp_lt0000_cy_12_11 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_16_86,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_12_7_457,
      O => Mcompar_bpm_cmp_lt0000_cy_12_12_102
    );
  Mcompar_bpm_cmp_lt0000_lut_13_9 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_27_IBUF_752,
      I1 => average_clockcs_28_IBUF_753,
      I2 => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_13_9_469
    );
  Mcompar_bpm_cmp_lt0000_cy_13_8 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_12_102,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_13_9_469,
      O => Mcompar_bpm_cmp_lt0000_cy_13_9_131
    );
  Mcompar_bpm_cmp_lt0000_lut_0_13 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      I1 => average_clockcs_1_IBUF_744,
      I2 => average_clockcs_2_IBUF_755,
      I3 => average_clockcs_3_IBUF_756,
      O => Mcompar_bpm_cmp_lt0000_lut_0_13_411
    );
  Mcompar_bpm_cmp_lt0000_cy_0_20 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_0_13_411,
      O => Mcompar_bpm_cmp_lt0000_cy_0_21_32
    );
  Mcompar_bpm_cmp_lt0000_cy_1_20 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_21_32,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_20,
      O => Mcompar_bpm_cmp_lt0000_cy_1_21_165
    );
  Mcompar_bpm_cmp_lt0000_cy_2_20 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_21_165,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_2_20_rt_206,
      O => Mcompar_bpm_cmp_lt0000_cy_2_21_189
    );
  Mcompar_bpm_cmp_lt0000_cy_3_20 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_21_189,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_20,
      O => Mcompar_bpm_cmp_lt0000_cy_3_21_225
    );
  Mcompar_bpm_cmp_lt0000_lut_4_13 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      I1 => average_clockcs_8_IBUF_761,
      I2 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_4_13_544
    );
  Mcompar_bpm_cmp_lt0000_cy_4_20 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_21_225,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_4_13_544,
      O => Mcompar_bpm_cmp_lt0000_cy_4_21_249
    );
  Mcompar_bpm_cmp_lt0000_cy_5_20 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_21_249,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_20,
      O => Mcompar_bpm_cmp_lt0000_cy_5_21_281
    );
  Mcompar_bpm_cmp_lt0000_lut_6_15 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_11_IBUF_735,
      I1 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_lut_6_15_582
    );
  Mcompar_bpm_cmp_lt0000_cy_6_20 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_21_281,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_6_15_582,
      O => Mcompar_bpm_cmp_lt0000_cy_6_21_305
    );
  Mcompar_bpm_cmp_lt0000_cy_7_20 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_21_305,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_19,
      O => Mcompar_bpm_cmp_lt0000_cy_7_21_335
    );
  Mcompar_bpm_cmp_lt0000_cy_8_20 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_21_335,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_8_20_rt_373,
      O => Mcompar_bpm_cmp_lt0000_cy_8_21_360
    );
  Mcompar_bpm_cmp_lt0000_cy_9_20 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_21_360,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_17,
      O => Mcompar_bpm_cmp_lt0000_cy_9_21_393
    );
  Mcompar_bpm_cmp_lt0000_cy_10_17 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_21_393,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_10_17_rt_72,
      O => Mcompar_bpm_cmp_lt0000_cy_10_18_60
    );
  Mcompar_bpm_cmp_lt0000_cy_11_16 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_18_60,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_16,
      O => Mcompar_bpm_cmp_lt0000_cy_11_17_87
    );
  Mcompar_bpm_cmp_lt0000_cy_12_12 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_17_87,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_12_12_rt_114,
      O => Mcompar_bpm_cmp_lt0000_cy_12_13_103
    );
  Mcompar_bpm_cmp_lt0000_lut_13_10 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_19_IBUF_743,
      I1 => average_clockcs_20_IBUF_745,
      I2 => average_clockcs_21_IBUF_746,
      O => Mcompar_bpm_cmp_lt0000_lut_13_10_460
    );
  Mcompar_bpm_cmp_lt0000_cy_13_9 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_13_103,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_13_10_460,
      O => Mcompar_bpm_cmp_lt0000_cy_13_10_122
    );
  Mcompar_bpm_cmp_lt0000_cy_14_5 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_13_10_122,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_14_5_rt_140,
      O => Mcompar_bpm_cmp_lt0000_cy_14_6_138
    );
  Mcompar_bpm_cmp_lt0000_lut_15_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_23_IBUF_748,
      I1 => average_clockcs_24_IBUF_749,
      I2 => average_clockcs_25_IBUF_750,
      I3 => average_clockcs_26_IBUF_751,
      O => Mcompar_bpm_cmp_lt0000_lut_15_4_480
    );
  Mcompar_bpm_cmp_lt0000_cy_15_3 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_14_6_138,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_15_4_480,
      O => Mcompar_bpm_cmp_lt0000_cy_15_4_146
    );
  Mcompar_bpm_cmp_lt0000_lut_16_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_27_IBUF_752,
      I1 => average_clockcs_28_IBUF_753,
      I2 => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_16_1_483
    );
  Mcompar_bpm_cmp_lt0000_cy_16_0 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_15_4_146,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_16_1_483,
      O => Mcompar_bpm_cmp_lt0000_cy_16_1_149
    );
  Mcompar_bpm_cmp_lt0000_cy_0_21 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_0_21_rt_47,
      O => Mcompar_bpm_cmp_lt0000_cy_0_22
    );
  Mcompar_bpm_cmp_lt0000_lut_1_21 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      I1 => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_lut_1_21_499
    );
  Mcompar_bpm_cmp_lt0000_cy_1_21 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_0_22,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_1_21_499,
      O => Mcompar_bpm_cmp_lt0000_cy_1_22
    );
  Mcompar_bpm_cmp_lt0000_lut_2_9 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_5_IBUF_758,
      I1 => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_lut_2_9_516
    );
  Mcompar_bpm_cmp_lt0000_cy_2_21 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_1_22,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_2_9_516,
      O => Mcompar_bpm_cmp_lt0000_cy_2_22
    );
  Mcompar_bpm_cmp_lt0000_cy_3_21 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_2_22,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_3_21,
      O => Mcompar_bpm_cmp_lt0000_cy_3_22
    );
  Mcompar_bpm_cmp_lt0000_cy_4_21 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_3_22,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_4_21_rt_261,
      O => Mcompar_bpm_cmp_lt0000_cy_4_22
    );
  Mcompar_bpm_cmp_lt0000_cy_5_21 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_4_22,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_5_21,
      O => Mcompar_bpm_cmp_lt0000_cy_5_22
    );
  Mcompar_bpm_cmp_lt0000_cy_6_21 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_5_22,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_6_21_rt_318,
      O => Mcompar_bpm_cmp_lt0000_cy_6_22
    );
  Mcompar_bpm_cmp_lt0000_lut_7_20 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_11_IBUF_735,
      I1 => average_clockcs_12_IBUF_736,
      I2 => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_lut_7_20_604
    );
  Mcompar_bpm_cmp_lt0000_cy_7_21 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_6_22,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_7_20_604,
      O => Mcompar_bpm_cmp_lt0000_cy_7_22
    );
  Mcompar_bpm_cmp_lt0000_lut_8_12 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      I1 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_lut_8_12_616
    );
  Mcompar_bpm_cmp_lt0000_cy_8_21 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_7_22,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_lut_8_12_616,
      O => Mcompar_bpm_cmp_lt0000_cy_8_22
    );
  Mcompar_bpm_cmp_lt0000_lut_9_18 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => average_clockcs_16_IBUF_740,
      I1 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_lut_9_18_635
    );
  Mcompar_bpm_cmp_lt0000_cy_9_21 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_8_22,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_9_18_635,
      O => Mcompar_bpm_cmp_lt0000_cy_9_22
    );
  Mcompar_bpm_cmp_lt0000_cy_10_18 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_9_22,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_10_18_rt_73,
      O => Mcompar_bpm_cmp_lt0000_cy_10_19
    );
  Mcompar_bpm_cmp_lt0000_cy_11_17 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_10_19,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_11_17,
      O => Mcompar_bpm_cmp_lt0000_cy_11_18
    );
  Mcompar_bpm_cmp_lt0000_cy_12_13 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_11_18,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_12_13_rt_115,
      O => Mcompar_bpm_cmp_lt0000_cy_12_14
    );
  Mcompar_bpm_cmp_lt0000_cy_13_10 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_12_14,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_13_11,
      O => Mcompar_bpm_cmp_lt0000_cy_13_11
    );
  Mcompar_bpm_cmp_lt0000_cy_14_6 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_13_11,
      DI => N0,
      S => Mcompar_bpm_cmp_lt0000_cy_14_6_rt_141,
      O => Mcompar_bpm_cmp_lt0000_cy_14_7
    );
  Mcompar_bpm_cmp_lt0000_lut_15_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => average_clockcs_23_IBUF_748,
      I1 => average_clockcs_24_IBUF_749,
      I2 => average_clockcs_25_IBUF_750,
      I3 => average_clockcs_26_IBUF_751,
      O => Mcompar_bpm_cmp_lt0000_lut_15_5_481
    );
  Mcompar_bpm_cmp_lt0000_cy_15_4 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_14_7,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_15_5_481,
      O => Mcompar_bpm_cmp_lt0000_cy_15_5
    );
  Mcompar_bpm_cmp_lt0000_lut_16_2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => average_clockcs_27_IBUF_752,
      I1 => average_clockcs_28_IBUF_753,
      I2 => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_16_2_484
    );
  Mcompar_bpm_cmp_lt0000_cy_16_1 : MUXCY
    port map (
      CI => Mcompar_bpm_cmp_lt0000_cy_15_5,
      DI => N1,
      S => Mcompar_bpm_cmp_lt0000_lut_16_2_484,
      O => Mcompar_bpm_cmp_lt0000_cy_16_2
    );
  bpm_0 : FDCP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      CLR => bpm_0_and0000,
      D => bpm_mux0023(0),
      PRE => bpm_0_and0001,
      Q => bpm(0)
    );
  bpm_1 : FDCP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      CLR => bpm_1_and0000,
      D => bpm_mux0023(1),
      PRE => bpm_1_and0001,
      Q => bpm(1)
    );
  bpm_2 : FDCP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      CLR => bpm_2_and0000,
      D => bpm_mux0023(2),
      PRE => bpm_2_and0001,
      Q => bpm(2)
    );
  bpm_3 : FDCP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      CLR => bpm_3_and0000,
      D => bpm_mux0023(3),
      PRE => bpm_3_and0001,
      Q => bpm(3)
    );
  bpm_4 : FDCP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      CLR => bpm_4_and0000,
      D => bpm_mux0023(4),
      PRE => bpm_4_and0001,
      Q => bpm(4)
    );
  bpm_5 : FDCP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      CLR => bpm_5_and0000,
      D => bpm_mux0023(5),
      PRE => bpm_5_and0001,
      Q => bpm(5)
    );
  bpm_6 : FDCP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      CLR => bpm_6_and0000,
      D => bpm_mux0023(6),
      PRE => bpm_6_and0001,
      Q => bpm(6)
    );
  bpm_7 : FDCP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      CLR => bpm_7_and0000,
      D => bpm_mux0023(7),
      PRE => bpm_7_and0001,
      Q => bpm(7)
    );
  bpm_8 : FDCP
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      CLR => bpm_8_and0000,
      D => bpm_mux0023(8),
      PRE => bpm_8_and0001,
      Q => bpm(8)
    );
  displayvalue_display_counter_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result_0_1,
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(0)
    );
  displayvalue_display_counter_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result_1_1,
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(1)
    );
  displayvalue_display_counter_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(2),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(2)
    );
  displayvalue_display_counter_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(3),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(3)
    );
  displayvalue_display_counter_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(4),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(4)
    );
  displayvalue_display_counter_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(5),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(5)
    );
  displayvalue_display_counter_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(6),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(6)
    );
  displayvalue_display_counter_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(7),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(7)
    );
  displayvalue_display_counter_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(8),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(8)
    );
  displayvalue_display_counter_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(9),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(9)
    );
  displayvalue_display_counter_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(10),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(10)
    );
  displayvalue_display_counter_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(11),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(11)
    );
  displayvalue_display_counter_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(12),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(12)
    );
  displayvalue_display_counter_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(13),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(13)
    );
  displayvalue_display_counter_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(14),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(14)
    );
  displayvalue_display_counter_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(15),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(15)
    );
  displayvalue_display_counter_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(16),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(16)
    );
  displayvalue_display_counter_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(17),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(17)
    );
  displayvalue_display_counter_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(18),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(18)
    );
  displayvalue_display_counter_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(19),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(19)
    );
  displayvalue_display_counter_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(20),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(20)
    );
  displayvalue_display_counter_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(21),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(21)
    );
  displayvalue_display_counter_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(22),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(22)
    );
  displayvalue_display_counter_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(23),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(23)
    );
  displayvalue_display_counter_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(24),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(24)
    );
  displayvalue_display_counter_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(25),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(25)
    );
  displayvalue_display_counter_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(26),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(26)
    );
  displayvalue_display_counter_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(27),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(27)
    );
  displayvalue_display_counter_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(28),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(28)
    );
  displayvalue_display_counter_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(29),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(29)
    );
  displayvalue_display_counter_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(30),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(30)
    );
  displayvalue_display_counter_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      D => displayvalue_display_Result(31),
      R => displayvalue_display_digit_cmp_eq0000,
      Q => displayvalue_display_counter(31)
    );
  displayvalue_display_digit_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      CE => displayvalue_display_digit_cmp_eq0000,
      D => displayvalue_display_Result(0),
      Q => displayvalue_display_digit(0)
    );
  displayvalue_display_digit_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_841,
      CE => displayvalue_display_digit_cmp_eq0000,
      D => displayvalue_display_Result(1),
      Q => displayvalue_display_digit(1)
    );
  displayvalue_display_Mmux_binary_2_f5_2 : MUXF5
    port map (
      I0 => displayvalue_display_Mmux_binary_43_1193,
      I1 => N0,
      S => displayvalue_display_digit(1),
      O => displayvalue_display_binary(3)
    );
  displayvalue_display_Mmux_binary_2_f5_1 : MUXF5
    port map (
      I0 => displayvalue_display_Mmux_binary_42_1192,
      I1 => displayvalue_display_Mmux_binary_32_1189,
      S => displayvalue_display_digit(1),
      O => displayvalue_display_binary(2)
    );
  displayvalue_display_Mmux_binary_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_display_digit(0),
      I1 => displayvalue_digit_bit(2),
      I2 => displayvalue_ten_bit(2),
      O => displayvalue_display_Mmux_binary_42_1192
    );
  displayvalue_display_Mmux_binary_2_f5_0 : MUXF5
    port map (
      I0 => displayvalue_display_Mmux_binary_41_1191,
      I1 => displayvalue_display_Mmux_binary_31_1188,
      S => displayvalue_display_digit(1),
      O => displayvalue_display_binary(1)
    );
  displayvalue_display_Mmux_binary_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_display_digit(0),
      I1 => displayvalue_digit_bit(1),
      I2 => displayvalue_ten_bit(1),
      O => displayvalue_display_Mmux_binary_41_1191
    );
  displayvalue_display_Mmux_binary_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_display_digit(0),
      I1 => displayvalue_hundred_bit(1),
      I2 => N0,
      O => displayvalue_display_Mmux_binary_31_1188
    );
  displayvalue_display_Mmux_binary_2_f5 : MUXF5
    port map (
      I0 => displayvalue_display_Mmux_binary_4_1190,
      I1 => displayvalue_display_Mmux_binary_3_1187,
      S => displayvalue_display_digit(1),
      O => displayvalue_display_binary(0)
    );
  displayvalue_display_Mmux_binary_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_display_digit(0),
      I1 => displayvalue_digit_bit(0),
      I2 => displayvalue_ten_bit(0),
      O => displayvalue_display_Mmux_binary_4_1190
    );
  displayvalue_display_Mmux_binary_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_display_digit(0),
      I1 => displayvalue_hundred_bit(0),
      I2 => N0,
      O => displayvalue_display_Mmux_binary_3_1187
    );
  displayvalue_display_Mcount_counter_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => displayvalue_display_Mcount_counter_lut(0),
      O => displayvalue_display_Mcount_counter_cy(0)
    );
  displayvalue_display_Mcount_counter_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => displayvalue_display_Mcount_counter_lut(0),
      O => displayvalue_display_Result_0_1
    );
  displayvalue_display_Mcount_counter_cy_1_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(0),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_1_rt_1146,
      O => displayvalue_display_Mcount_counter_cy(1)
    );
  displayvalue_display_Mcount_counter_xor_1_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(0),
      LI => displayvalue_display_Mcount_counter_cy_1_rt_1146,
      O => displayvalue_display_Result_1_1
    );
  displayvalue_display_Mcount_counter_cy_2_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(1),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_2_rt_1168,
      O => displayvalue_display_Mcount_counter_cy(2)
    );
  displayvalue_display_Mcount_counter_xor_2_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(1),
      LI => displayvalue_display_Mcount_counter_cy_2_rt_1168,
      O => displayvalue_display_Result(2)
    );
  displayvalue_display_Mcount_counter_cy_3_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(2),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_3_rt_1172,
      O => displayvalue_display_Mcount_counter_cy(3)
    );
  displayvalue_display_Mcount_counter_xor_3_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(2),
      LI => displayvalue_display_Mcount_counter_cy_3_rt_1172,
      O => displayvalue_display_Result(3)
    );
  displayvalue_display_Mcount_counter_cy_4_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(3),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_4_rt_1174,
      O => displayvalue_display_Mcount_counter_cy(4)
    );
  displayvalue_display_Mcount_counter_xor_4_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(3),
      LI => displayvalue_display_Mcount_counter_cy_4_rt_1174,
      O => displayvalue_display_Result(4)
    );
  displayvalue_display_Mcount_counter_cy_5_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(4),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_5_rt_1176,
      O => displayvalue_display_Mcount_counter_cy(5)
    );
  displayvalue_display_Mcount_counter_xor_5_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(4),
      LI => displayvalue_display_Mcount_counter_cy_5_rt_1176,
      O => displayvalue_display_Result(5)
    );
  displayvalue_display_Mcount_counter_cy_6_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(5),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_6_rt_1178,
      O => displayvalue_display_Mcount_counter_cy(6)
    );
  displayvalue_display_Mcount_counter_xor_6_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(5),
      LI => displayvalue_display_Mcount_counter_cy_6_rt_1178,
      O => displayvalue_display_Result(6)
    );
  displayvalue_display_Mcount_counter_cy_7_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(6),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_7_rt_1180,
      O => displayvalue_display_Mcount_counter_cy(7)
    );
  displayvalue_display_Mcount_counter_xor_7_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(6),
      LI => displayvalue_display_Mcount_counter_cy_7_rt_1180,
      O => displayvalue_display_Result(7)
    );
  displayvalue_display_Mcount_counter_cy_8_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(7),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_8_rt_1182,
      O => displayvalue_display_Mcount_counter_cy(8)
    );
  displayvalue_display_Mcount_counter_xor_8_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(7),
      LI => displayvalue_display_Mcount_counter_cy_8_rt_1182,
      O => displayvalue_display_Result(8)
    );
  displayvalue_display_Mcount_counter_cy_9_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(8),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_9_rt_1184,
      O => displayvalue_display_Mcount_counter_cy(9)
    );
  displayvalue_display_Mcount_counter_xor_9_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(8),
      LI => displayvalue_display_Mcount_counter_cy_9_rt_1184,
      O => displayvalue_display_Result(9)
    );
  displayvalue_display_Mcount_counter_cy_10_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(9),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_10_rt_1126,
      O => displayvalue_display_Mcount_counter_cy(10)
    );
  displayvalue_display_Mcount_counter_xor_10_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(9),
      LI => displayvalue_display_Mcount_counter_cy_10_rt_1126,
      O => displayvalue_display_Result(10)
    );
  displayvalue_display_Mcount_counter_cy_11_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(10),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_11_rt_1128,
      O => displayvalue_display_Mcount_counter_cy(11)
    );
  displayvalue_display_Mcount_counter_xor_11_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(10),
      LI => displayvalue_display_Mcount_counter_cy_11_rt_1128,
      O => displayvalue_display_Result(11)
    );
  displayvalue_display_Mcount_counter_cy_12_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(11),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_12_rt_1130,
      O => displayvalue_display_Mcount_counter_cy(12)
    );
  displayvalue_display_Mcount_counter_xor_12_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(11),
      LI => displayvalue_display_Mcount_counter_cy_12_rt_1130,
      O => displayvalue_display_Result(12)
    );
  displayvalue_display_Mcount_counter_cy_13_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(12),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_13_rt_1132,
      O => displayvalue_display_Mcount_counter_cy(13)
    );
  displayvalue_display_Mcount_counter_xor_13_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(12),
      LI => displayvalue_display_Mcount_counter_cy_13_rt_1132,
      O => displayvalue_display_Result(13)
    );
  displayvalue_display_Mcount_counter_cy_14_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(13),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_14_rt_1134,
      O => displayvalue_display_Mcount_counter_cy(14)
    );
  displayvalue_display_Mcount_counter_xor_14_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(13),
      LI => displayvalue_display_Mcount_counter_cy_14_rt_1134,
      O => displayvalue_display_Result(14)
    );
  displayvalue_display_Mcount_counter_cy_15_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(14),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_15_rt_1136,
      O => displayvalue_display_Mcount_counter_cy(15)
    );
  displayvalue_display_Mcount_counter_xor_15_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(14),
      LI => displayvalue_display_Mcount_counter_cy_15_rt_1136,
      O => displayvalue_display_Result(15)
    );
  displayvalue_display_Mcount_counter_cy_16_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(15),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_16_rt_1138,
      O => displayvalue_display_Mcount_counter_cy(16)
    );
  displayvalue_display_Mcount_counter_xor_16_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(15),
      LI => displayvalue_display_Mcount_counter_cy_16_rt_1138,
      O => displayvalue_display_Result(16)
    );
  displayvalue_display_Mcount_counter_cy_17_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(16),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_17_rt_1140,
      O => displayvalue_display_Mcount_counter_cy(17)
    );
  displayvalue_display_Mcount_counter_xor_17_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(16),
      LI => displayvalue_display_Mcount_counter_cy_17_rt_1140,
      O => displayvalue_display_Result(17)
    );
  displayvalue_display_Mcount_counter_cy_18_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(17),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_18_rt_1142,
      O => displayvalue_display_Mcount_counter_cy(18)
    );
  displayvalue_display_Mcount_counter_xor_18_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(17),
      LI => displayvalue_display_Mcount_counter_cy_18_rt_1142,
      O => displayvalue_display_Result(18)
    );
  displayvalue_display_Mcount_counter_cy_19_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(18),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_19_rt_1144,
      O => displayvalue_display_Mcount_counter_cy(19)
    );
  displayvalue_display_Mcount_counter_xor_19_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(18),
      LI => displayvalue_display_Mcount_counter_cy_19_rt_1144,
      O => displayvalue_display_Result(19)
    );
  displayvalue_display_Mcount_counter_cy_20_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(19),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_20_rt_1148,
      O => displayvalue_display_Mcount_counter_cy(20)
    );
  displayvalue_display_Mcount_counter_xor_20_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(19),
      LI => displayvalue_display_Mcount_counter_cy_20_rt_1148,
      O => displayvalue_display_Result(20)
    );
  displayvalue_display_Mcount_counter_cy_21_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(20),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_21_rt_1150,
      O => displayvalue_display_Mcount_counter_cy(21)
    );
  displayvalue_display_Mcount_counter_xor_21_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(20),
      LI => displayvalue_display_Mcount_counter_cy_21_rt_1150,
      O => displayvalue_display_Result(21)
    );
  displayvalue_display_Mcount_counter_cy_22_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(21),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_22_rt_1152,
      O => displayvalue_display_Mcount_counter_cy(22)
    );
  displayvalue_display_Mcount_counter_xor_22_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(21),
      LI => displayvalue_display_Mcount_counter_cy_22_rt_1152,
      O => displayvalue_display_Result(22)
    );
  displayvalue_display_Mcount_counter_cy_23_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(22),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_23_rt_1154,
      O => displayvalue_display_Mcount_counter_cy(23)
    );
  displayvalue_display_Mcount_counter_xor_23_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(22),
      LI => displayvalue_display_Mcount_counter_cy_23_rt_1154,
      O => displayvalue_display_Result(23)
    );
  displayvalue_display_Mcount_counter_cy_24_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(23),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_24_rt_1156,
      O => displayvalue_display_Mcount_counter_cy(24)
    );
  displayvalue_display_Mcount_counter_xor_24_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(23),
      LI => displayvalue_display_Mcount_counter_cy_24_rt_1156,
      O => displayvalue_display_Result(24)
    );
  displayvalue_display_Mcount_counter_cy_25_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(24),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_25_rt_1158,
      O => displayvalue_display_Mcount_counter_cy(25)
    );
  displayvalue_display_Mcount_counter_xor_25_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(24),
      LI => displayvalue_display_Mcount_counter_cy_25_rt_1158,
      O => displayvalue_display_Result(25)
    );
  displayvalue_display_Mcount_counter_cy_26_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(25),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_26_rt_1160,
      O => displayvalue_display_Mcount_counter_cy(26)
    );
  displayvalue_display_Mcount_counter_xor_26_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(25),
      LI => displayvalue_display_Mcount_counter_cy_26_rt_1160,
      O => displayvalue_display_Result(26)
    );
  displayvalue_display_Mcount_counter_cy_27_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(26),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_27_rt_1162,
      O => displayvalue_display_Mcount_counter_cy(27)
    );
  displayvalue_display_Mcount_counter_xor_27_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(26),
      LI => displayvalue_display_Mcount_counter_cy_27_rt_1162,
      O => displayvalue_display_Result(27)
    );
  displayvalue_display_Mcount_counter_cy_28_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(27),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_28_rt_1164,
      O => displayvalue_display_Mcount_counter_cy(28)
    );
  displayvalue_display_Mcount_counter_xor_28_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(27),
      LI => displayvalue_display_Mcount_counter_cy_28_rt_1164,
      O => displayvalue_display_Result(28)
    );
  displayvalue_display_Mcount_counter_cy_29_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(28),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_29_rt_1166,
      O => displayvalue_display_Mcount_counter_cy(29)
    );
  displayvalue_display_Mcount_counter_xor_29_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(28),
      LI => displayvalue_display_Mcount_counter_cy_29_rt_1166,
      O => displayvalue_display_Result(29)
    );
  displayvalue_display_Mcount_counter_cy_30_Q : MUXCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(29),
      DI => N0,
      S => displayvalue_display_Mcount_counter_cy_30_rt_1170,
      O => displayvalue_display_Mcount_counter_cy(30)
    );
  displayvalue_display_Mcount_counter_xor_30_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(29),
      LI => displayvalue_display_Mcount_counter_cy_30_rt_1170,
      O => displayvalue_display_Result(30)
    );
  displayvalue_display_Mcount_counter_xor_31_Q : XORCY
    port map (
      CI => displayvalue_display_Mcount_counter_cy(30),
      LI => displayvalue_display_Mcount_counter_xor_31_rt_1186,
      O => displayvalue_display_Result(31)
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_6_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_4_982,
      DI => N0,
      S => N1,
      O => displayvalue_ten_part_cmp_ge0008
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_7 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_8,
      DI => N0,
      S => N1,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_4_982
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_7 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_8,
      DI => N0,
      S => N1,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_8
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_7 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_8,
      DI => N1,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_7,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_8
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_7 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_8,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_5_993,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_8
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_5 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => bpm(5),
      I1 => bpm(6),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_5_993
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_7 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_8,
      DI => N1,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_8_989,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_8
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_8 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => bpm(3),
      I1 => bpm(4),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_8_989
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_7 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_7_rt_956,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_8
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_6 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_7_977,
      DI => N0,
      S => N1,
      O => displayvalue_ten_part_cmp_ge0007
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_6 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_7_971,
      DI => N0,
      S => N1,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_7_977
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_6 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_7_965,
      DI => N1,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_6,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_7_971
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_6 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_7_960,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_4_992,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_7_965
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_4 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => bpm(6),
      I1 => bpm(7),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_4_992
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_6 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_7_951,
      DI => N1,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_7_988,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_7_960
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_7 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => bpm(4),
      I1 => bpm(5),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_7_988
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_6 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_6_rt_955,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_7_951
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_7_1 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_6_2_983,
      DI => N0,
      S => N1,
      O => displayvalue_ten_part_cmp_ge0006
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_6_2 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_3_981,
      DI => N0,
      S => N1,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_6_2_983
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_5 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_6_976,
      DI => N0,
      S => N1,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_3_981
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_5 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_6_970,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_5_rt_979,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_6_976
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_5 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_6_964,
      DI => N1,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_5_994,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_6_970
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => bpm(6),
      I1 => bpm(7),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_5_994
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_5 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_6_959,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_5_rt_967,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_6_964
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_5 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_6_950,
      DI => N1,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_6,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_6_959
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_5 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_0_2_984,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_6_950
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_0_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => bpm(2),
      I1 => bpm(3),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_0_2_984
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_4 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_5_975,
      DI => N0,
      S => N1,
      O => displayvalue_ten_part_cmp_ge0005
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_4 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_5_969,
      DI => N0,
      S => N1,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_5_975
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_4 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_5_963,
      DI => N0,
      S => N1,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_5_969
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_4 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_5_958,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_3_991,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_5_963
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => bpm(7),
      I1 => bpm(8),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_3_991
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_4 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_5_949,
      DI => N1,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_5_986,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_5_958
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => bpm(5),
      I1 => bpm(6),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_5_986
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_4 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_4_rt_954,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_5_949
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_6_1 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_2,
      DI => N0,
      S => N1,
      O => displayvalue_ten_part_cmp_ge0004
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_4_974,
      DI => N0,
      S => N1,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_5_2
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_4_968,
      DI => N0,
      S => N1,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_4_974
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_4_962,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_3_rt_973,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_4_968
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_4_957,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_2_990,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_4_962
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => bpm(4),
      I1 => bpm(5),
      I2 => bpm(6),
      I3 => bpm(7),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_2_2_990
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_4_948,
      DI => N1,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_4,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_1_4_957
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_3 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_3_rt_953,
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_4_948
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_7_0 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_6_1_896,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_7_1,
      O => displayvalue_decimal_part_cmp_ge0008
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_6_5 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_6,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_6_944,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_6_1_896
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_5 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_6_887,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_6_937,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_6
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(12),
      I1 => displayvalue_ten_part(13),
      I2 => displayvalue_ten_part(14),
      I3 => displayvalue_ten_part(15),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_6_937
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_7 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_8,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_7_930,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_6_887
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(8),
      I1 => displayvalue_ten_part(9),
      I2 => displayvalue_ten_part(10),
      I3 => displayvalue_ten_part(11),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_7_930
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_7 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_8,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_8_922,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_8
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(4),
      I1 => displayvalue_ten_part(5),
      I2 => displayvalue_ten_part(6),
      I3 => displayvalue_ten_part(7),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_8_922
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_7 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_8,
      DI => N0,
      S => displayvalue_ten_part(3),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_8
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_7 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_8,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_8_909,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_8
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_7 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_7_rt_852,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_8
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_6_4 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_5_893,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_5,
      O => displayvalue_decimal_part_cmp_ge0007
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_4 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_5_886,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_5_936,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_5_893
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(13),
      I1 => displayvalue_ten_part(14),
      I2 => displayvalue_ten_part(15),
      I3 => displayvalue_ten_part(16),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_5_936
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_6 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_7_879,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_6_929,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_5_886
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(9),
      I1 => displayvalue_ten_part(10),
      I2 => displayvalue_ten_part(11),
      I3 => displayvalue_ten_part(12),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_6_929
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_6 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_7_870,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_7_921,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_7_879
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(5),
      I1 => displayvalue_ten_part(6),
      I2 => displayvalue_ten_part(7),
      I3 => displayvalue_ten_part(8),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_7_921
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_6 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_7_861,
      DI => N0,
      S => displayvalue_ten_part(4),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_7_870
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_6 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_7_849,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_7_908,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_7_861
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_6 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_ten_part(2),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_7_849
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_5 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_6_878,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_5,
      O => displayvalue_decimal_part_cmp_ge0006
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_5 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_6_869,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_6_920,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_6_878
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(13),
      I1 => displayvalue_ten_part(14),
      I2 => displayvalue_ten_part(15),
      I3 => displayvalue_ten_part(16),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_6_920
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_5 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_6_860,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_3_913,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_6_869
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(9),
      I1 => displayvalue_ten_part(10),
      I2 => displayvalue_ten_part(11),
      I3 => displayvalue_ten_part(12),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_3_913
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_5 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_6_848,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_6_907,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_6_860
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(5),
      I1 => displayvalue_ten_part(6),
      I2 => displayvalue_ten_part(7),
      I3 => displayvalue_ten_part(8),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_6_907
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_5 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_0_2_900,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_6_848
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_0_2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => bpm(1),
      I1 => displayvalue_ten_part(2),
      I2 => displayvalue_ten_part(3),
      I3 => displayvalue_ten_part(4),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_0_2_900
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_6_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_4_892,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_4,
      O => displayvalue_decimal_part_cmp_ge0005
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_4_885,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_4_935,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_4_892
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_4 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_5_877,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_4_927,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_4_885
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(10),
      I1 => displayvalue_ten_part(11),
      I2 => displayvalue_ten_part(12),
      I3 => displayvalue_ten_part(13),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_4_927
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_4 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_5_868,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_5_919,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_5_877
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(6),
      I1 => displayvalue_ten_part(7),
      I2 => displayvalue_ten_part(8),
      I3 => displayvalue_ten_part(9),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_5_919
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_4 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_5_859,
      DI => N0,
      S => displayvalue_ten_part(5),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_5_868
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_4 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_5_847,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_5_906,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_5_859
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_4 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_ten_part_3_1_1_1302,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_5_847
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_6_2 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_3_891,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_3,
      O => displayvalue_decimal_part_cmp_ge0004
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_2 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_3_884,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_3_934,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_3_891
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_4_876,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_3_926,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_3_884
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(10),
      I1 => displayvalue_ten_part(11),
      I2 => displayvalue_ten_part(12),
      I3 => displayvalue_ten_part(13),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_3_926
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_4_867,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_4_918,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_4_876
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(6),
      I1 => displayvalue_ten_part(7),
      I2 => displayvalue_ten_part(8),
      I3 => displayvalue_ten_part(9),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_4_918
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_4_858,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_2_912,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_4_867
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_3 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_4_846,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_4_905,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_4_858
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_3 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_3_rt_851,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_4_846
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_2 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_3_875,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_2,
      O => displayvalue_decimal_part_cmp_ge0003
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_2 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_3_866,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_3_917,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_3_875
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_2 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_3_857,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_1_911,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_3_866
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(10),
      I1 => displayvalue_ten_part(11),
      I2 => displayvalue_ten_part(12),
      I3 => displayvalue_ten_part(13),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_1_911
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_2 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_3_845,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_3_904,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_3_857
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(6),
      I1 => displayvalue_ten_part(7),
      I2 => displayvalue_ten_part(8),
      I3 => displayvalue_ten_part(9),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_3_904
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_2 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_0_1_899,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_3_845
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_0_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => displayvalue_ten_part(2),
      I1 => displayvalue_ten_part(3),
      I2 => displayvalue_ten_part(4),
      I3 => displayvalue_ten_part(5),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_0_1_899
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_6_1 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_2_890,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_2,
      O => displayvalue_decimal_part_cmp_ge0002
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_1 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_2_883,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_2_933,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_2_890
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_1 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_2_874,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_1_924,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_2_883
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(11),
      I1 => displayvalue_ten_part(12),
      I2 => displayvalue_ten_part(13),
      I3 => displayvalue_ten_part(14),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_1_924
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_1 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_2_865,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_2_916,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_2_874
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(7),
      I1 => displayvalue_ten_part(8),
      I2 => displayvalue_ten_part(9),
      I3 => displayvalue_ten_part(10),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_2_916
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_1 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_2_856,
      DI => N0,
      S => displayvalue_ten_part(6),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_2_865
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_1 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_2_844,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_2_903,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_2_856
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => displayvalue_ten_part(3),
      I1 => displayvalue_ten_part(4),
      I2 => displayvalue_ten_part(5),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_2_903
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(0),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_2_844
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_6_0 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_1_889,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_1,
      O => displayvalue_decimal_part_cmp_ge0001
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_0 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_1_882,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_1_932,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_1_889
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_0 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_1_873,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(4),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_1_882
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(11),
      I1 => displayvalue_ten_part(12),
      I2 => displayvalue_ten_part(13),
      I3 => displayvalue_ten_part(14),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(4)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_0 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_1_864,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_1_915,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_1_873
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(7),
      I1 => displayvalue_ten_part(8),
      I2 => displayvalue_ten_part(9),
      I3 => displayvalue_ten_part(10),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_1_915
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_0 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_1_855,
      DI => N0,
      S => displayvalue_ten_part_6_1_1_1307,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_1_864
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_0 : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_1_843,
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_1_902,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_1_855
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_0 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_ten_part_4_1_1_1304,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_1_843
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(7),
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(8),
      O => displayvalue_decimal_part_cmp_ge0000
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(6),
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(7),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(7)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(5),
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(6),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(6)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(11),
      I1 => displayvalue_ten_part(12),
      I2 => displayvalue_ten_part(13),
      I3 => displayvalue_ten_part(14),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(6)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(4),
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(5),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(5)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_ten_part(7),
      I1 => displayvalue_ten_part(8),
      I2 => displayvalue_ten_part(9),
      I3 => displayvalue_ten_part(10),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(5)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(3),
      DI => N0,
      S => displayvalue_ten_part_6_1_2_1308,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(4)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(2),
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(3),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(3)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(1),
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(2),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(2)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(0),
      DI => N1,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(1),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(1)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_rt_853,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy(0)
    );
  displayvalue_Msub_ten_part_share0000_xor_17_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(16),
      LI => N1,
      O => displayvalue_ten_part_share0000(17)
    );
  displayvalue_Msub_ten_part_share0000_xor_16_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(15),
      LI => N1,
      O => displayvalue_ten_part_share0000(16)
    );
  displayvalue_Msub_ten_part_share0000_cy_16_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(15),
      DI => N0,
      S => N1,
      O => displayvalue_Msub_ten_part_share0000_cy(16)
    );
  displayvalue_Msub_ten_part_share0000_xor_15_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(14),
      LI => N1,
      O => displayvalue_ten_part_share0000(15)
    );
  displayvalue_Msub_ten_part_share0000_cy_15_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(14),
      DI => N0,
      S => N1,
      O => displayvalue_Msub_ten_part_share0000_cy(15)
    );
  displayvalue_Msub_ten_part_share0000_xor_14_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(13),
      LI => N1,
      O => displayvalue_ten_part_share0000(14)
    );
  displayvalue_Msub_ten_part_share0000_cy_14_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(13),
      DI => N0,
      S => N1,
      O => displayvalue_Msub_ten_part_share0000_cy(14)
    );
  displayvalue_Msub_ten_part_share0000_xor_13_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(12),
      LI => N1,
      O => displayvalue_ten_part_share0000(13)
    );
  displayvalue_Msub_ten_part_share0000_cy_13_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(12),
      DI => N0,
      S => N1,
      O => displayvalue_Msub_ten_part_share0000_cy(13)
    );
  displayvalue_Msub_ten_part_share0000_xor_12_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(11),
      LI => N1,
      O => displayvalue_ten_part_share0000(12)
    );
  displayvalue_Msub_ten_part_share0000_cy_12_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(11),
      DI => N0,
      S => N1,
      O => displayvalue_Msub_ten_part_share0000_cy(12)
    );
  displayvalue_Msub_ten_part_share0000_xor_11_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(10),
      LI => N1,
      O => displayvalue_ten_part_share0000(11)
    );
  displayvalue_Msub_ten_part_share0000_cy_11_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(10),
      DI => N0,
      S => N1,
      O => displayvalue_Msub_ten_part_share0000_cy(11)
    );
  displayvalue_Msub_ten_part_share0000_xor_10_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(9),
      LI => N1,
      O => displayvalue_ten_part_share0000(10)
    );
  displayvalue_Msub_ten_part_share0000_cy_10_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(9),
      DI => N0,
      S => N1,
      O => displayvalue_Msub_ten_part_share0000_cy(10)
    );
  displayvalue_Msub_ten_part_share0000_xor_9_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(8),
      LI => N1,
      O => displayvalue_ten_part_share0000(9)
    );
  displayvalue_Msub_ten_part_share0000_cy_9_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(8),
      DI => N0,
      S => N1,
      O => displayvalue_Msub_ten_part_share0000_cy(9)
    );
  displayvalue_Msub_ten_part_share0000_xor_8_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(7),
      LI => displayvalue_Msub_ten_part_share0000_lut(8),
      O => displayvalue_ten_part_share0000(8)
    );
  displayvalue_Msub_ten_part_share0000_cy_8_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(7),
      DI => bpm(8),
      S => displayvalue_Msub_ten_part_share0000_lut(8),
      O => displayvalue_Msub_ten_part_share0000_cy(8)
    );
  displayvalue_Msub_ten_part_share0000_xor_7_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(6),
      LI => displayvalue_Msub_ten_part_share0000_lut(7),
      O => displayvalue_ten_part_share0000(7)
    );
  displayvalue_Msub_ten_part_share0000_cy_7_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(6),
      DI => bpm(7),
      S => displayvalue_Msub_ten_part_share0000_lut(7),
      O => displayvalue_Msub_ten_part_share0000_cy(7)
    );
  displayvalue_Msub_ten_part_share0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => bpm(7),
      I1 => displayvalue_ten_part_mux0008_10_Q,
      O => displayvalue_Msub_ten_part_share0000_lut(7)
    );
  displayvalue_Msub_ten_part_share0000_xor_6_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(5),
      LI => displayvalue_Msub_ten_part_share0000_lut(6),
      O => displayvalue_ten_part_share0000(6)
    );
  displayvalue_Msub_ten_part_share0000_cy_6_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(5),
      DI => bpm(6),
      S => displayvalue_Msub_ten_part_share0000_lut(6),
      O => displayvalue_Msub_ten_part_share0000_cy(6)
    );
  displayvalue_Msub_ten_part_share0000_xor_5_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(4),
      LI => displayvalue_Msub_ten_part_share0000_lut(5),
      O => displayvalue_ten_part_share0000(5)
    );
  displayvalue_Msub_ten_part_share0000_cy_5_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(4),
      DI => bpm(5),
      S => displayvalue_Msub_ten_part_share0000_lut(5),
      O => displayvalue_Msub_ten_part_share0000_cy(5)
    );
  displayvalue_Msub_ten_part_share0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => bpm(5),
      I1 => displayvalue_ten_part_mux0008_12_Q,
      O => displayvalue_Msub_ten_part_share0000_lut(5)
    );
  displayvalue_Msub_ten_part_share0000_xor_4_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(3),
      LI => displayvalue_Msub_ten_part_share0000_lut(4),
      O => displayvalue_ten_part_share0000(4)
    );
  displayvalue_Msub_ten_part_share0000_cy_4_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(3),
      DI => bpm(4),
      S => displayvalue_Msub_ten_part_share0000_lut(4),
      O => displayvalue_Msub_ten_part_share0000_cy(4)
    );
  displayvalue_Msub_ten_part_share0000_xor_3_Q : XORCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(2),
      LI => displayvalue_Msub_ten_part_share0000_lut(3),
      O => displayvalue_ten_part_share0000(3)
    );
  displayvalue_Msub_ten_part_share0000_cy_3_Q : MUXCY
    port map (
      CI => displayvalue_Msub_ten_part_share0000_cy(2),
      DI => bpm(3),
      S => displayvalue_Msub_ten_part_share0000_lut(3),
      O => displayvalue_Msub_ten_part_share0000_cy(3)
    );
  displayvalue_Msub_ten_part_share0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => bpm(3),
      I1 => displayvalue_hundred_bit(1),
      O => displayvalue_Msub_ten_part_share0000_lut(3)
    );
  displayvalue_Msub_ten_part_share0000_xor_2_Q : XORCY
    port map (
      CI => N1,
      LI => displayvalue_Msub_ten_part_share0000_lut(2),
      O => displayvalue_ten_part_share0000(2)
    );
  displayvalue_Msub_ten_part_share0000_cy_2_Q : MUXCY
    port map (
      CI => N1,
      DI => bpm(2),
      S => displayvalue_Msub_ten_part_share0000_lut(2),
      O => displayvalue_Msub_ten_part_share0000_cy(2)
    );
  displayvalue_Msub_ten_part_share0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => bpm(2),
      I1 => displayvalue_ten_part_mux0008_12_Q,
      O => displayvalue_Msub_ten_part_share0000_lut(2)
    );
  displayvalue_Msub_decimal_part_share0000_xor_18_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(17),
      LI => displayvalue_Msub_decimal_part_share0000_lut(18),
      O => displayvalue_decimal_part_share0000(18)
    );
  displayvalue_Msub_decimal_part_share0000_xor_17_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(16),
      LI => displayvalue_Msub_decimal_part_share0000_lut(17),
      O => displayvalue_decimal_part_share0000(17)
    );
  displayvalue_Msub_decimal_part_share0000_cy_17_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(16),
      DI => N1,
      S => displayvalue_Msub_decimal_part_share0000_lut(17),
      O => displayvalue_Msub_decimal_part_share0000_cy(17)
    );
  displayvalue_Msub_decimal_part_share0000_xor_16_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(15),
      LI => displayvalue_Msub_decimal_part_share0000_lut(16),
      O => displayvalue_decimal_part_share0000(16)
    );
  displayvalue_Msub_decimal_part_share0000_cy_16_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(15),
      DI => N1,
      S => displayvalue_Msub_decimal_part_share0000_lut(16),
      O => displayvalue_Msub_decimal_part_share0000_cy(16)
    );
  displayvalue_Msub_decimal_part_share0000_xor_15_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(14),
      LI => displayvalue_Msub_decimal_part_share0000_lut(15),
      O => displayvalue_decimal_part_share0000(15)
    );
  displayvalue_Msub_decimal_part_share0000_cy_15_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(14),
      DI => N1,
      S => displayvalue_Msub_decimal_part_share0000_lut(15),
      O => displayvalue_Msub_decimal_part_share0000_cy(15)
    );
  displayvalue_Msub_decimal_part_share0000_xor_14_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(13),
      LI => displayvalue_Msub_decimal_part_share0000_lut(14),
      O => displayvalue_decimal_part_share0000(14)
    );
  displayvalue_Msub_decimal_part_share0000_cy_14_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(13),
      DI => N1,
      S => displayvalue_Msub_decimal_part_share0000_lut(14),
      O => displayvalue_Msub_decimal_part_share0000_cy(14)
    );
  displayvalue_Msub_decimal_part_share0000_xor_13_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(12),
      LI => displayvalue_Msub_decimal_part_share0000_lut(13),
      O => displayvalue_decimal_part_share0000(13)
    );
  displayvalue_Msub_decimal_part_share0000_cy_13_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(12),
      DI => N1,
      S => displayvalue_Msub_decimal_part_share0000_lut(13),
      O => displayvalue_Msub_decimal_part_share0000_cy(13)
    );
  displayvalue_Msub_decimal_part_share0000_xor_12_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(11),
      LI => displayvalue_Msub_decimal_part_share0000_lut(12),
      O => displayvalue_decimal_part_share0000(12)
    );
  displayvalue_Msub_decimal_part_share0000_cy_12_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(11),
      DI => N1,
      S => displayvalue_Msub_decimal_part_share0000_lut(12),
      O => displayvalue_Msub_decimal_part_share0000_cy(12)
    );
  displayvalue_Msub_decimal_part_share0000_xor_11_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(10),
      LI => displayvalue_Msub_decimal_part_share0000_lut(11),
      O => displayvalue_decimal_part_share0000(11)
    );
  displayvalue_Msub_decimal_part_share0000_cy_11_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(10),
      DI => N1,
      S => displayvalue_Msub_decimal_part_share0000_lut(11),
      O => displayvalue_Msub_decimal_part_share0000_cy(11)
    );
  displayvalue_Msub_decimal_part_share0000_xor_10_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(9),
      LI => displayvalue_Msub_decimal_part_share0000_lut(10),
      O => displayvalue_decimal_part_share0000(10)
    );
  displayvalue_Msub_decimal_part_share0000_cy_10_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(9),
      DI => N1,
      S => displayvalue_Msub_decimal_part_share0000_lut(10),
      O => displayvalue_Msub_decimal_part_share0000_cy(10)
    );
  displayvalue_Msub_decimal_part_share0000_xor_9_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(8),
      LI => displayvalue_Msub_decimal_part_share0000_lut(9),
      O => displayvalue_decimal_part_share0000(9)
    );
  displayvalue_Msub_decimal_part_share0000_cy_9_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(8),
      DI => N1,
      S => displayvalue_Msub_decimal_part_share0000_lut(9),
      O => displayvalue_Msub_decimal_part_share0000_cy(9)
    );
  displayvalue_Msub_decimal_part_share0000_xor_8_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(7),
      LI => displayvalue_Msub_decimal_part_share0000_lut(8),
      O => displayvalue_decimal_part_share0000(8)
    );
  displayvalue_Msub_decimal_part_share0000_cy_8_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(7),
      DI => N1,
      S => displayvalue_Msub_decimal_part_share0000_lut(8),
      O => displayvalue_Msub_decimal_part_share0000_cy(8)
    );
  displayvalue_Msub_decimal_part_share0000_xor_7_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(6),
      LI => displayvalue_Msub_decimal_part_share0000_lut(7),
      O => displayvalue_decimal_part_share0000(7)
    );
  displayvalue_Msub_decimal_part_share0000_cy_7_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(6),
      DI => N1,
      S => displayvalue_Msub_decimal_part_share0000_lut(7),
      O => displayvalue_Msub_decimal_part_share0000_cy(7)
    );
  displayvalue_Msub_decimal_part_share0000_xor_6_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(5),
      LI => displayvalue_Msub_decimal_part_share0000_lut(6),
      O => displayvalue_decimal_part_share0000(6)
    );
  displayvalue_Msub_decimal_part_share0000_cy_6_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(5),
      DI => displayvalue_ten_part(6),
      S => displayvalue_Msub_decimal_part_share0000_lut(6),
      O => displayvalue_Msub_decimal_part_share0000_cy(6)
    );
  displayvalue_Msub_decimal_part_share0000_xor_5_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(4),
      LI => displayvalue_Msub_decimal_part_share0000_lut(5),
      O => displayvalue_decimal_part_share0000(5)
    );
  displayvalue_Msub_decimal_part_share0000_cy_5_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(4),
      DI => displayvalue_ten_part(5),
      S => displayvalue_Msub_decimal_part_share0000_lut(5),
      O => displayvalue_Msub_decimal_part_share0000_cy(5)
    );
  displayvalue_Msub_decimal_part_share0000_xor_4_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(3),
      LI => displayvalue_Msub_decimal_part_share0000_lut(4),
      O => displayvalue_decimal_part_share0000(4)
    );
  displayvalue_Msub_decimal_part_share0000_cy_4_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(3),
      DI => displayvalue_ten_part(4),
      S => displayvalue_Msub_decimal_part_share0000_lut(4),
      O => displayvalue_Msub_decimal_part_share0000_cy(4)
    );
  displayvalue_Msub_decimal_part_share0000_xor_3_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(2),
      LI => displayvalue_Msub_decimal_part_share0000_lut(3),
      O => displayvalue_decimal_part_share0000(3)
    );
  displayvalue_Msub_decimal_part_share0000_cy_3_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(2),
      DI => displayvalue_ten_part(3),
      S => displayvalue_Msub_decimal_part_share0000_lut(3),
      O => displayvalue_Msub_decimal_part_share0000_cy(3)
    );
  displayvalue_Msub_decimal_part_share0000_xor_2_Q : XORCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(1),
      LI => displayvalue_Msub_decimal_part_share0000_lut(2),
      O => displayvalue_decimal_part_share0000(2)
    );
  displayvalue_Msub_decimal_part_share0000_cy_2_Q : MUXCY
    port map (
      CI => displayvalue_Msub_decimal_part_share0000_cy(1),
      DI => displayvalue_ten_part(2),
      S => displayvalue_Msub_decimal_part_share0000_lut(2),
      O => displayvalue_Msub_decimal_part_share0000_cy(2)
    );
  displayvalue_Msub_decimal_part_share0000_xor_1_Q : XORCY
    port map (
      CI => N1,
      LI => displayvalue_Msub_decimal_part_share0000_lut(1),
      O => displayvalue_decimal_part_share0000(1)
    );
  displayvalue_Msub_decimal_part_share0000_cy_1_Q : MUXCY
    port map (
      CI => N1,
      DI => bpm(1),
      S => displayvalue_Msub_decimal_part_share0000_lut(1),
      O => displayvalue_Msub_decimal_part_share0000_cy(1)
    );
  displayvalue_display_digit_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => displayvalue_display_counter(9),
      I1 => displayvalue_display_counter(8),
      I2 => displayvalue_display_counter(7),
      I3 => displayvalue_display_counter(10),
      O => displayvalue_display_digit_cmp_eq0000_wg_lut(0)
    );
  displayvalue_display_digit_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_display_digit_cmp_eq0000_wg_lut(0),
      O => displayvalue_display_digit_cmp_eq0000_wg_cy(0)
    );
  displayvalue_display_digit_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_display_counter(11),
      I1 => displayvalue_display_counter(12),
      I2 => displayvalue_display_counter(6),
      I3 => displayvalue_display_counter(13),
      O => displayvalue_display_digit_cmp_eq0000_wg_lut(1)
    );
  displayvalue_display_digit_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => displayvalue_display_digit_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => displayvalue_display_digit_cmp_eq0000_wg_lut(1),
      O => displayvalue_display_digit_cmp_eq0000_wg_cy(1)
    );
  displayvalue_display_digit_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => displayvalue_display_counter(15),
      I1 => displayvalue_display_counter(14),
      I2 => displayvalue_display_counter(5),
      I3 => displayvalue_display_counter(16),
      O => displayvalue_display_digit_cmp_eq0000_wg_lut(2)
    );
  displayvalue_display_digit_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => displayvalue_display_digit_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => displayvalue_display_digit_cmp_eq0000_wg_lut(2),
      O => displayvalue_display_digit_cmp_eq0000_wg_cy(2)
    );
  displayvalue_display_digit_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_display_counter(17),
      I1 => displayvalue_display_counter(18),
      I2 => displayvalue_display_counter(4),
      I3 => displayvalue_display_counter(19),
      O => displayvalue_display_digit_cmp_eq0000_wg_lut(3)
    );
  displayvalue_display_digit_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => displayvalue_display_digit_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => displayvalue_display_digit_cmp_eq0000_wg_lut(3),
      O => displayvalue_display_digit_cmp_eq0000_wg_cy(3)
    );
  displayvalue_display_digit_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_display_counter(20),
      I1 => displayvalue_display_counter(21),
      I2 => displayvalue_display_counter(3),
      I3 => displayvalue_display_counter(22),
      O => displayvalue_display_digit_cmp_eq0000_wg_lut(4)
    );
  displayvalue_display_digit_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => displayvalue_display_digit_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => displayvalue_display_digit_cmp_eq0000_wg_lut(4),
      O => displayvalue_display_digit_cmp_eq0000_wg_cy(4)
    );
  displayvalue_display_digit_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_display_counter(23),
      I1 => displayvalue_display_counter(24),
      I2 => displayvalue_display_counter(2),
      I3 => displayvalue_display_counter(25),
      O => displayvalue_display_digit_cmp_eq0000_wg_lut(5)
    );
  displayvalue_display_digit_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => displayvalue_display_digit_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => displayvalue_display_digit_cmp_eq0000_wg_lut(5),
      O => displayvalue_display_digit_cmp_eq0000_wg_cy(5)
    );
  displayvalue_display_digit_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_display_counter(26),
      I1 => displayvalue_display_counter(27),
      I2 => displayvalue_display_counter(1),
      I3 => displayvalue_display_counter(28),
      O => displayvalue_display_digit_cmp_eq0000_wg_lut(6)
    );
  displayvalue_display_digit_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => displayvalue_display_digit_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => displayvalue_display_digit_cmp_eq0000_wg_lut(6),
      O => displayvalue_display_digit_cmp_eq0000_wg_cy(6)
    );
  displayvalue_display_digit_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => displayvalue_display_counter(29),
      I1 => displayvalue_display_counter(30),
      I2 => displayvalue_display_counter(0),
      I3 => displayvalue_display_counter(31),
      O => displayvalue_display_digit_cmp_eq0000_wg_lut(7)
    );
  displayvalue_display_digit_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => displayvalue_display_digit_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => displayvalue_display_digit_cmp_eq0000_wg_lut(7),
      O => displayvalue_display_digit_cmp_eq0000
    );
  displayvalue_digit_bit_0_1_wg_lut_0_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_decimal_part_share0000(4),
      O => displayvalue_digit_bit_0_1_wg_lut_0_Q_1107
    );
  displayvalue_digit_bit_0_1_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_0_Q_1107,
      O => displayvalue_digit_bit_0_1_wg_cy_0_Q_1092
    );
  displayvalue_digit_bit_0_1_wg_cy_1_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_0_Q_1092,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_1_Q_1113,
      O => displayvalue_digit_bit_0_1_wg_cy_1_Q_1098
    );
  displayvalue_digit_bit_0_1_wg_cy_2_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_1_Q_1098,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_2_Q_1114,
      O => displayvalue_digit_bit_0_1_wg_cy_2_Q_1099
    );
  displayvalue_digit_bit_0_1_wg_cy_3_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_2_Q_1099,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_3_Q_1115,
      O => displayvalue_digit_bit_0_1_wg_cy_3_Q_1100
    );
  displayvalue_digit_bit_0_1_wg_cy_4_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_3_Q_1100,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_4_Q_1116,
      O => displayvalue_digit_bit_0_1_wg_cy_4_Q_1101
    );
  displayvalue_digit_bit_0_1_wg_cy_5_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_4_Q_1101,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_5_Q_1117,
      O => displayvalue_digit_bit_0_1_wg_cy_5_Q_1102
    );
  displayvalue_digit_bit_0_1_wg_cy_6_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_5_Q_1102,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_6_Q_1118,
      O => displayvalue_digit_bit_0_1_wg_cy_6_Q_1103
    );
  displayvalue_digit_bit_0_1_wg_cy_7_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_6_Q_1103,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_7_Q_1119,
      O => displayvalue_digit_bit_0_1_wg_cy_7_Q_1104
    );
  displayvalue_digit_bit_0_1_wg_cy_8_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_7_Q_1104,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_8_Q_1120,
      O => displayvalue_digit_bit_0_1_wg_cy_8_Q_1105
    );
  displayvalue_digit_bit_0_1_wg_cy_9_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_8_Q_1105,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_9_Q_1121,
      O => displayvalue_digit_bit_0_1_wg_cy_9_Q_1106
    );
  displayvalue_digit_bit_0_1_wg_lut_10_Q : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_decimal_part_share0000(14),
      I2 => displayvalue_ten_part(8),
      O => displayvalue_digit_bit_0_1_wg_lut_10_Q_1108
    );
  displayvalue_digit_bit_0_1_wg_cy_10_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_9_Q_1106,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_10_Q_1108,
      O => displayvalue_digit_bit_0_1_wg_cy_10_Q_1093
    );
  displayvalue_digit_bit_0_1_wg_lut_11_Q : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_decimal_part_share0000(15),
      I2 => displayvalue_ten_part(6),
      O => displayvalue_digit_bit_0_1_wg_lut_11_Q_1109
    );
  displayvalue_digit_bit_0_1_wg_cy_11_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_10_Q_1093,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_11_Q_1109,
      O => displayvalue_digit_bit_0_1_wg_cy_11_Q_1094
    );
  displayvalue_digit_bit_0_1_wg_lut_12_Q : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_decimal_part_share0000(16),
      I2 => displayvalue_ten_part(7),
      O => displayvalue_digit_bit_0_1_wg_lut_12_Q_1110
    );
  displayvalue_digit_bit_0_1_wg_cy_12_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_11_Q_1094,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_12_Q_1110,
      O => displayvalue_digit_bit_0_1_wg_cy_12_Q_1095
    );
  displayvalue_digit_bit_0_1_wg_lut_13_Q : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_decimal_part_share0000(17),
      I2 => displayvalue_ten_part(5),
      O => displayvalue_digit_bit_0_1_wg_lut_13_Q_1111
    );
  displayvalue_digit_bit_0_1_wg_cy_13_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_12_Q_1095,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_13_Q_1111,
      O => displayvalue_digit_bit_0_1_wg_cy_13_Q_1096
    );
  displayvalue_digit_bit_0_1_wg_lut_14_Q : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_decimal_part_share0000(18),
      I2 => displayvalue_ten_part(4),
      O => displayvalue_digit_bit_0_1_wg_lut_14_Q_1112
    );
  displayvalue_digit_bit_0_1_wg_cy_14_Q : MUXCY
    port map (
      CI => displayvalue_digit_bit_0_1_wg_cy_13_Q_1096,
      DI => N0,
      S => displayvalue_digit_bit_0_1_wg_lut_14_Q_1112,
      O => displayvalue_digit_bit_0_1_wg_cy_14_Q_1097
    );
  bpm_8_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_8_IBUF_17,
      O => bpm_8_and0001
    );
  bpm_8_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_8_IBUF_17,
      O => bpm_8_and0000
    );
  bpm_7_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_7_IBUF_16,
      O => bpm_7_and0001
    );
  bpm_7_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_7_IBUF_16,
      O => bpm_7_and0000
    );
  bpm_6_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_6_IBUF_15,
      O => bpm_6_and0001
    );
  bpm_6_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_6_IBUF_15,
      O => bpm_6_and0000
    );
  bpm_5_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_5_IBUF_14,
      O => bpm_5_and0001
    );
  bpm_5_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_5_IBUF_14,
      O => bpm_5_and0000
    );
  bpm_4_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_4_IBUF_13,
      O => bpm_4_and0001
    );
  bpm_4_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_4_IBUF_13,
      O => bpm_4_and0000
    );
  bpm_3_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_3_IBUF_12,
      O => bpm_3_and0001
    );
  bpm_3_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_3_IBUF_12,
      O => bpm_3_and0000
    );
  bpm_2_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_2_IBUF_11,
      O => bpm_2_and0001
    );
  bpm_2_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_2_IBUF_11,
      O => bpm_2_and0000
    );
  bpm_1_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_1_IBUF_10,
      O => bpm_1_and0001
    );
  bpm_1_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_1_IBUF_10,
      O => bpm_1_and0000
    );
  bpm_0_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_0_IBUF_9,
      O => bpm_0_and0001
    );
  bpm_0_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Default_0_IBUF_9,
      O => bpm_0_and0000
    );
  displayvalue_display_anode_3_mux00001 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_display_digit(0),
      I1 => displayvalue_display_digit(1),
      O => an_3_OBUF_702
    );
  displayvalue_display_anode_2_mux00001 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => displayvalue_display_digit(0),
      I1 => displayvalue_display_digit(1),
      O => an_2_OBUF_701
    );
  displayvalue_display_anode_1_mux00001 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => displayvalue_display_digit(1),
      I1 => displayvalue_display_digit(0),
      O => an_1_OBUF_700
    );
  displayvalue_display_anode_0_mux00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => displayvalue_display_digit(0),
      I1 => displayvalue_display_digit(1),
      O => an_0_OBUF_699
    );
  displayvalue_display_Mcount_digit_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => displayvalue_display_digit(1),
      I1 => displayvalue_display_digit(0),
      O => displayvalue_display_Result(1)
    );
  bpm_mux0023_7_62 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => Default_7_IBUF_16,
      I1 => bpm_mux0023_7_17,
      I2 => bpm_mux0023_7_32_834,
      I3 => N181,
      O => bpm_mux0023_7_62_835
    );
  bpm_mux0023_7_98 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => N29,
      I1 => N181,
      I2 => bpm_mux0023_7_81,
      I3 => N28,
      O => bpm_mux0023_7_98_838
    );
  bpm_mux0023_7_103 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => bpm_mux0023_7_62_835,
      I1 => bpm_mux0023_7_98_838,
      O => bpm_mux0023(7)
    );
  bpm_mux0023_6_67 : LUT4
    generic map(
      INIT => X"AFA8"
    )
    port map (
      I0 => Default_6_IBUF_15,
      I1 => bpm_mux0023_6_13_828,
      I2 => N181,
      I3 => bpm_mux0023_6_46_830,
      O => bpm_mux0023(6)
    );
  displayvalue_ten_bit_0_11 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0008,
      I1 => displayvalue_decimal_part_cmp_ge0007,
      I2 => displayvalue_decimal_part_cmp_ge0005,
      I3 => displayvalue_decimal_part_cmp_ge0006,
      O => displayvalue_ten_bit_0_11_1287
    );
  displayvalue_ten_bit_0_30 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => displayvalue_ten_bit_0_11_1287,
      I1 => displayvalue_decimal_part_cmp_ge0003,
      I2 => displayvalue_decimal_part_cmp_ge0004,
      I3 => displayvalue_decimal_part_cmp_ge0002,
      O => displayvalue_ten_bit_0_30_1288
    );
  displayvalue_ten_bit_0_50 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => displayvalue_ten_bit_0_30_1288,
      I1 => displayvalue_decimal_part_cmp_ge0001,
      I2 => displayvalue_decimal_part_cmp_ge0000,
      O => displayvalue_ten_bit(0)
    );
  displayvalue_decimal_part_10_18 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0002,
      I1 => displayvalue_decimal_part_cmp_ge0006,
      I2 => displayvalue_decimal_part_cmp_ge0007,
      O => displayvalue_decimal_part_10_18_1056
    );
  displayvalue_ten_bit_3_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0000,
      I1 => displayvalue_decimal_part_cmp_ge0001,
      O => displayvalue_ten_bit(3)
    );
  displayvalue_ten_part_2_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(2),
      I2 => displayvalue_ten_part_share0000(2),
      O => displayvalue_ten_part(2)
    );
  displayvalue_ten_bit_1_SW0 : LUT4
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0004,
      I1 => displayvalue_decimal_part_cmp_ge0007,
      I2 => displayvalue_decimal_part_cmp_ge0006,
      I3 => displayvalue_decimal_part_cmp_ge0005,
      O => N10
    );
  displayvalue_ten_bit_1_Q : LUT4
    generic map(
      INIT => X"3233"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0003,
      I1 => displayvalue_ten_bit(3),
      I2 => displayvalue_decimal_part_cmp_ge0002,
      I3 => N10,
      O => displayvalue_ten_bit(1)
    );
  displayvalue_decimal_part_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => bpm(1),
      I2 => displayvalue_decimal_part_share0000(1),
      O => displayvalue_decimal_part(1)
    );
  displayvalue_decimal_part_mux0008_14_SW0 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0007,
      I1 => displayvalue_decimal_part_cmp_ge0005,
      I2 => displayvalue_decimal_part_cmp_ge0006,
      I3 => displayvalue_decimal_part_cmp_ge0003,
      O => N12
    );
  displayvalue_ten_part_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(4),
      I2 => displayvalue_ten_part_share0000(4),
      O => displayvalue_ten_part(4)
    );
  displayvalue_decimal_part_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_ten_part(3),
      I2 => displayvalue_decimal_part_share0000(3),
      O => displayvalue_decimal_part(3)
    );
  displayvalue_ten_part_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(7),
      I2 => displayvalue_ten_part_share0000(7),
      O => displayvalue_ten_part(7)
    );
  displayvalue_ten_part_8_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(8),
      I2 => displayvalue_ten_part_share0000(8),
      O => displayvalue_ten_part(8)
    );
  displayvalue_ten_part_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(6),
      I2 => displayvalue_ten_part_share0000(6),
      O => displayvalue_ten_part(6)
    );
  displayvalue_ten_part_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(5),
      I2 => displayvalue_ten_part_share0000(5),
      O => displayvalue_ten_part(5)
    );
  displayvalue_ten_part_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(3),
      I2 => displayvalue_ten_part_share0000(3),
      O => displayvalue_ten_part(3)
    );
  displayvalue_decimal_part_mux0008_15_10 : LUT4
    generic map(
      INIT => X"3233"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0006,
      I1 => displayvalue_decimal_part_cmp_ge0004,
      I2 => displayvalue_decimal_part_cmp_ge0005,
      I3 => displayvalue_decimal_part_cmp_ge0007,
      O => displayvalue_decimal_part_mux0008_15_10_1069
    );
  displayvalue_decimal_part_mux0008_15_20 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0001,
      I1 => displayvalue_decimal_part_cmp_ge0002,
      O => displayvalue_decimal_part_mux0008_15_20_1070
    );
  displayvalue_ten_part_11_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(11),
      I1 => displayvalue_N1,
      O => displayvalue_ten_part(11)
    );
  displayvalue_ten_part_12_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(12),
      I1 => displayvalue_N1,
      O => displayvalue_ten_part(12)
    );
  displayvalue_decimal_part_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_ten_part(2),
      I2 => displayvalue_decimal_part_share0000(2),
      O => displayvalue_decimal_part(2)
    );
  displayvalue_ten_part_10_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(10),
      I1 => displayvalue_N1,
      O => displayvalue_ten_part(10)
    );
  displayvalue_digit_bit_0_Q : LUT4
    generic map(
      INIT => X"0888"
    )
    port map (
      I0 => displayvalue_digit_bit_0_1_wg_cy_14_Q_1097,
      I1 => bpm(0),
      I2 => displayvalue_decimal_part(3),
      I3 => N14,
      O => displayvalue_digit_bit(0)
    );
  displayvalue_ten_part_9_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(9),
      I1 => displayvalue_N1,
      O => displayvalue_ten_part(9)
    );
  displayvalue_ten_part_15_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(15),
      I1 => displayvalue_N1,
      O => displayvalue_ten_part(15)
    );
  displayvalue_ten_part_mux0008_10_1 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => displayvalue_ten_part_cmp_ge0005,
      I1 => displayvalue_ten_part_cmp_ge0007,
      I2 => displayvalue_ten_part_cmp_ge0006,
      I3 => displayvalue_ten_part_cmp_ge0004,
      O => displayvalue_ten_part_mux0008_10_Q
    );
  displayvalue_ten_part_16_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(16),
      I1 => displayvalue_N1,
      O => displayvalue_ten_part(16)
    );
  displayvalue_ten_part_14_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(14),
      I1 => displayvalue_N1,
      O => displayvalue_ten_part(14)
    );
  displayvalue_ten_part_13_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(13),
      I1 => displayvalue_N1,
      O => displayvalue_ten_part(13)
    );
  displayvalue_hundred_bit_1_1 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => displayvalue_ten_part_cmp_ge0006,
      I1 => displayvalue_ten_part_cmp_ge0004,
      I2 => displayvalue_ten_part_cmp_ge0005,
      I3 => displayvalue_ten_part_cmp_ge0007,
      O => displayvalue_hundred_bit(1)
    );
  displayvalue_digit_bit_2_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => displayvalue_digit_bit_0_1_wg_cy_14_Q_1097,
      I1 => displayvalue_decimal_part(2),
      I2 => displayvalue_decimal_part(3),
      O => displayvalue_digit_bit(2)
    );
  displayvalue_digit_bit_1_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => displayvalue_digit_bit_0_1_wg_cy_14_Q_1097,
      I1 => displayvalue_decimal_part(1),
      I2 => displayvalue_decimal_part(3),
      O => displayvalue_digit_bit(1)
    );
  displayvalue_ten_part_mux0008_12_1 : LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      I0 => displayvalue_ten_part_cmp_ge0006,
      I1 => displayvalue_ten_part_cmp_ge0005,
      I2 => displayvalue_ten_part_cmp_ge0007,
      I3 => displayvalue_ten_part_cmp_ge0004,
      O => displayvalue_ten_part_mux0008_12_Q
    );
  displayvalue_display_binary_to_decimal_out_seg_4_1 : LUT4
    generic map(
      INIT => X"454C"
    )
    port map (
      I0 => displayvalue_display_binary(3),
      I1 => displayvalue_display_binary(0),
      I2 => displayvalue_display_binary(1),
      I3 => displayvalue_display_binary(2),
      O => hex_4_OBUF_1346
    );
  displayvalue_display_binary_to_decimal_out_seg_2_1 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => displayvalue_display_binary(1),
      I1 => displayvalue_display_binary(3),
      I2 => displayvalue_display_binary(2),
      I3 => displayvalue_display_binary(0),
      O => hex_2_OBUF_1344
    );
  displayvalue_display_binary_to_decimal_out_seg_6_1 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => displayvalue_display_binary(1),
      I1 => displayvalue_display_binary(2),
      I2 => displayvalue_display_binary(3),
      I3 => displayvalue_display_binary(0),
      O => hex_6_OBUF_1348
    );
  displayvalue_display_binary_to_decimal_out_seg_5_1 : LUT4
    generic map(
      INIT => X"6032"
    )
    port map (
      I0 => displayvalue_display_binary(1),
      I1 => displayvalue_display_binary(3),
      I2 => displayvalue_display_binary(0),
      I3 => displayvalue_display_binary(2),
      O => hex_5_OBUF_1347
    );
  displayvalue_display_binary_to_decimal_out_seg_1_1 : LUT4
    generic map(
      INIT => X"E448"
    )
    port map (
      I0 => displayvalue_display_binary(0),
      I1 => displayvalue_display_binary(2),
      I2 => displayvalue_display_binary(1),
      I3 => displayvalue_display_binary(3),
      O => hex_1_OBUF_1343
    );
  displayvalue_display_binary_to_decimal_out_seg_3_1 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => displayvalue_display_binary(1),
      I1 => displayvalue_display_binary(3),
      I2 => displayvalue_display_binary(0),
      I3 => displayvalue_display_binary(2),
      O => hex_3_OBUF_1345
    );
  displayvalue_display_binary_to_decimal_out_seg_0_1 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => displayvalue_display_binary(0),
      I1 => displayvalue_display_binary(1),
      I2 => displayvalue_display_binary(2),
      I3 => displayvalue_display_binary(3),
      O => hex_0_OBUF_1342
    );
  displayvalue_decimal_part_mux0008_17_12 : LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0006,
      I1 => displayvalue_decimal_part_cmp_ge0005,
      I2 => displayvalue_decimal_part_cmp_ge0007,
      I3 => displayvalue_decimal_part_cmp_ge0004,
      O => displayvalue_decimal_part_mux0008_17_12_1071
    );
  displayvalue_decimal_part_mux0008_17_34 : LUT4
    generic map(
      INIT => X"0F02"
    )
    port map (
      I0 => displayvalue_decimal_part_mux0008_17_12_1071,
      I1 => displayvalue_decimal_part_cmp_ge0003,
      I2 => displayvalue_decimal_part_cmp_ge0001,
      I3 => displayvalue_decimal_part_cmp_ge0002,
      O => displayvalue_decimal_part_mux0008_17_34_1072
    );
  Resetn_IBUF : IBUF
    port map (
      I => Resetn,
      O => Resetn_IBUF_694
    );
  Default_8_IBUF : IBUF
    port map (
      I => Default(8),
      O => Default_8_IBUF_17
    );
  Default_7_IBUF : IBUF
    port map (
      I => Default(7),
      O => Default_7_IBUF_16
    );
  Default_6_IBUF : IBUF
    port map (
      I => Default(6),
      O => Default_6_IBUF_15
    );
  Default_5_IBUF : IBUF
    port map (
      I => Default(5),
      O => Default_5_IBUF_14
    );
  Default_4_IBUF : IBUF
    port map (
      I => Default(4),
      O => Default_4_IBUF_13
    );
  Default_3_IBUF : IBUF
    port map (
      I => Default(3),
      O => Default_3_IBUF_12
    );
  Default_2_IBUF : IBUF
    port map (
      I => Default(2),
      O => Default_2_IBUF_11
    );
  Default_1_IBUF : IBUF
    port map (
      I => Default(1),
      O => Default_1_IBUF_10
    );
  Default_0_IBUF : IBUF
    port map (
      I => Default(0),
      O => Default_0_IBUF_9
    );
  average_clockcs_29_IBUF : IBUF
    port map (
      I => average_clockcs(29),
      O => average_clockcs_29_IBUF_754
    );
  average_clockcs_28_IBUF : IBUF
    port map (
      I => average_clockcs(28),
      O => average_clockcs_28_IBUF_753
    );
  average_clockcs_27_IBUF : IBUF
    port map (
      I => average_clockcs(27),
      O => average_clockcs_27_IBUF_752
    );
  average_clockcs_26_IBUF : IBUF
    port map (
      I => average_clockcs(26),
      O => average_clockcs_26_IBUF_751
    );
  average_clockcs_25_IBUF : IBUF
    port map (
      I => average_clockcs(25),
      O => average_clockcs_25_IBUF_750
    );
  average_clockcs_24_IBUF : IBUF
    port map (
      I => average_clockcs(24),
      O => average_clockcs_24_IBUF_749
    );
  average_clockcs_23_IBUF : IBUF
    port map (
      I => average_clockcs(23),
      O => average_clockcs_23_IBUF_748
    );
  average_clockcs_22_IBUF : IBUF
    port map (
      I => average_clockcs(22),
      O => average_clockcs_22_IBUF_747
    );
  average_clockcs_21_IBUF : IBUF
    port map (
      I => average_clockcs(21),
      O => average_clockcs_21_IBUF_746
    );
  average_clockcs_20_IBUF : IBUF
    port map (
      I => average_clockcs(20),
      O => average_clockcs_20_IBUF_745
    );
  average_clockcs_19_IBUF : IBUF
    port map (
      I => average_clockcs(19),
      O => average_clockcs_19_IBUF_743
    );
  average_clockcs_18_IBUF : IBUF
    port map (
      I => average_clockcs(18),
      O => average_clockcs_18_IBUF_742
    );
  average_clockcs_17_IBUF : IBUF
    port map (
      I => average_clockcs(17),
      O => average_clockcs_17_IBUF_741
    );
  average_clockcs_16_IBUF : IBUF
    port map (
      I => average_clockcs(16),
      O => average_clockcs_16_IBUF_740
    );
  average_clockcs_15_IBUF : IBUF
    port map (
      I => average_clockcs(15),
      O => average_clockcs_15_IBUF_739
    );
  average_clockcs_14_IBUF : IBUF
    port map (
      I => average_clockcs(14),
      O => average_clockcs_14_IBUF_738
    );
  average_clockcs_13_IBUF : IBUF
    port map (
      I => average_clockcs(13),
      O => average_clockcs_13_IBUF_737
    );
  average_clockcs_12_IBUF : IBUF
    port map (
      I => average_clockcs(12),
      O => average_clockcs_12_IBUF_736
    );
  average_clockcs_11_IBUF : IBUF
    port map (
      I => average_clockcs(11),
      O => average_clockcs_11_IBUF_735
    );
  average_clockcs_10_IBUF : IBUF
    port map (
      I => average_clockcs(10),
      O => average_clockcs_10_IBUF_734
    );
  average_clockcs_9_IBUF : IBUF
    port map (
      I => average_clockcs(9),
      O => average_clockcs_9_IBUF_762
    );
  average_clockcs_8_IBUF : IBUF
    port map (
      I => average_clockcs(8),
      O => average_clockcs_8_IBUF_761
    );
  average_clockcs_7_IBUF : IBUF
    port map (
      I => average_clockcs(7),
      O => average_clockcs_7_IBUF_760
    );
  average_clockcs_6_IBUF : IBUF
    port map (
      I => average_clockcs(6),
      O => average_clockcs_6_IBUF_759
    );
  average_clockcs_5_IBUF : IBUF
    port map (
      I => average_clockcs(5),
      O => average_clockcs_5_IBUF_758
    );
  average_clockcs_4_IBUF : IBUF
    port map (
      I => average_clockcs(4),
      O => average_clockcs_4_IBUF_757
    );
  average_clockcs_3_IBUF : IBUF
    port map (
      I => average_clockcs(3),
      O => average_clockcs_3_IBUF_756
    );
  average_clockcs_2_IBUF : IBUF
    port map (
      I => average_clockcs(2),
      O => average_clockcs_2_IBUF_755
    );
  average_clockcs_1_IBUF : IBUF
    port map (
      I => average_clockcs(1),
      O => average_clockcs_1_IBUF_744
    );
  average_clockcs_0_IBUF : IBUF
    port map (
      I => average_clockcs(0),
      O => average_clockcs_0_IBUF_733
    );
  an_3_OBUF : OBUF
    port map (
      I => an_3_OBUF_702,
      O => an(3)
    );
  an_2_OBUF : OBUF
    port map (
      I => an_2_OBUF_701,
      O => an(2)
    );
  an_1_OBUF : OBUF
    port map (
      I => an_1_OBUF_700,
      O => an(1)
    );
  an_0_OBUF : OBUF
    port map (
      I => an_0_OBUF_699,
      O => an(0)
    );
  hex_6_OBUF : OBUF
    port map (
      I => hex_6_OBUF_1348,
      O => hex(6)
    );
  hex_5_OBUF : OBUF
    port map (
      I => hex_5_OBUF_1347,
      O => hex(5)
    );
  hex_4_OBUF : OBUF
    port map (
      I => hex_4_OBUF_1346,
      O => hex(4)
    );
  hex_3_OBUF : OBUF
    port map (
      I => hex_3_OBUF_1345,
      O => hex(3)
    );
  hex_2_OBUF : OBUF
    port map (
      I => hex_2_OBUF_1344,
      O => hex(2)
    );
  hex_1_OBUF : OBUF
    port map (
      I => hex_1_OBUF_1343,
      O => hex(1)
    );
  hex_0_OBUF : OBUF
    port map (
      I => hex_0_OBUF_1342,
      O => hex(0)
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_71 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => bpm(7),
      I1 => bpm(8),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_7
    );
  Mcompar_bpm_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_cy_0_rt_49
    );
  Mcompar_bpm_cmp_lt0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_cy_2_rt_210
    );
  Mcompar_bpm_cmp_lt0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_cy_4_rt_266
    );
  Mcompar_bpm_cmp_lt0000_cy_3_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_cy_3_0_rt_234
    );
  Mcompar_bpm_cmp_lt0000_cy_6_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_cy_6_0_rt_314
    );
  Mcompar_bpm_cmp_lt0000_cy_2_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_5_IBUF_758,
      O => Mcompar_bpm_cmp_lt0000_cy_2_1_rt_205
    );
  Mcompar_bpm_cmp_lt0000_cy_5_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_cy_5_1_rt_290
    );
  Mcompar_bpm_cmp_lt0000_cy_9_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_cy_9_1_rt_404
    );
  Mcompar_bpm_cmp_lt0000_cy_2_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_cy_2_2_rt_207
    );
  Mcompar_bpm_cmp_lt0000_cy_9_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_cy_9_2_rt_405
    );
  Mcompar_bpm_cmp_lt0000_cy_2_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_cy_2_3_rt_208
    );
  Mcompar_bpm_cmp_lt0000_cy_4_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_10_IBUF_734,
      O => Mcompar_bpm_cmp_lt0000_cy_4_3_rt_262
    );
  Mcompar_bpm_cmp_lt0000_cy_8_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_cy_8_3_rt_374
    );
  Mcompar_bpm_cmp_lt0000_cy_4_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      O => Mcompar_bpm_cmp_lt0000_cy_4_4_rt_263
    );
  Mcompar_bpm_cmp_lt0000_cy_8_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_cy_8_4_rt_375
    );
  Mcompar_bpm_cmp_lt0000_cy_10_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      O => Mcompar_bpm_cmp_lt0000_cy_10_2_rt_74
    );
  Mcompar_bpm_cmp_lt0000_cy_12_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_cy_12_1_rt_116
    );
  Mcompar_bpm_cmp_lt0000_cy_6_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_cy_6_5_rt_319
    );
  Mcompar_bpm_cmp_lt0000_cy_8_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_cy_8_5_rt_376
    );
  Mcompar_bpm_cmp_lt0000_cy_10_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_cy_10_3_rt_75
    );
  Mcompar_bpm_cmp_lt0000_cy_4_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_cy_4_6_rt_264
    );
  Mcompar_bpm_cmp_lt0000_cy_8_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_cy_8_6_rt_377
    );
  Mcompar_bpm_cmp_lt0000_cy_6_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_cy_6_7_rt_320
    );
  Mcompar_bpm_cmp_lt0000_cy_4_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_cy_4_8_rt_265
    );
  Mcompar_bpm_cmp_lt0000_cy_10_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      O => Mcompar_bpm_cmp_lt0000_cy_10_6_rt_76
    );
  Mcompar_bpm_cmp_lt0000_cy_12_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_cy_12_3_rt_117
    );
  Mcompar_bpm_cmp_lt0000_cy_0_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_cy_0_9_rt_48
    );
  Mcompar_bpm_cmp_lt0000_cy_2_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      O => Mcompar_bpm_cmp_lt0000_cy_2_9_rt_209
    );
  Mcompar_bpm_cmp_lt0000_cy_8_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_cy_8_9_rt_378
    );
  Mcompar_bpm_cmp_lt0000_cy_0_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      O => Mcompar_bpm_cmp_lt0000_cy_0_10_rt_41
    );
  Mcompar_bpm_cmp_lt0000_cy_2_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_10_IBUF_734,
      O => Mcompar_bpm_cmp_lt0000_cy_2_10_rt_198
    );
  Mcompar_bpm_cmp_lt0000_cy_4_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_cy_4_10_rt_258
    );
  Mcompar_bpm_cmp_lt0000_cy_0_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_1_IBUF_744,
      O => Mcompar_bpm_cmp_lt0000_cy_0_11_rt_42
    );
  Mcompar_bpm_cmp_lt0000_cy_2_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      O => Mcompar_bpm_cmp_lt0000_cy_2_11_rt_199
    );
  Mcompar_bpm_cmp_lt0000_cy_8_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_cy_8_11_rt_369
    );
  Mcompar_bpm_cmp_lt0000_cy_10_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_cy_10_8_rt_77
    );
  Mcompar_bpm_cmp_lt0000_cy_2_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      O => Mcompar_bpm_cmp_lt0000_cy_2_12_rt_200
    );
  Mcompar_bpm_cmp_lt0000_cy_7_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_cy_7_12_rt_344
    );
  Mcompar_bpm_cmp_lt0000_cy_6_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_cy_6_13_rt_315
    );
  Mcompar_bpm_cmp_lt0000_cy_9_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_cy_9_13_rt_402
    );
  Mcompar_bpm_cmp_lt0000_cy_11_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      O => Mcompar_bpm_cmp_lt0000_cy_11_10_rt_97
    );
  Mcompar_bpm_cmp_lt0000_cy_0_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      O => Mcompar_bpm_cmp_lt0000_cy_0_14_rt_43
    );
  Mcompar_bpm_cmp_lt0000_cy_6_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_11_IBUF_735,
      O => Mcompar_bpm_cmp_lt0000_cy_6_14_rt_316
    );
  Mcompar_bpm_cmp_lt0000_cy_8_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_cy_8_14_rt_370
    );
  Mcompar_bpm_cmp_lt0000_cy_10_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_16_IBUF_740,
      O => Mcompar_bpm_cmp_lt0000_cy_10_11_rt_70
    );
  Mcompar_bpm_cmp_lt0000_cy_12_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      O => Mcompar_bpm_cmp_lt0000_cy_12_7_rt_118
    );
  Mcompar_bpm_cmp_lt0000_cy_2_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      O => Mcompar_bpm_cmp_lt0000_cy_2_15_rt_201
    );
  Mcompar_bpm_cmp_lt0000_cy_4_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_10_IBUF_734,
      O => Mcompar_bpm_cmp_lt0000_cy_4_15_rt_259
    );
  Mcompar_bpm_cmp_lt0000_cy_6_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_cy_6_15_rt_317
    );
  Mcompar_bpm_cmp_lt0000_cy_8_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_cy_8_15_rt_371
    );
  Mcompar_bpm_cmp_lt0000_cy_10_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      O => Mcompar_bpm_cmp_lt0000_cy_10_12_rt_71
    );
  Mcompar_bpm_cmp_lt0000_cy_12_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      O => Mcompar_bpm_cmp_lt0000_cy_12_8_rt_119
    );
  Mcompar_bpm_cmp_lt0000_cy_0_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_1_IBUF_744,
      O => Mcompar_bpm_cmp_lt0000_cy_0_16_rt_44
    );
  Mcompar_bpm_cmp_lt0000_cy_2_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      O => Mcompar_bpm_cmp_lt0000_cy_2_16_rt_202
    );
  Mcompar_bpm_cmp_lt0000_cy_7_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_cy_7_16_rt_345
    );
  Mcompar_bpm_cmp_lt0000_cy_9_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_cy_9_16_rt_403
    );
  Mcompar_bpm_cmp_lt0000_cy_1_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_7_IBUF_760,
      O => Mcompar_bpm_cmp_lt0000_cy_1_17_rt_174
    );
  Mcompar_bpm_cmp_lt0000_cy_8_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_21_IBUF_746,
      O => Mcompar_bpm_cmp_lt0000_cy_8_17_rt_372
    );
  Mcompar_bpm_cmp_lt0000_cy_0_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      O => Mcompar_bpm_cmp_lt0000_cy_0_18_rt_45
    );
  Mcompar_bpm_cmp_lt0000_cy_2_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_cy_2_18_rt_203
    );
  Mcompar_bpm_cmp_lt0000_cy_4_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_cy_4_18_rt_260
    );
  Mcompar_bpm_cmp_lt0000_cy_12_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_cy_12_10_rt_113
    );
  Mcompar_bpm_cmp_lt0000_cy_0_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_0_IBUF_733,
      O => Mcompar_bpm_cmp_lt0000_cy_0_19_rt_46
    );
  Mcompar_bpm_cmp_lt0000_cy_2_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_3_IBUF_756,
      O => Mcompar_bpm_cmp_lt0000_cy_2_19_rt_204
    );
  Mcompar_bpm_cmp_lt0000_cy_2_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_5_IBUF_758,
      O => Mcompar_bpm_cmp_lt0000_cy_2_20_rt_206
    );
  Mcompar_bpm_cmp_lt0000_cy_8_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_cy_8_20_rt_373
    );
  Mcompar_bpm_cmp_lt0000_cy_10_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_16_IBUF_740,
      O => Mcompar_bpm_cmp_lt0000_cy_10_17_rt_72
    );
  Mcompar_bpm_cmp_lt0000_cy_12_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      O => Mcompar_bpm_cmp_lt0000_cy_12_12_rt_114
    );
  Mcompar_bpm_cmp_lt0000_cy_14_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_22_IBUF_747,
      O => Mcompar_bpm_cmp_lt0000_cy_14_5_rt_140
    );
  Mcompar_bpm_cmp_lt0000_cy_0_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_cy_0_21_rt_47
    );
  Mcompar_bpm_cmp_lt0000_cy_4_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_8_IBUF_761,
      O => Mcompar_bpm_cmp_lt0000_cy_4_21_rt_261
    );
  Mcompar_bpm_cmp_lt0000_cy_6_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_10_IBUF_734,
      O => Mcompar_bpm_cmp_lt0000_cy_6_21_rt_318
    );
  Mcompar_bpm_cmp_lt0000_cy_10_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_18_IBUF_742,
      O => Mcompar_bpm_cmp_lt0000_cy_10_18_rt_73
    );
  Mcompar_bpm_cmp_lt0000_cy_12_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_cy_12_13_rt_115
    );
  Mcompar_bpm_cmp_lt0000_cy_14_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => average_clockcs_22_IBUF_747,
      O => Mcompar_bpm_cmp_lt0000_cy_14_6_rt_141
    );
  displayvalue_display_Mcount_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(1),
      O => displayvalue_display_Mcount_counter_cy_1_rt_1146
    );
  displayvalue_display_Mcount_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(2),
      O => displayvalue_display_Mcount_counter_cy_2_rt_1168
    );
  displayvalue_display_Mcount_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(3),
      O => displayvalue_display_Mcount_counter_cy_3_rt_1172
    );
  displayvalue_display_Mcount_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(4),
      O => displayvalue_display_Mcount_counter_cy_4_rt_1174
    );
  displayvalue_display_Mcount_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(5),
      O => displayvalue_display_Mcount_counter_cy_5_rt_1176
    );
  displayvalue_display_Mcount_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(6),
      O => displayvalue_display_Mcount_counter_cy_6_rt_1178
    );
  displayvalue_display_Mcount_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(7),
      O => displayvalue_display_Mcount_counter_cy_7_rt_1180
    );
  displayvalue_display_Mcount_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(8),
      O => displayvalue_display_Mcount_counter_cy_8_rt_1182
    );
  displayvalue_display_Mcount_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(9),
      O => displayvalue_display_Mcount_counter_cy_9_rt_1184
    );
  displayvalue_display_Mcount_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(10),
      O => displayvalue_display_Mcount_counter_cy_10_rt_1126
    );
  displayvalue_display_Mcount_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(11),
      O => displayvalue_display_Mcount_counter_cy_11_rt_1128
    );
  displayvalue_display_Mcount_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(12),
      O => displayvalue_display_Mcount_counter_cy_12_rt_1130
    );
  displayvalue_display_Mcount_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(13),
      O => displayvalue_display_Mcount_counter_cy_13_rt_1132
    );
  displayvalue_display_Mcount_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(14),
      O => displayvalue_display_Mcount_counter_cy_14_rt_1134
    );
  displayvalue_display_Mcount_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(15),
      O => displayvalue_display_Mcount_counter_cy_15_rt_1136
    );
  displayvalue_display_Mcount_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(16),
      O => displayvalue_display_Mcount_counter_cy_16_rt_1138
    );
  displayvalue_display_Mcount_counter_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(17),
      O => displayvalue_display_Mcount_counter_cy_17_rt_1140
    );
  displayvalue_display_Mcount_counter_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(18),
      O => displayvalue_display_Mcount_counter_cy_18_rt_1142
    );
  displayvalue_display_Mcount_counter_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(19),
      O => displayvalue_display_Mcount_counter_cy_19_rt_1144
    );
  displayvalue_display_Mcount_counter_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(20),
      O => displayvalue_display_Mcount_counter_cy_20_rt_1148
    );
  displayvalue_display_Mcount_counter_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(21),
      O => displayvalue_display_Mcount_counter_cy_21_rt_1150
    );
  displayvalue_display_Mcount_counter_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(22),
      O => displayvalue_display_Mcount_counter_cy_22_rt_1152
    );
  displayvalue_display_Mcount_counter_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(23),
      O => displayvalue_display_Mcount_counter_cy_23_rt_1154
    );
  displayvalue_display_Mcount_counter_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(24),
      O => displayvalue_display_Mcount_counter_cy_24_rt_1156
    );
  displayvalue_display_Mcount_counter_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(25),
      O => displayvalue_display_Mcount_counter_cy_25_rt_1158
    );
  displayvalue_display_Mcount_counter_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(26),
      O => displayvalue_display_Mcount_counter_cy_26_rt_1160
    );
  displayvalue_display_Mcount_counter_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(27),
      O => displayvalue_display_Mcount_counter_cy_27_rt_1162
    );
  displayvalue_display_Mcount_counter_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(28),
      O => displayvalue_display_Mcount_counter_cy_28_rt_1164
    );
  displayvalue_display_Mcount_counter_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(29),
      O => displayvalue_display_Mcount_counter_cy_29_rt_1166
    );
  displayvalue_display_Mcount_counter_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(30),
      O => displayvalue_display_Mcount_counter_cy_30_rt_1170
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bpm(2),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_7_rt_956
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bpm(3),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_6_rt_955
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bpm(8),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_4_5_rt_979
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bpm(5),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_2_5_rt_967
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bpm(4),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_4_rt_954
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bpm(8),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_3_3_rt_973
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bpm(2),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_cy_0_3_rt_953
    );
  displayvalue_ten_part_3_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(3),
      I2 => displayvalue_ten_part_share0000(3),
      O => displayvalue_ten_part_3_1_1_1302
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bpm(1),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_7_rt_852
    );
  displayvalue_ten_part_4_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(4),
      I2 => displayvalue_ten_part_share0000(4),
      O => displayvalue_ten_part_4_1_1_1304
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bpm(1),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_3_rt_851
    );
  displayvalue_ten_part_6_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(6),
      I2 => displayvalue_ten_part_share0000(6),
      O => displayvalue_ten_part_6_1_1_1307
    );
  displayvalue_ten_part_6_1_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(6),
      I2 => displayvalue_ten_part_share0000(6),
      O => displayvalue_ten_part_6_1_2_1308
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bpm(1),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_cy_0_rt_853
    );
  displayvalue_display_Mcount_counter_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => displayvalue_display_counter(31),
      O => displayvalue_display_Mcount_counter_xor_31_rt_1186
    );
  displayvalue_Msub_ten_part_share0000_lut_8_Q : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => bpm(8),
      I1 => displayvalue_ten_part_cmp_ge0005,
      I2 => displayvalue_ten_part_cmp_ge0006,
      I3 => displayvalue_ten_part_cmp_ge0004,
      O => displayvalue_Msub_ten_part_share0000_lut(8)
    );
  displayvalue_Msub_ten_part_share0000_lut_6_Q : LUT4
    generic map(
      INIT => X"999A"
    )
    port map (
      I0 => bpm(6),
      I1 => displayvalue_ten_part_cmp_ge0004,
      I2 => displayvalue_ten_part_cmp_ge0006,
      I3 => displayvalue_ten_part_cmp_ge0005,
      O => displayvalue_Msub_ten_part_share0000_lut(6)
    );
  displayvalue_Msub_decimal_part_share0000_lut_6_Q : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => displayvalue_ten_part(6),
      I1 => displayvalue_decimal_part_cmp_ge0001,
      I2 => displayvalue_decimal_part_cmp_ge0002,
      I3 => displayvalue_decimal_part_cmp_ge0000,
      O => displayvalue_Msub_decimal_part_share0000_lut(6)
    );
  displayvalue_Msub_decimal_part_share0000_lut_1_Q : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => bpm(1),
      I1 => displayvalue_decimal_part_cmp_ge0000,
      I2 => displayvalue_decimal_part_mux0008_17_34_1072,
      O => displayvalue_Msub_decimal_part_share0000_lut(1)
    );
  bpm_mux0023_5_123 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => N181,
      I1 => Default_5_IBUF_14,
      I2 => bpm_mux0023_5_110_824,
      I3 => bpm_mux0023_5_3_825,
      O => bpm_mux0023(5)
    );
  bpm_mux0023_2_121 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => bpm_mux0023_2_87_808,
      I1 => bpm_mux0023_2_106_804,
      I2 => Default_2_IBUF_11,
      I3 => bpm_mux0023_2_9_809,
      O => bpm_mux0023(2)
    );
  bpm_mux0023_5_312 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => Resetn_IBUF_694,
      I1 => Mcompar_bpm_cmp_lt0000_cy(9),
      O => N181
    );
  displayvalue_decimal_part_10_114_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0003,
      I1 => displayvalue_decimal_part_cmp_ge0004,
      I2 => displayvalue_decimal_part_cmp_ge0005,
      I3 => displayvalue_decimal_part_cmp_ge0008,
      O => N36
    );
  displayvalue_decimal_part_10_114 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => displayvalue_decimal_part_10_18_1056,
      I1 => displayvalue_decimal_part_cmp_ge0000,
      I2 => displayvalue_decimal_part_cmp_ge0001,
      I3 => N36,
      O => displayvalue_N0
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_4 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(16),
      I1 => displayvalue_ten_part_share0000(14),
      I2 => displayvalue_ten_part_share0000(15),
      I3 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_4_935
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_3 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(16),
      I1 => displayvalue_ten_part_share0000(14),
      I2 => displayvalue_ten_part_share0000(15),
      I3 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_3_934
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_3 : LUT4
    generic map(
      INIT => X"01FF"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(16),
      I1 => displayvalue_ten_part_share0000(14),
      I2 => displayvalue_ten_part_share0000(15),
      I3 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_3_917
    );
  displayvalue_display_Mmux_binary_32 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => displayvalue_ten_part_cmp_ge0004,
      I1 => displayvalue_display_digit(0),
      I2 => displayvalue_ten_part_cmp_ge0005,
      O => displayvalue_display_Mmux_binary_32_1189
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_2 : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(16),
      I1 => displayvalue_ten_part_share0000(15),
      I2 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_2_933
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_1 : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(16),
      I1 => displayvalue_ten_part_share0000(15),
      I2 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_5_1_932
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_7_Q : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(16),
      I1 => displayvalue_ten_part_share0000(15),
      I2 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(7)
    );
  displayvalue_display_Mmux_binary_43_SW0 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => displayvalue_decimal_part(1),
      I1 => displayvalue_decimal_part(2),
      I2 => displayvalue_decimal_part(3),
      I3 => displayvalue_digit_bit_0_1_wg_cy_14_Q_1097,
      O => N38
    );
  displayvalue_display_Mmux_binary_43 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => displayvalue_display_digit(0),
      I1 => displayvalue_decimal_part_cmp_ge0000,
      I2 => displayvalue_decimal_part_cmp_ge0001,
      I3 => N38,
      O => displayvalue_display_Mmux_binary_43_1193
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_6 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(16),
      I1 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_6_944
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_8 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(2),
      I2 => bpm(2),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_8_909
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_7 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(3),
      I2 => bpm(3),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_7_908
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_5 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(4),
      I2 => bpm(4),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_5_906
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_2 : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(4),
      I2 => displayvalue_ten_part(5),
      I3 => bpm(4),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_2_912
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_4 : LUT4
    generic map(
      INIT => X"010B"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => bpm(2),
      I2 => displayvalue_ten_part(3),
      I3 => displayvalue_ten_part_share0000(2),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_4_905
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_0_Q : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(2),
      I2 => bpm(1),
      I3 => bpm(2),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(0)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_1 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(5),
      I2 => bpm(5),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_1_902
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_3_Q : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(5),
      I2 => bpm(5),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(3)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"D080"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(3),
      I2 => displayvalue_ten_part(4),
      I3 => bpm(3),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(2)
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_1_Q : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(2),
      I2 => bpm(2),
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(1)
    );
  displayvalue_Msub_ten_part_share0000_lut_4_Q : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => bpm(4),
      I1 => displayvalue_ten_part_cmp_ge0004,
      I2 => displayvalue_ten_part_cmp_ge0005,
      O => displayvalue_Msub_ten_part_share0000_lut(4)
    );
  displayvalue_Msub_decimal_part_share0000_lut_18_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(17),
      I1 => displayvalue_N1,
      O => displayvalue_Msub_decimal_part_share0000_lut(18)
    );
  displayvalue_Msub_decimal_part_share0000_lut_17_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(17),
      I1 => displayvalue_N1,
      O => displayvalue_Msub_decimal_part_share0000_lut(17)
    );
  displayvalue_Msub_decimal_part_share0000_lut_16_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(16),
      I1 => displayvalue_N1,
      O => displayvalue_Msub_decimal_part_share0000_lut(16)
    );
  displayvalue_Msub_decimal_part_share0000_lut_15_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(15),
      I1 => displayvalue_N1,
      O => displayvalue_Msub_decimal_part_share0000_lut(15)
    );
  displayvalue_Msub_decimal_part_share0000_lut_14_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(14),
      I1 => displayvalue_N1,
      O => displayvalue_Msub_decimal_part_share0000_lut(14)
    );
  displayvalue_Msub_decimal_part_share0000_lut_13_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(13),
      I1 => displayvalue_N1,
      O => displayvalue_Msub_decimal_part_share0000_lut(13)
    );
  displayvalue_Msub_decimal_part_share0000_lut_12_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(12),
      I1 => displayvalue_N1,
      O => displayvalue_Msub_decimal_part_share0000_lut(12)
    );
  displayvalue_Msub_decimal_part_share0000_lut_11_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(11),
      I1 => displayvalue_N1,
      O => displayvalue_Msub_decimal_part_share0000_lut(11)
    );
  displayvalue_Msub_decimal_part_share0000_lut_10_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(10),
      I1 => displayvalue_N1,
      O => displayvalue_Msub_decimal_part_share0000_lut(10)
    );
  displayvalue_Msub_decimal_part_share0000_lut_9_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(9),
      I1 => displayvalue_N1,
      O => displayvalue_Msub_decimal_part_share0000_lut(9)
    );
  displayvalue_Msub_decimal_part_share0000_lut_8_Q : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(8),
      I2 => bpm(8),
      O => displayvalue_Msub_decimal_part_share0000_lut(8)
    );
  displayvalue_Msub_decimal_part_share0000_lut_7_Q : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(7),
      I2 => bpm(7),
      O => displayvalue_Msub_decimal_part_share0000_lut(7)
    );
  displayvalue_Msub_decimal_part_share0000_lut_5_SW0 : LUT4
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0003,
      I1 => N8,
      I2 => displayvalue_decimal_part_cmp_ge0004,
      I3 => displayvalue_decimal_part_cmp_ge0005,
      O => N40
    );
  displayvalue_Msub_decimal_part_share0000_lut_5_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(5),
      I2 => N40,
      I3 => bpm(5),
      O => displayvalue_Msub_decimal_part_share0000_lut(5)
    );
  displayvalue_Msub_decimal_part_share0000_lut_4_SW0 : LUT4
    generic map(
      INIT => X"4445"
    )
    port map (
      I0 => displayvalue_ten_bit(3),
      I1 => displayvalue_decimal_part_cmp_ge0002,
      I2 => N12,
      I3 => displayvalue_decimal_part_cmp_ge0004,
      O => N42
    );
  displayvalue_Msub_decimal_part_share0000_lut_4_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(4),
      I2 => N42,
      I3 => bpm(4),
      O => displayvalue_Msub_decimal_part_share0000_lut(4)
    );
  displayvalue_Msub_decimal_part_share0000_lut_3_SW0 : LUT4
    generic map(
      INIT => X"010F"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0003,
      I1 => displayvalue_decimal_part_mux0008_15_10_1069,
      I2 => displayvalue_decimal_part_cmp_ge0000,
      I3 => displayvalue_decimal_part_mux0008_15_20_1070,
      O => N44
    );
  displayvalue_Msub_decimal_part_share0000_lut_3_Q : LUT4
    generic map(
      INIT => X"2D78"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(3),
      I2 => N44,
      I3 => bpm(3),
      O => displayvalue_Msub_decimal_part_share0000_lut(3)
    );
  displayvalue_Msub_decimal_part_share0000_lut_2_Q : LUT4
    generic map(
      INIT => X"D287"
    )
    port map (
      I0 => displayvalue_N1,
      I1 => displayvalue_ten_part_share0000(2),
      I2 => displayvalue_ten_bit(1),
      I3 => bpm(2),
      O => displayvalue_Msub_decimal_part_share0000_lut(2)
    );
  displayvalue_digit_bit_0_1_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_N1,
      I2 => displayvalue_ten_part_share0000(17),
      I3 => displayvalue_decimal_part_share0000(5),
      O => displayvalue_digit_bit_0_1_wg_lut_1_Q_1113
    );
  displayvalue_digit_bit_0_1_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_N1,
      I2 => displayvalue_ten_part_share0000(16),
      I3 => displayvalue_decimal_part_share0000(6),
      O => displayvalue_digit_bit_0_1_wg_lut_2_Q_1114
    );
  displayvalue_digit_bit_0_1_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_N1,
      I2 => displayvalue_ten_part_share0000(15),
      I3 => displayvalue_decimal_part_share0000(7),
      O => displayvalue_digit_bit_0_1_wg_lut_3_Q_1115
    );
  displayvalue_digit_bit_0_1_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_N1,
      I2 => displayvalue_ten_part_share0000(14),
      I3 => displayvalue_decimal_part_share0000(8),
      O => displayvalue_digit_bit_0_1_wg_lut_4_Q_1116
    );
  displayvalue_digit_bit_0_1_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_N1,
      I2 => displayvalue_ten_part_share0000(12),
      I3 => displayvalue_decimal_part_share0000(9),
      O => displayvalue_digit_bit_0_1_wg_lut_5_Q_1117
    );
  displayvalue_digit_bit_0_1_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_N1,
      I2 => displayvalue_ten_part_share0000(13),
      I3 => displayvalue_decimal_part_share0000(10),
      O => displayvalue_digit_bit_0_1_wg_lut_6_Q_1118
    );
  displayvalue_digit_bit_0_1_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_N1,
      I2 => displayvalue_ten_part_share0000(11),
      I3 => displayvalue_decimal_part_share0000(11),
      O => displayvalue_digit_bit_0_1_wg_lut_7_Q_1119
    );
  displayvalue_digit_bit_0_1_wg_lut_8_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_N1,
      I2 => displayvalue_ten_part_share0000(9),
      I3 => displayvalue_decimal_part_share0000(12),
      O => displayvalue_digit_bit_0_1_wg_lut_8_Q_1120
    );
  displayvalue_digit_bit_0_1_wg_lut_9_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_N1,
      I2 => displayvalue_ten_part_share0000(10),
      I3 => displayvalue_decimal_part_share0000(13),
      O => displayvalue_digit_bit_0_1_wg_lut_9_Q_1121
    );
  bpm_mux0023_6_221 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_2_89,
      I1 => Mcompar_bpm_cmp_lt0000_cy_11_5_92,
      I2 => Mcompar_bpm_cmp_lt0000_cy(12),
      I3 => Mcompar_bpm_cmp_lt0000_cy_13_1_121,
      O => N29
    );
  bpm_mux0023_7_32 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_13_4_126,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_9_131,
      I2 => Mcompar_bpm_cmp_lt0000_cy_14_3_135,
      I3 => Mcompar_bpm_cmp_lt0000_cy_14_4_136,
      O => bpm_mux0023_7_32_834
    );
  bpm_mux0023_6_13 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_13_9_131,
      I1 => Mcompar_bpm_cmp_lt0000_cy_16_1_149,
      I2 => Mcompar_bpm_cmp_lt0000_cy_16_2,
      I3 => N30,
      O => bpm_mux0023_6_13_828
    );
  bpm_mux0023_6_34 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_10_15_57,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_7_129,
      I2 => Mcompar_bpm_cmp_lt0000_cy_14_3_135,
      I3 => Mcompar_bpm_cmp_lt0000_cy(16),
      O => bpm_mux0023_6_34_829
    );
  bpm_mux0023_2_332 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_5_92,
      I1 => Mcompar_bpm_cmp_lt0000_cy_12_1_99,
      I2 => Mcompar_bpm_cmp_lt0000_cy_13_1_121,
      I3 => Mcompar_bpm_cmp_lt0000_cy_13_9_131,
      O => bpm_mux0023_2_332_807
    );
  bpm_mux0023_0_112 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_2_89,
      I1 => Mcompar_bpm_cmp_lt0000_cy(12),
      I2 => Mcompar_bpm_cmp_lt0000_cy_13_4_126,
      I3 => Mcompar_bpm_cmp_lt0000_cy_13_7_129,
      O => bpm_mux0023_0_112_791
    );
  bpm_mux0023_4_12 : LUT4
    generic map(
      INIT => X"1151"
    )
    port map (
      I0 => N181,
      I1 => Mcompar_bpm_cmp_lt0000_cy_14_3_135,
      I2 => N34,
      I3 => N24,
      O => bpm_mux0023_4_12_818
    );
  bpm_mux0023_4_67 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_2_89,
      I1 => Mcompar_bpm_cmp_lt0000_cy_11_5_92,
      I2 => Mcompar_bpm_cmp_lt0000_cy_12_6_109,
      I3 => Mcompar_bpm_cmp_lt0000_cy_9_11_382,
      O => bpm_mux0023_4_67_821
    );
  bpm_mux0023_5_3 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_2_89,
      I1 => Mcompar_bpm_cmp_lt0000_cy_12_1_99,
      I2 => Mcompar_bpm_cmp_lt0000_cy_9_1_380,
      O => bpm_mux0023_5_3_825
    );
  bpm_mux0023_5_1121 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_13_4_126,
      I1 => Mcompar_bpm_cmp_lt0000_cy_14_4_136,
      O => N24
    );
  bpm_mux0023_5_332 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_10_15_57,
      I1 => Mcompar_bpm_cmp_lt0000_cy(16),
      O => N34
    );
  bpm_mux0023_3_58 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_16_2,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_9_131,
      I2 => N181,
      I3 => Default_3_IBUF_12,
      O => bpm_mux0023_3_58_815
    );
  displayvalue_ten_bit_2_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0003,
      I1 => displayvalue_decimal_part_cmp_ge0004,
      I2 => displayvalue_decimal_part_cmp_ge0005,
      O => N46
    );
  displayvalue_ten_bit_2_Q : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0002,
      I1 => displayvalue_decimal_part_cmp_ge0000,
      I2 => displayvalue_decimal_part_cmp_ge0001,
      I3 => N46,
      O => displayvalue_ten_bit(2)
    );
  displayvalue_decimal_part_mux0008_13_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => displayvalue_decimal_part_cmp_ge0002,
      I1 => displayvalue_decimal_part_cmp_ge0000,
      I2 => displayvalue_decimal_part_cmp_ge0001,
      O => N8
    );
  displayvalue_digit_bit_0_SW0 : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => displayvalue_N0,
      I1 => displayvalue_decimal_part_share0000(2),
      I2 => displayvalue_decimal_part(1),
      I3 => displayvalue_ten_part(2),
      O => N14
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_21 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(17),
      I1 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_2
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_51 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(17),
      I1 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_4_5
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_11 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(17),
      I1 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_1
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_21 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(17),
      I1 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_2
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_31 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(17),
      I1 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_3
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_41 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(17),
      I1 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_4
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_51 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(17),
      I1 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_6_5
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_7_11 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(17),
      I1 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_7_1
    );
  displayvalue_Mcompar_decimal_part_cmp_ge0000_lut_8_1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => displayvalue_ten_part_share0000(17),
      I1 => displayvalue_N1,
      O => displayvalue_Mcompar_decimal_part_cmp_ge0000_lut(8)
    );
  bpm_mux0023_2_48_SW0_SW0 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => N34,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_7_129,
      I2 => Mcompar_bpm_cmp_lt0000_cy_16_1_149,
      I3 => N24,
      O => N48
    );
  bpm_mux0023_1_57 : LUT4
    generic map(
      INIT => X"F111"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_13_7_129,
      I1 => N181,
      I2 => Mcompar_bpm_cmp_lt0000_cy_16_1_149,
      I3 => N341,
      O => bpm_mux0023_1_57_801
    );
  bpm_mux0023_6_46_SW0 : LUT4
    generic map(
      INIT => X"A2AA"
    )
    port map (
      I0 => N30,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_4_126,
      I2 => bpm_mux0023_6_34_829,
      I3 => Mcompar_bpm_cmp_lt0000_cy_14_4_136,
      O => N50
    );
  bpm_mux0023_6_46 : LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_12_1_99,
      I1 => N50,
      I2 => N29,
      I3 => Mcompar_bpm_cmp_lt0000_cy_9_1_380,
      O => bpm_mux0023_6_46_830
    );
  bpm_mux0023_0_136_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bpm_mux0023_0_112_791,
      I1 => bpm_mux0023_2_317,
      I2 => bpm_mux0023_2_332_807,
      O => N52
    );
  bpm_mux0023_0_136 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_14_4_136,
      I1 => Mcompar_bpm_cmp_lt0000_cy_16_1_149,
      I2 => N30,
      I3 => N52,
      O => bpm_mux0023_0_136_792
    );
  bpm_mux0023_4_2111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_6_93,
      I1 => Mcompar_bpm_cmp_lt0000_cy_11_8_95,
      O => N35
    );
  bpm_mux0023_4_154 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N54,
      I1 => Mcompar_bpm_cmp_lt0000_cy(9),
      I2 => Resetn_IBUF_694,
      I3 => bpm_mux0023_4_91_822,
      O => bpm_mux0023(4)
    );
  bpm_mux0023_3_21_SW0 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(15),
      I1 => Mcompar_bpm_cmp_lt0000_cy_15_1_143,
      I2 => Mcompar_bpm_cmp_lt0000_cy_11_8_95,
      O => N56
    );
  bpm_mux0023_3_21 : LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(9),
      I1 => Resetn_IBUF_694,
      I2 => Mcompar_bpm_cmp_lt0000_cy_11_5_92,
      I3 => N56,
      O => bpm_mux0023_3_21_813
    );
  bpm_mux0023_3_39_SW0 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_14_4_136,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_4_126,
      I2 => Mcompar_bpm_cmp_lt0000_cy_10_15_57,
      O => N58
    );
  bpm_mux0023_3_39 : LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(9),
      I1 => Resetn_IBUF_694,
      I2 => Mcompar_bpm_cmp_lt0000_cy_14_3_135,
      I3 => N58,
      O => bpm_mux0023_3_39_814
    );
  bpm_mux0023_4_91_SW1 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => bpm_mux0023_4_12_818,
      I1 => N35,
      I2 => bpm_mux0023_4_67_821,
      I3 => bpm_mux0023_4_34_820,
      O => N60
    );
  bpm_mux0023_4_91 : LUT4
    generic map(
      INIT => X"F8FA"
    )
    port map (
      I0 => Default_4_IBUF_13,
      I1 => Resetn_IBUF_694,
      I2 => N60,
      I3 => Mcompar_bpm_cmp_lt0000_cy(9),
      O => bpm_mux0023_4_91_822
    );
  bpm_mux0023_5_50_SW0_SW0 : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => N181,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_9_131,
      I2 => Mcompar_bpm_cmp_lt0000_cy_16_1_149,
      I3 => Mcompar_bpm_cmp_lt0000_cy_16_2,
      O => N64
    );
  bpm_mux0023_5_50_SW0 : LUT4
    generic map(
      INIT => X"4440"
    )
    port map (
      I0 => N34,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_7_129,
      I2 => Default_5_IBUF_14,
      I3 => N64,
      O => N20
    );
  bpm_mux0023_5_50 : LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      I0 => N24,
      I1 => N181,
      I2 => Mcompar_bpm_cmp_lt0000_cy_14_3_135,
      I3 => N20,
      O => bpm_mux0023_5_50_826
    );
  bpm_mux0023_5_110_SW0_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_12_6_109,
      I1 => Mcompar_bpm_cmp_lt0000_cy_15_2_144,
      I2 => Mcompar_bpm_cmp_lt0000_cy_9_11_382,
      I3 => bpm_mux0023_5_50_826,
      O => N66
    );
  bpm_mux0023_3_230_SW0 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_13_1_121,
      I1 => bpm_mux0023_3_152_812,
      I2 => bpm_mux0023_3_21_813,
      I3 => bpm_mux0023_3_10_811,
      O => N32
    );
  bpm_mux0023_7_122 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_6_93,
      I1 => Mcompar_bpm_cmp_lt0000_cy_11_8_95,
      I2 => Mcompar_bpm_cmp_lt0000_cy(15),
      I3 => Mcompar_bpm_cmp_lt0000_cy_15_1_143,
      O => N28
    );
  bpm_mux0023_8_1 : LUT4
    generic map(
      INIT => X"AAA2"
    )
    port map (
      I0 => Default_8_IBUF_17,
      I1 => Mcompar_bpm_cmp_lt0000_cy(9),
      I2 => Resetn_IBUF_694,
      I3 => bpm_mux0023_0_136_792,
      O => bpm_mux0023(8)
    );
  bpm_mux0023_0_2 : LUT4
    generic map(
      INIT => X"AAA2"
    )
    port map (
      I0 => Default_0_IBUF_9,
      I1 => Mcompar_bpm_cmp_lt0000_cy(9),
      I2 => Resetn_IBUF_694,
      I3 => bpm_mux0023_0_136_792,
      O => bpm_mux0023(0)
    );
  bpm_mux0023_4_20 : LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(9),
      I1 => Resetn_IBUF_694,
      I2 => Mcompar_bpm_cmp_lt0000_cy_16_1_149,
      I3 => Mcompar_bpm_cmp_lt0000_cy_16_2,
      O => bpm_mux0023_4_20_819
    );
  bpm_mux0023_4_34_SW0 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => Default_4_IBUF_13,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_9_131,
      I2 => bpm_mux0023_4_20_819,
      O => N76
    );
  bpm_mux0023_4_34 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_13_4_126,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_7_129,
      I2 => Mcompar_bpm_cmp_lt0000_cy_14_4_136,
      I3 => N76,
      O => bpm_mux0023_4_34_820
    );
  bpm_mux0023_2_106 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(9),
      I1 => Resetn_IBUF_694,
      I2 => Mcompar_bpm_cmp_lt0000_cy_9_1_380,
      I3 => Mcompar_bpm_cmp_lt0000_cy_12_1_99,
      O => bpm_mux0023_2_106_804
    );
  bpm_mux0023_3_10 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(12),
      I1 => Resetn_IBUF_694,
      I2 => Mcompar_bpm_cmp_lt0000_cy(9),
      O => bpm_mux0023_3_10_811
    );
  bpm_mux0023_1_13 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_13_1_121,
      I1 => Resetn_IBUF_694,
      I2 => Mcompar_bpm_cmp_lt0000_cy(9),
      O => bpm_mux0023_1_13_794
    );
  bpm_mux0023_1_22 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_15_2_144,
      I1 => Resetn_IBUF_694,
      I2 => Mcompar_bpm_cmp_lt0000_cy(9),
      O => bpm_mux0023_1_22_797
    );
  bpm_mux0023_1_31 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_10_15_57,
      I1 => Resetn_IBUF_694,
      I2 => Mcompar_bpm_cmp_lt0000_cy(9),
      O => bpm_mux0023_1_31_800
    );
  bpm_mux0023_1_97 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_13_4_126,
      I1 => bpm_mux0023_1_57_801,
      I2 => Mcompar_bpm_cmp_lt0000_cy(16),
      I3 => bpm_mux0023_1_31_800,
      O => bpm_mux0023_1_97_802
    );
  bpm_mux0023_1_203 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_6_93,
      I1 => bpm_mux0023_1_150_795,
      I2 => Mcompar_bpm_cmp_lt0000_cy_12_6_109,
      I3 => bpm_mux0023_1_22_797,
      O => bpm_mux0023_1_203_796
    );
  bpm_mux0023_1_305 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(12),
      I1 => bpm_mux0023_1_253_798,
      I2 => Mcompar_bpm_cmp_lt0000_cy_11_5_92,
      I3 => bpm_mux0023_1_13_794,
      O => bpm_mux0023_1_305_799
    );
  bpm_mux0023_4_154_SW0_SW0 : LUT4
    generic map(
      INIT => X"D5FF"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(12),
      I1 => N62,
      I2 => Mcompar_bpm_cmp_lt0000_cy_11_5_92,
      I3 => Mcompar_bpm_cmp_lt0000_cy_13_1_121,
      O => N78
    );
  bpm_mux0023_4_154_SW0 : LUT4
    generic map(
      INIT => X"D5FF"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_12_1_99,
      I1 => N78,
      I2 => Mcompar_bpm_cmp_lt0000_cy_11_2_89,
      I3 => Mcompar_bpm_cmp_lt0000_cy_9_1_380,
      O => N54
    );
  bpm_mux0023_1_57_SW0 : LUT4
    generic map(
      INIT => X"F111"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_16_2,
      I1 => N181,
      I2 => Default_1_IBUF_10,
      I3 => Mcompar_bpm_cmp_lt0000_cy_13_9_131,
      O => N341
    );
  bpm_mux0023_4_132_SW0_SW0 : LUT4
    generic map(
      INIT => X"75FF"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(15),
      I1 => Mcompar_bpm_cmp_lt0000_cy_15_2_144,
      I2 => N35,
      I3 => Mcompar_bpm_cmp_lt0000_cy_15_1_143,
      O => N62
    );
  bpm_mux0023_2_48_SW1 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N48,
      I1 => Mcompar_bpm_cmp_lt0000_cy_14_3_135,
      I2 => Mcompar_bpm_cmp_lt0000_cy_9_11_382,
      I3 => Mcompar_bpm_cmp_lt0000_cy_15_2_144,
      O => N80
    );
  bpm_mux0023_3_91_SW1 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(16),
      I1 => Mcompar_bpm_cmp_lt0000_cy_16_1_149,
      I2 => N181,
      I3 => bpm_mux0023_3_58_815,
      O => N82
    );
  bpm_mux0023_3_91 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_13_7_129,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_4_126,
      I2 => N82,
      I3 => bpm_mux0023_3_39_814,
      O => bpm_mux0023_3_91_816
    );
  bpm_mux0023_3_152_SW1 : LUT4
    generic map(
      INIT => X"F111"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_12_6_109,
      I1 => N181,
      I2 => bpm_mux0023_3_91_816,
      I3 => Mcompar_bpm_cmp_lt0000_cy_9_11_382,
      O => N84
    );
  bpm_mux0023_3_152 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_6_93,
      I1 => Mcompar_bpm_cmp_lt0000_cy_15_1_143,
      I2 => Mcompar_bpm_cmp_lt0000_cy_15_2_144,
      I3 => N84,
      O => bpm_mux0023_3_152_812
    );
  bpm_mux0023_2_9_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_8_95,
      I1 => Mcompar_bpm_cmp_lt0000_cy_9_11_382,
      I2 => bpm_mux0023_2_317,
      I3 => bpm_mux0023_2_332_807,
      O => N86
    );
  bpm_mux0023_2_9 : LUT4
    generic map(
      INIT => X"F8FF"
    )
    port map (
      I0 => N86,
      I1 => Mcompar_bpm_cmp_lt0000_cy_11_6_93,
      I2 => Resetn_IBUF_694,
      I3 => Mcompar_bpm_cmp_lt0000_cy(9),
      O => bpm_mux0023_2_9_809
    );
  bpm_mux0023_5_110_SW1 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(9),
      I1 => N28,
      I2 => Resetn_IBUF_694,
      I3 => N66,
      O => N88
    );
  bpm_mux0023_5_110 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_5_92,
      I1 => Mcompar_bpm_cmp_lt0000_cy(12),
      I2 => Mcompar_bpm_cmp_lt0000_cy_13_1_121,
      I3 => N88,
      O => bpm_mux0023_5_110_824
    );
  bpm_mux0023_3_230_SW2 : LUT4
    generic map(
      INIT => X"C4CE"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(9),
      I1 => Default_3_IBUF_12,
      I2 => Resetn_IBUF_694,
      I3 => Mcompar_bpm_cmp_lt0000_cy_9_1_380,
      O => N90
    );
  bpm_mux0023_3_230 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_2_89,
      I1 => Mcompar_bpm_cmp_lt0000_cy_12_1_99,
      I2 => N32,
      I3 => N90,
      O => bpm_mux0023(3)
    );
  bpm_mux0023_0_11_SW1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(15),
      I1 => Mcompar_bpm_cmp_lt0000_cy_15_1_143,
      I2 => Mcompar_bpm_cmp_lt0000_cy_15_2_144,
      I3 => Mcompar_bpm_cmp_lt0000_cy_9_11_382,
      O => N92
    );
  bpm_mux0023_0_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_6_93,
      I1 => Mcompar_bpm_cmp_lt0000_cy_11_8_95,
      I2 => Mcompar_bpm_cmp_lt0000_cy_12_6_109,
      I3 => N92,
      O => N30
    );
  bpm_mux0023_2_87_SW0_SW0 : LUT4
    generic map(
      INIT => X"8088"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_6_93,
      I1 => Mcompar_bpm_cmp_lt0000_cy_11_8_95,
      I2 => N80,
      I3 => Mcompar_bpm_cmp_lt0000_cy_12_6_109,
      O => N94
    );
  bpm_mux0023_2_87_SW0 : LUT4
    generic map(
      INIT => X"A2AA"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_5_92,
      I1 => Mcompar_bpm_cmp_lt0000_cy(15),
      I2 => N94,
      I3 => Mcompar_bpm_cmp_lt0000_cy_15_1_143,
      O => N26
    );
  bpm_mux0023_2_87 : LUT4
    generic map(
      INIT => X"D5FF"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_11_2_89,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_1_121,
      I2 => N26,
      I3 => Mcompar_bpm_cmp_lt0000_cy(12),
      O => bpm_mux0023_2_87_808
    );
  bpm_mux0023_1_355 : MUXF5
    port map (
      I0 => N96,
      I1 => N97,
      S => N181,
      O => bpm_mux0023(1)
    );
  bpm_mux0023_1_355_F : LUT4
    generic map(
      INIT => X"AF2F"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_12_1_99,
      I1 => Mcompar_bpm_cmp_lt0000_cy_11_2_89,
      I2 => Mcompar_bpm_cmp_lt0000_cy_9_1_380,
      I3 => bpm_mux0023_1_305_799,
      O => N96
    );
  bpm_mux0023_1_355_G : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_12_1_99,
      I1 => bpm_mux0023_1_305_799,
      I2 => Default_1_IBUF_10,
      O => N97
    );
  bpm_mux0023_1_150 : MUXF5
    port map (
      I0 => N98,
      I1 => N99,
      S => Mcompar_bpm_cmp_lt0000_cy_14_4_136,
      O => bpm_mux0023_1_150_795
    );
  bpm_mux0023_1_150_F : LUT4
    generic map(
      INIT => X"AB23"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_14_3_135,
      I1 => N181,
      I2 => Mcompar_bpm_cmp_lt0000_cy_9_11_382,
      I3 => bpm_mux0023_1_97_802,
      O => N98
    );
  bpm_mux0023_1_150_G : LUT4
    generic map(
      INIT => X"F111"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_9_11_382,
      I1 => N181,
      I2 => Mcompar_bpm_cmp_lt0000_cy_14_3_135,
      I3 => bpm_mux0023_1_97_802,
      O => N99
    );
  bpm_mux0023_1_253 : MUXF5
    port map (
      I0 => N100,
      I1 => N101,
      S => Mcompar_bpm_cmp_lt0000_cy_11_8_95,
      O => bpm_mux0023_1_253_798
    );
  bpm_mux0023_1_253_F : LUT4
    generic map(
      INIT => X"AB23"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_15_1_143,
      I1 => N181,
      I2 => Mcompar_bpm_cmp_lt0000_cy(15),
      I3 => bpm_mux0023_1_203_796,
      O => N100
    );
  bpm_mux0023_1_253_G : LUT4
    generic map(
      INIT => X"F111"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy(15),
      I1 => N181,
      I2 => Mcompar_bpm_cmp_lt0000_cy_15_1_143,
      I3 => bpm_mux0023_1_203_796,
      O => N101
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_841
    );
  Mcompar_bpm_cmp_lt0000_lut_5_INV_0 : INV
    port map (
      I => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_lut(5)
    );
  Mcompar_bpm_cmp_lt0000_lut_6_1_INV_0 : INV
    port map (
      I => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_lut_6_1
    );
  Mcompar_bpm_cmp_lt0000_lut_12_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut(12)
    );
  Mcompar_bpm_cmp_lt0000_lut_1_3_INV_0 : INV
    port map (
      I => average_clockcs_3_IBUF_756,
      O => Mcompar_bpm_cmp_lt0000_lut_1_3
    );
  Mcompar_bpm_cmp_lt0000_lut_5_2_INV_0 : INV
    port map (
      I => average_clockcs_10_IBUF_734,
      O => Mcompar_bpm_cmp_lt0000_lut_5_2
    );
  Mcompar_bpm_cmp_lt0000_lut_12_1_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_12_1
    );
  Mcompar_bpm_cmp_lt0000_lut_5_3_INV_0 : INV
    port map (
      I => average_clockcs_11_IBUF_735,
      O => Mcompar_bpm_cmp_lt0000_lut_5_3
    );
  Mcompar_bpm_cmp_lt0000_lut_11_2_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_11_2
    );
  Mcompar_bpm_cmp_lt0000_lut_1_5_INV_0 : INV
    port map (
      I => average_clockcs_3_IBUF_756,
      O => Mcompar_bpm_cmp_lt0000_lut_1_5
    );
  Mcompar_bpm_cmp_lt0000_lut_3_4_INV_0 : INV
    port map (
      I => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_lut_3_4
    );
  Mcompar_bpm_cmp_lt0000_lut_5_4_INV_0 : INV
    port map (
      I => average_clockcs_8_IBUF_761,
      O => Mcompar_bpm_cmp_lt0000_lut_5_4
    );
  Mcompar_bpm_cmp_lt0000_lut_11_3_INV_0 : INV
    port map (
      I => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_11_3
    );
  Mcompar_bpm_cmp_lt0000_lut_15_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut(15)
    );
  Mcompar_bpm_cmp_lt0000_lut_1_6_INV_0 : INV
    port map (
      I => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_lut_1_6
    );
  Mcompar_bpm_cmp_lt0000_lut_3_5_INV_0 : INV
    port map (
      I => average_clockcs_10_IBUF_734,
      O => Mcompar_bpm_cmp_lt0000_lut_3_5
    );
  Mcompar_bpm_cmp_lt0000_lut_7_6_INV_0 : INV
    port map (
      I => average_clockcs_16_IBUF_740,
      O => Mcompar_bpm_cmp_lt0000_lut_7_6
    );
  Mcompar_bpm_cmp_lt0000_lut_13_1_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_13_1
    );
  Mcompar_bpm_cmp_lt0000_lut_11_5_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_11_5
    );
  Mcompar_bpm_cmp_lt0000_lut_11_6_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_11_6
    );
  Mcompar_bpm_cmp_lt0000_lut_1_9_INV_0 : INV
    port map (
      I => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_1_9
    );
  Mcompar_bpm_cmp_lt0000_lut_3_8_INV_0 : INV
    port map (
      I => average_clockcs_5_IBUF_758,
      O => Mcompar_bpm_cmp_lt0000_lut_3_8
    );
  Mcompar_bpm_cmp_lt0000_lut_9_7_INV_0 : INV
    port map (
      I => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_lut_9_7
    );
  Mcompar_bpm_cmp_lt0000_lut_11_7_INV_0 : INV
    port map (
      I => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_11_7
    );
  Mcompar_bpm_cmp_lt0000_lut_15_1_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_15_1
    );
  Mcompar_bpm_cmp_lt0000_lut_3_9_INV_0 : INV
    port map (
      I => average_clockcs_8_IBUF_761,
      O => Mcompar_bpm_cmp_lt0000_lut_3_9
    );
  Mcompar_bpm_cmp_lt0000_lut_7_10_INV_0 : INV
    port map (
      I => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_7_10
    );
  Mcompar_bpm_cmp_lt0000_lut_11_8_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_11_8
    );
  Mcompar_bpm_cmp_lt0000_lut_5_10_INV_0 : INV
    port map (
      I => average_clockcs_16_IBUF_740,
      O => Mcompar_bpm_cmp_lt0000_lut_5_10
    );
  Mcompar_bpm_cmp_lt0000_lut_9_9_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_9_9
    );
  Mcompar_bpm_cmp_lt0000_lut_1_12_INV_0 : INV
    port map (
      I => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_1_12
    );
  Mcompar_bpm_cmp_lt0000_lut_3_11_INV_0 : INV
    port map (
      I => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_lut_3_11
    );
  Mcompar_bpm_cmp_lt0000_lut_5_11_INV_0 : INV
    port map (
      I => average_clockcs_8_IBUF_761,
      O => Mcompar_bpm_cmp_lt0000_lut_5_11
    );
  Mcompar_bpm_cmp_lt0000_lut_11_9_INV_0 : INV
    port map (
      I => average_clockcs_18_IBUF_742,
      O => Mcompar_bpm_cmp_lt0000_lut_11_9
    );
  Mcompar_bpm_cmp_lt0000_lut_15_2_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_15_2
    );
  Mcompar_bpm_cmp_lt0000_lut_1_13_INV_0 : INV
    port map (
      I => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_1_13
    );
  Mcompar_bpm_cmp_lt0000_lut_6_10_INV_0 : INV
    port map (
      I => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_lut_6_10
    );
  Mcompar_bpm_cmp_lt0000_lut_12_4_INV_0 : INV
    port map (
      I => average_clockcs_29_IBUF_754,
      O => Mcompar_bpm_cmp_lt0000_lut_12_4
    );
  Mcompar_bpm_cmp_lt0000_lut_1_14_INV_0 : INV
    port map (
      I => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_1_14
    );
  Mcompar_bpm_cmp_lt0000_lut_8_8_INV_0 : INV
    port map (
      I => average_clockcs_18_IBUF_742,
      O => Mcompar_bpm_cmp_lt0000_lut_8_8
    );
  Mcompar_bpm_cmp_lt0000_lut_10_7_INV_0 : INV
    port map (
      I => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_lut_10_7
    );
  Mcompar_bpm_cmp_lt0000_lut_3_14_INV_0 : INV
    port map (
      I => average_clockcs_5_IBUF_758,
      O => Mcompar_bpm_cmp_lt0000_lut_3_14
    );
  Mcompar_bpm_cmp_lt0000_lut_5_14_INV_0 : INV
    port map (
      I => average_clockcs_10_IBUF_734,
      O => Mcompar_bpm_cmp_lt0000_lut_5_14
    );
  Mcompar_bpm_cmp_lt0000_lut_7_14_INV_0 : INV
    port map (
      I => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_lut_7_14
    );
  Mcompar_bpm_cmp_lt0000_lut_5_15_INV_0 : INV
    port map (
      I => average_clockcs_11_IBUF_735,
      O => Mcompar_bpm_cmp_lt0000_lut_5_15
    );
  Mcompar_bpm_cmp_lt0000_lut_7_15_INV_0 : INV
    port map (
      I => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_lut_7_15
    );
  Mcompar_bpm_cmp_lt0000_lut_1_17_INV_0 : INV
    port map (
      I => average_clockcs_2_IBUF_755,
      O => Mcompar_bpm_cmp_lt0000_lut_1_17
    );
  Mcompar_bpm_cmp_lt0000_lut_6_11_INV_0 : INV
    port map (
      I => average_clockcs_14_IBUF_738,
      O => Mcompar_bpm_cmp_lt0000_lut_6_11
    );
  Mcompar_bpm_cmp_lt0000_lut_8_9_INV_0 : INV
    port map (
      I => average_clockcs_16_IBUF_740,
      O => Mcompar_bpm_cmp_lt0000_lut_8_9
    );
  Mcompar_bpm_cmp_lt0000_lut_10_8_INV_0 : INV
    port map (
      I => average_clockcs_18_IBUF_742,
      O => Mcompar_bpm_cmp_lt0000_lut_10_8
    );
  Mcompar_bpm_cmp_lt0000_lut_3_17_INV_0 : INV
    port map (
      I => average_clockcs_12_IBUF_736,
      O => Mcompar_bpm_cmp_lt0000_lut_3_17
    );
  Mcompar_bpm_cmp_lt0000_lut_7_16_INV_0 : INV
    port map (
      I => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_lut_7_16
    );
  Mcompar_bpm_cmp_lt0000_lut_1_18_INV_0 : INV
    port map (
      I => average_clockcs_1_IBUF_744,
      O => Mcompar_bpm_cmp_lt0000_lut_1_18
    );
  Mcompar_bpm_cmp_lt0000_lut_3_18_INV_0 : INV
    port map (
      I => average_clockcs_3_IBUF_756,
      O => Mcompar_bpm_cmp_lt0000_lut_3_18
    );
  Mcompar_bpm_cmp_lt0000_lut_5_18_INV_0 : INV
    port map (
      I => average_clockcs_5_IBUF_758,
      O => Mcompar_bpm_cmp_lt0000_lut_5_18
    );
  Mcompar_bpm_cmp_lt0000_lut_9_15_INV_0 : INV
    port map (
      I => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_lut_9_15
    );
  Mcompar_bpm_cmp_lt0000_lut_11_14_INV_0 : INV
    port map (
      I => average_clockcs_16_IBUF_740,
      O => Mcompar_bpm_cmp_lt0000_lut_11_14
    );
  Mcompar_bpm_cmp_lt0000_lut_5_19_INV_0 : INV
    port map (
      I => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_5_19
    );
  Mcompar_bpm_cmp_lt0000_lut_10_11_INV_0 : INV
    port map (
      I => average_clockcs_20_IBUF_745,
      O => Mcompar_bpm_cmp_lt0000_lut_10_11
    );
  Mcompar_bpm_cmp_lt0000_lut_1_20_INV_0 : INV
    port map (
      I => average_clockcs_4_IBUF_757,
      O => Mcompar_bpm_cmp_lt0000_lut_1_20
    );
  Mcompar_bpm_cmp_lt0000_lut_3_20_INV_0 : INV
    port map (
      I => average_clockcs_6_IBUF_759,
      O => Mcompar_bpm_cmp_lt0000_lut_3_20
    );
  Mcompar_bpm_cmp_lt0000_lut_5_20_INV_0 : INV
    port map (
      I => average_clockcs_10_IBUF_734,
      O => Mcompar_bpm_cmp_lt0000_lut_5_20
    );
  Mcompar_bpm_cmp_lt0000_lut_7_19_INV_0 : INV
    port map (
      I => average_clockcs_13_IBUF_737,
      O => Mcompar_bpm_cmp_lt0000_lut_7_19
    );
  Mcompar_bpm_cmp_lt0000_lut_9_17_INV_0 : INV
    port map (
      I => average_clockcs_15_IBUF_739,
      O => Mcompar_bpm_cmp_lt0000_lut_9_17
    );
  Mcompar_bpm_cmp_lt0000_lut_11_16_INV_0 : INV
    port map (
      I => average_clockcs_17_IBUF_741,
      O => Mcompar_bpm_cmp_lt0000_lut_11_16
    );
  Mcompar_bpm_cmp_lt0000_lut_3_21_INV_0 : INV
    port map (
      I => average_clockcs_7_IBUF_760,
      O => Mcompar_bpm_cmp_lt0000_lut_3_21
    );
  Mcompar_bpm_cmp_lt0000_lut_5_21_INV_0 : INV
    port map (
      I => average_clockcs_9_IBUF_762,
      O => Mcompar_bpm_cmp_lt0000_lut_5_21
    );
  Mcompar_bpm_cmp_lt0000_lut_11_17_INV_0 : INV
    port map (
      I => average_clockcs_19_IBUF_743,
      O => Mcompar_bpm_cmp_lt0000_lut_11_17
    );
  Mcompar_bpm_cmp_lt0000_lut_13_11_INV_0 : INV
    port map (
      I => average_clockcs_21_IBUF_746,
      O => Mcompar_bpm_cmp_lt0000_lut_13_11
    );
  displayvalue_display_Mcount_counter_lut_0_INV_0 : INV
    port map (
      I => displayvalue_display_counter(0),
      O => displayvalue_display_Mcount_counter_lut(0)
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_6_INV_0 : INV
    port map (
      I => bpm(4),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_6
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_4_INV_0 : INV
    port map (
      I => bpm(3),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_1_4
    );
  displayvalue_display_Mcount_digit_xor_0_11_INV_0 : INV
    port map (
      I => displayvalue_display_digit(0),
      O => displayvalue_display_Result(0)
    );
  displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_61_INV_0 : INV
    port map (
      I => bpm(8),
      O => displayvalue_Mcompar_ten_part_cmp_ge0000_lut_3_6
    );
  displayvalue_hundred_bit_0_1 : LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      I0 => displayvalue_ten_part_cmp_ge0006,
      I1 => displayvalue_ten_part_cmp_ge0005,
      I2 => displayvalue_ten_part_cmp_ge0007,
      I3 => displayvalue_ten_part_cmp_ge0004,
      O => displayvalue_hundred_bit_0_1_1283
    );
  displayvalue_hundred_bit_0_2 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => displayvalue_ten_part_cmp_ge0006,
      I1 => displayvalue_ten_part_cmp_ge0005,
      I2 => displayvalue_ten_part_cmp_ge0004,
      O => displayvalue_hundred_bit_0_2_1284
    );
  displayvalue_hundred_bit_0_f5 : MUXF5
    port map (
      I0 => displayvalue_hundred_bit_0_2_1284,
      I1 => displayvalue_hundred_bit_0_1_1283,
      S => displayvalue_ten_part_cmp_ge0008,
      O => displayvalue_hundred_bit(0)
    );
  displayvalue_ten_part_2_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => displayvalue_ten_part_cmp_ge0006,
      I1 => displayvalue_ten_part_cmp_ge0004,
      I2 => displayvalue_ten_part_cmp_ge0007,
      I3 => displayvalue_ten_part_cmp_ge0005,
      O => displayvalue_ten_part_2_1
    );
  displayvalue_ten_part_2_1_f5 : MUXF5
    port map (
      I0 => displayvalue_ten_part_2_1,
      I1 => N1,
      S => displayvalue_ten_part_cmp_ge0008,
      O => displayvalue_N1
    );
  bpm_mux0023_7_171 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_10_15_57,
      I1 => Mcompar_bpm_cmp_lt0000_cy_13_7_129,
      I2 => Mcompar_bpm_cmp_lt0000_cy(16),
      I3 => Mcompar_bpm_cmp_lt0000_cy_16_1_149,
      O => bpm_mux0023_7_171_833
    );
  bpm_mux0023_7_17_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => bpm_mux0023_7_171_833,
      S => Mcompar_bpm_cmp_lt0000_cy_16_2,
      O => bpm_mux0023_7_17
    );
  bpm_mux0023_7_811 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_12_1_99,
      I1 => Mcompar_bpm_cmp_lt0000_cy_12_6_109,
      I2 => Mcompar_bpm_cmp_lt0000_cy_15_2_144,
      I3 => Mcompar_bpm_cmp_lt0000_cy_9_1_380,
      O => bpm_mux0023_7_811_837
    );
  bpm_mux0023_7_81_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => bpm_mux0023_7_811_837,
      S => Mcompar_bpm_cmp_lt0000_cy_9_11_382,
      O => bpm_mux0023_7_81
    );
  bpm_mux0023_2_3171 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Mcompar_bpm_cmp_lt0000_cy_10_15_57,
      I1 => Mcompar_bpm_cmp_lt0000_cy_14_3_135,
      I2 => Mcompar_bpm_cmp_lt0000_cy(16),
      I3 => Mcompar_bpm_cmp_lt0000_cy_16_2,
      O => bpm_mux0023_2_3171_806
    );
  bpm_mux0023_2_317_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => bpm_mux0023_2_3171_806,
      S => Mcompar_bpm_cmp_lt0000_cy_9_1_380,
      O => bpm_mux0023_2_317
    );

end Structure;

