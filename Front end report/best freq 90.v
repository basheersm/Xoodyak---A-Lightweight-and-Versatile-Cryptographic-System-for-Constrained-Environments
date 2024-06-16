/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : Q-2019.12-SP5
// Date      : Wed May 17 14:23:53 2023
/////////////////////////////////////////////////////////////


module fwft_fifo_G_W32_G_LOG2DEPTH2 ( clk, rst, din, din_valid, din_ready, 
        dout, dout_valid, dout_ready );
  input [31:0] din;
  output [31:0] dout;
  input clk, rst, din_valid, dout_ready;
  output din_ready, dout_valid;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, \rd_ptr_s[1] ,
         \rd_ptr_s[0] , \mem_s[0][31] , \mem_s[0][30] , \mem_s[0][29] ,
         \mem_s[0][28] , \mem_s[0][27] , \mem_s[0][26] , \mem_s[0][25] ,
         \mem_s[0][24] , \mem_s[0][23] , \mem_s[0][22] , \mem_s[0][21] ,
         \mem_s[0][20] , \mem_s[0][19] , \mem_s[0][18] , \mem_s[0][17] ,
         \mem_s[0][16] , \mem_s[0][15] , \mem_s[0][14] , \mem_s[0][13] ,
         \mem_s[0][12] , \mem_s[0][11] , \mem_s[0][10] , \mem_s[0][9] ,
         \mem_s[0][8] , \mem_s[0][7] , \mem_s[0][6] , \mem_s[0][5] ,
         \mem_s[0][4] , \mem_s[0][3] , \mem_s[0][2] , \mem_s[0][1] ,
         \mem_s[0][0] , \mem_s[1][31] , \mem_s[1][30] , \mem_s[1][29] ,
         \mem_s[1][28] , \mem_s[1][27] , \mem_s[1][26] , \mem_s[1][25] ,
         \mem_s[1][24] , \mem_s[1][23] , \mem_s[1][22] , \mem_s[1][21] ,
         \mem_s[1][20] , \mem_s[1][19] , \mem_s[1][18] , \mem_s[1][17] ,
         \mem_s[1][16] , \mem_s[1][15] , \mem_s[1][14] , \mem_s[1][13] ,
         \mem_s[1][12] , \mem_s[1][11] , \mem_s[1][10] , \mem_s[1][9] ,
         \mem_s[1][8] , \mem_s[1][7] , \mem_s[1][6] , \mem_s[1][5] ,
         \mem_s[1][4] , \mem_s[1][3] , \mem_s[1][2] , \mem_s[1][1] ,
         \mem_s[1][0] , \mem_s[2][31] , \mem_s[2][30] , \mem_s[2][29] ,
         \mem_s[2][28] , \mem_s[2][27] , \mem_s[2][26] , \mem_s[2][25] ,
         \mem_s[2][24] , \mem_s[2][23] , \mem_s[2][22] , \mem_s[2][21] ,
         \mem_s[2][20] , \mem_s[2][19] , \mem_s[2][18] , \mem_s[2][17] ,
         \mem_s[2][16] , \mem_s[2][15] , \mem_s[2][14] , \mem_s[2][13] ,
         \mem_s[2][12] , \mem_s[2][11] , \mem_s[2][10] , \mem_s[2][9] ,
         \mem_s[2][8] , \mem_s[2][7] , \mem_s[2][6] , \mem_s[2][5] ,
         \mem_s[2][4] , \mem_s[2][3] , \mem_s[2][2] , \mem_s[2][1] ,
         \mem_s[2][0] , \mem_s[3][31] , \mem_s[3][30] , \mem_s[3][29] ,
         \mem_s[3][28] , \mem_s[3][27] , \mem_s[3][26] , \mem_s[3][25] ,
         \mem_s[3][24] , \mem_s[3][23] , \mem_s[3][22] , \mem_s[3][21] ,
         \mem_s[3][20] , \mem_s[3][19] , \mem_s[3][18] , \mem_s[3][17] ,
         \mem_s[3][16] , \mem_s[3][15] , \mem_s[3][14] , \mem_s[3][13] ,
         \mem_s[3][12] , \mem_s[3][11] , \mem_s[3][10] , \mem_s[3][9] ,
         \mem_s[3][8] , \mem_s[3][7] , \mem_s[3][6] , \mem_s[3][5] ,
         \mem_s[3][4] , \mem_s[3][3] , \mem_s[3][2] , \mem_s[3][1] ,
         \mem_s[3][0] , \entries_s[2] , \entries_s[1] , \entries_s[0] , N12,
         full_s, N13, empty_s, N14, \wr_ptr_s[1] , \wr_ptr_s[0] , N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30,
         N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72,
         N73, N74, N75, N76;

  GEQ_TC_OP gte_77 ( .A({1'b0, \entries_s[2] , \entries_s[1] , \entries_s[0] }), .B({1'b0, 1'b1, 1'b0, 1'b0}), .Z(N12) );
  LEQ_TC_OP lte_78 ( .A({1'b0, \entries_s[2] , \entries_s[1] , \entries_s[0] }), .B(1'b0), .Z(N13) );
  GEQ_TC_OP gte_107 ( .A({1'b0, \wr_ptr_s[1] , \wr_ptr_s[0] }), .B({1'b0, 1'b1, 
        1'b1}), .Z(N37) );
  GEQ_TC_OP gte_116 ( .A({1'b0, \rd_ptr_s[1] , \rd_ptr_s[0] }), .B({1'b0, 1'b1, 
        1'b1}), .Z(N49) );
  \**SEQGEN**  \mem_s_reg[0][31]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[31]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][31] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][30]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[30]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][30] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][29]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[29]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][29] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][28]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[28]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][28] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][27]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[27]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][27] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][26]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[26]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][26] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][25]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[25]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][25] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][24]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[24]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][24] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][23]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[23]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][23] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][22]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[22]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][22] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][21]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[21]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][21] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][20]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[20]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][20] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][19]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[19]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][19] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][18]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[18]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][18] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][17]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[17]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][17] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][16]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[16]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][16] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[15]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][15] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[14]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][14] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[13]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][13] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[12]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][12] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][11] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][10] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[9]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][9] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[8]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][8] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[0][0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[0][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N68) );
  \**SEQGEN**  \mem_s_reg[1][31]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[31]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][31] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][30]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[30]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][30] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][29]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[29]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][29] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][28]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[28]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][28] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][27]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[27]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][27] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][26]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[26]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][26] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][25]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[25]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][25] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][24]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[24]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][24] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][23]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[23]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][23] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][22]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[22]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][22] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][21]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[21]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][21] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][20]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[20]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][20] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][19]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[19]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][19] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][18]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[18]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][18] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][17]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[17]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][17] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][16]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[16]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][16] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[15]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][15] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[14]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][14] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[13]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][13] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[12]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][12] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][11] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][10] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[9]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][9] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[8]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][8] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[1][0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[1][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N67) );
  \**SEQGEN**  \mem_s_reg[2][31]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[31]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][31] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][30]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[30]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][30] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][29]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[29]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][29] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][28]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[28]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][28] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][27]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[27]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][27] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][26]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[26]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][26] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][25]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[25]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][25] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][24]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[24]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][24] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][23]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[23]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][23] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][22]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[22]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][22] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][21]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[21]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][21] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][20]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[20]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][20] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][19]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[19]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][19] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][18]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[18]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][18] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][17]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[17]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][17] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][16]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[16]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][16] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[15]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][15] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[14]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][14] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[13]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][13] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[12]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][12] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][11] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][10] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[9]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][9] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[8]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][8] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[2][0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[2][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N66) );
  \**SEQGEN**  \mem_s_reg[3][31]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[31]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][31] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][30]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[30]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][30] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][29]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[29]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][29] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][28]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[28]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][28] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][27]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[27]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][27] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][26]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[26]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][26] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][25]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[25]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][25] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][24]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[24]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][24] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][23]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[23]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][23] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][22]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[22]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][22] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][21]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[21]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][21] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][20]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[20]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][20] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][19]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[19]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][19] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][18]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[18]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][18] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][17]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[17]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][17] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][16]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[16]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][16] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[15]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][15] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[14]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][14] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[13]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][13] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[12]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][12] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][11] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][10] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][9]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[9]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][9] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][8]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[8]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][8] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \mem_s_reg[3][0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \mem_s[3][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N65) );
  \**SEQGEN**  \wr_ptr_s_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N57), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \wr_ptr_s[1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \wr_ptr_s_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N56), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \wr_ptr_s[0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \rd_ptr_s_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N60), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \rd_ptr_s[1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N58) );
  \**SEQGEN**  \rd_ptr_s_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N59), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \rd_ptr_s[0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N58) );
  \**SEQGEN**  \entries_s_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N64), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \entries_s[2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N61) );
  \**SEQGEN**  \entries_s_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N63), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \entries_s[1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N61) );
  \**SEQGEN**  \entries_s_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N62), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \entries_s[0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N61) );
  GTECH_NOT I_0 ( .A(din_valid), .Z(N69) );
  GTECH_NOT I_1 ( .A(din_ready), .Z(N70) );
  GTECH_NOT I_2 ( .A(dout_valid), .Z(N71) );
  GTECH_NOT I_3 ( .A(dout_ready), .Z(N72) );
  ADD_TC_OP add_98 ( .A({\entries_s[2] , \entries_s[1] , \entries_s[0] }), .B(
        {1'b0, 1'b1}), .Z({N20, N19, N18}) );
  SUB_TC_OP sub_101 ( .A({\entries_s[2] , \entries_s[1] , \entries_s[0] }), 
        .B({1'b0, 1'b1}), .Z({N25, N24, N23}) );
  ADD_TC_OP add_110 ( .A({\wr_ptr_s[1] , \wr_ptr_s[0] }), .B({1'b0, 1'b1}), 
        .Z({N40, N39}) );
  ADD_TC_OP add_119 ( .A({\rd_ptr_s[1] , \rd_ptr_s[0] }), .B({1'b0, 1'b1}), 
        .Z({N52, N51}) );
  GTECH_AND2 C635 ( .A(\wr_ptr_s[0] ), .B(\wr_ptr_s[1] ), .Z(N36) );
  GTECH_AND2 C636 ( .A(N0), .B(\wr_ptr_s[1] ), .Z(N35) );
  GTECH_NOT I_4 ( .A(\wr_ptr_s[0] ), .Z(N0) );
  GTECH_AND2 C637 ( .A(\wr_ptr_s[0] ), .B(N1), .Z(N34) );
  GTECH_NOT I_5 ( .A(\wr_ptr_s[1] ), .Z(N1) );
  GTECH_AND2 C638 ( .A(N2), .B(N3), .Z(N33) );
  GTECH_NOT I_6 ( .A(\wr_ptr_s[0] ), .Z(N2) );
  GTECH_NOT I_7 ( .A(\wr_ptr_s[1] ), .Z(N3) );
  SELECT_OP C639 ( .DATA1(1'b1), .DATA2(N22), .CONTROL1(N4), .CONTROL2(N17), 
        .Z(N26) );
  GTECH_BUF B_0 ( .A(N16), .Z(N4) );
  SELECT_OP C640 ( .DATA1({N20, N19, N18}), .DATA2({N25, N24, N23}), 
        .CONTROL1(N4), .CONTROL2(N17), .Z({N29, N28, N27}) );
  SELECT_OP C641 ( .DATA1({1'b0, 1'b0}), .DATA2({N40, N39}), .CONTROL1(N5), 
        .CONTROL2(N38), .Z({N42, N41}) );
  GTECH_BUF B_1 ( .A(N37), .Z(N5) );
  SELECT_OP C642 ( .DATA1({N33, N34, N35, N36}), .DATA2({1'b0, 1'b0, 1'b0, 
        1'b0}), .CONTROL1(N6), .CONTROL2(N31), .Z({N46, N45, N44, N43}) );
  GTECH_BUF B_2 ( .A(N30), .Z(N6) );
  SELECT_OP C643 ( .DATA1({1'b0, 1'b0}), .DATA2({N52, N51}), .CONTROL1(N7), 
        .CONTROL2(N50), .Z({N54, N53}) );
  GTECH_BUF B_3 ( .A(N49), .Z(N7) );
  SELECT_OP C644 ( .DATA1(1'b1), .DATA2(N30), .CONTROL1(N8), .CONTROL2(N9), 
        .Z(N55) );
  GTECH_BUF B_4 ( .A(rst), .Z(N8) );
  GTECH_BUF B_5 ( .A(N14), .Z(N9) );
  SELECT_OP C645 ( .DATA1({1'b0, 1'b0}), .DATA2({N42, N41}), .CONTROL1(N8), 
        .CONTROL2(N9), .Z({N57, N56}) );
  SELECT_OP C646 ( .DATA1(1'b1), .DATA2(N47), .CONTROL1(N8), .CONTROL2(N9), 
        .Z(N58) );
  SELECT_OP C647 ( .DATA1({1'b0, 1'b0}), .DATA2({N54, N53}), .CONTROL1(N8), 
        .CONTROL2(N9), .Z({N60, N59}) );
  SELECT_OP C648 ( .DATA1(1'b1), .DATA2(N26), .CONTROL1(N8), .CONTROL2(N9), 
        .Z(N61) );
  SELECT_OP C649 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N29, N28, N27}), 
        .CONTROL1(N8), .CONTROL2(N9), .Z({N64, N63, N62}) );
  SELECT_OP C650 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N46, N45, N44, 
        N43}), .CONTROL1(N8), .CONTROL2(N9), .Z({N68, N67, N66, N65}) );
  MUX_OP C651 ( .D0({\mem_s[0][0] , \mem_s[0][1] , \mem_s[0][2] , 
        \mem_s[0][3] , \mem_s[0][4] , \mem_s[0][5] , \mem_s[0][6] , 
        \mem_s[0][7] , \mem_s[0][8] , \mem_s[0][9] , \mem_s[0][10] , 
        \mem_s[0][11] , \mem_s[0][12] , \mem_s[0][13] , \mem_s[0][14] , 
        \mem_s[0][15] , \mem_s[0][16] , \mem_s[0][17] , \mem_s[0][18] , 
        \mem_s[0][19] , \mem_s[0][20] , \mem_s[0][21] , \mem_s[0][22] , 
        \mem_s[0][23] , \mem_s[0][24] , \mem_s[0][25] , \mem_s[0][26] , 
        \mem_s[0][27] , \mem_s[0][28] , \mem_s[0][29] , \mem_s[0][30] , 
        \mem_s[0][31] }), .D1({\mem_s[1][0] , \mem_s[1][1] , \mem_s[1][2] , 
        \mem_s[1][3] , \mem_s[1][4] , \mem_s[1][5] , \mem_s[1][6] , 
        \mem_s[1][7] , \mem_s[1][8] , \mem_s[1][9] , \mem_s[1][10] , 
        \mem_s[1][11] , \mem_s[1][12] , \mem_s[1][13] , \mem_s[1][14] , 
        \mem_s[1][15] , \mem_s[1][16] , \mem_s[1][17] , \mem_s[1][18] , 
        \mem_s[1][19] , \mem_s[1][20] , \mem_s[1][21] , \mem_s[1][22] , 
        \mem_s[1][23] , \mem_s[1][24] , \mem_s[1][25] , \mem_s[1][26] , 
        \mem_s[1][27] , \mem_s[1][28] , \mem_s[1][29] , \mem_s[1][30] , 
        \mem_s[1][31] }), .D2({\mem_s[2][0] , \mem_s[2][1] , \mem_s[2][2] , 
        \mem_s[2][3] , \mem_s[2][4] , \mem_s[2][5] , \mem_s[2][6] , 
        \mem_s[2][7] , \mem_s[2][8] , \mem_s[2][9] , \mem_s[2][10] , 
        \mem_s[2][11] , \mem_s[2][12] , \mem_s[2][13] , \mem_s[2][14] , 
        \mem_s[2][15] , \mem_s[2][16] , \mem_s[2][17] , \mem_s[2][18] , 
        \mem_s[2][19] , \mem_s[2][20] , \mem_s[2][21] , \mem_s[2][22] , 
        \mem_s[2][23] , \mem_s[2][24] , \mem_s[2][25] , \mem_s[2][26] , 
        \mem_s[2][27] , \mem_s[2][28] , \mem_s[2][29] , \mem_s[2][30] , 
        \mem_s[2][31] }), .D3({\mem_s[3][0] , \mem_s[3][1] , \mem_s[3][2] , 
        \mem_s[3][3] , \mem_s[3][4] , \mem_s[3][5] , \mem_s[3][6] , 
        \mem_s[3][7] , \mem_s[3][8] , \mem_s[3][9] , \mem_s[3][10] , 
        \mem_s[3][11] , \mem_s[3][12] , \mem_s[3][13] , \mem_s[3][14] , 
        \mem_s[3][15] , \mem_s[3][16] , \mem_s[3][17] , \mem_s[3][18] , 
        \mem_s[3][19] , \mem_s[3][20] , \mem_s[3][21] , \mem_s[3][22] , 
        \mem_s[3][23] , \mem_s[3][24] , \mem_s[3][25] , \mem_s[3][26] , 
        \mem_s[3][27] , \mem_s[3][28] , \mem_s[3][29] , \mem_s[3][30] , 
        \mem_s[3][31] }), .S0(N10), .S1(N11), .Z({dout[0], dout[1], dout[2], 
        dout[3], dout[4], dout[5], dout[6], dout[7], dout[8], dout[9], 
        dout[10], dout[11], dout[12], dout[13], dout[14], dout[15], dout[16], 
        dout[17], dout[18], dout[19], dout[20], dout[21], dout[22], dout[23], 
        dout[24], dout[25], dout[26], dout[27], dout[28], dout[29], dout[30], 
        dout[31]}) );
  GTECH_BUF B_6 ( .A(\rd_ptr_s[0] ), .Z(N10) );
  GTECH_BUF B_7 ( .A(\rd_ptr_s[1] ), .Z(N11) );
  GTECH_BUF B_8 ( .A(N12), .Z(full_s) );
  GTECH_BUF B_9 ( .A(N13), .Z(empty_s) );
  GTECH_NOT I_8 ( .A(full_s), .Z(din_ready) );
  GTECH_NOT I_9 ( .A(empty_s), .Z(dout_valid) );
  GTECH_NOT I_10 ( .A(rst), .Z(N14) );
  GTECH_BUF B_10 ( .A(N14), .Z(N15) );
  GTECH_AND2 C662 ( .A(N73), .B(N74), .Z(N16) );
  GTECH_AND2 C663 ( .A(din_valid), .B(din_ready), .Z(N73) );
  GTECH_OR2 C664 ( .A(N71), .B(N72), .Z(N74) );
  GTECH_NOT I_11 ( .A(N16), .Z(N17) );
  GTECH_AND2 C667 ( .A(N15), .B(N16) );
  GTECH_AND2 C668 ( .A(N15), .B(N17), .Z(N21) );
  GTECH_AND2 C669 ( .A(N76), .B(dout_ready), .Z(N22) );
  GTECH_AND2 C670 ( .A(N75), .B(dout_valid), .Z(N76) );
  GTECH_OR2 C671 ( .A(N69), .B(N70), .Z(N75) );
  GTECH_AND2 C673 ( .A(N21), .B(N22) );
  GTECH_AND2 C674 ( .A(din_valid), .B(din_ready), .Z(N30) );
  GTECH_NOT I_12 ( .A(N30), .Z(N31) );
  GTECH_AND2 C677 ( .A(N15), .B(N30), .Z(N32) );
  GTECH_NOT I_13 ( .A(N37), .Z(N38) );
  GTECH_AND2 C680 ( .A(N32), .B(N38) );
  GTECH_AND2 C681 ( .A(dout_valid), .B(dout_ready), .Z(N47) );
  GTECH_AND2 C683 ( .A(N15), .B(N47), .Z(N48) );
  GTECH_NOT I_14 ( .A(N49), .Z(N50) );
  GTECH_AND2 C686 ( .A(N48), .B(N50) );
endmodule


module StepDownCountLd_N16_step4_2 ( clk, len, ena, load, count );
  input [15:0] load;
  output [15:0] count;
  input clk, len, ena;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36;

  \**SEQGEN**  \qtemp_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(N36), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(N35), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(N34), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N25), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N24), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N23), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N22), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \qtemp_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N21), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  SUB_UNS_OP sub_55 ( .A(count), .B({1'b1, 1'b0, 1'b0}), .Z({N19, N18, N17, 
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4}) );
  SELECT_OP C81 ( .DATA1(1'b1), .DATA2(ena), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N20) );
  GTECH_BUF B_0 ( .A(len), .Z(N0) );
  GTECH_BUF B_1 ( .A(N2), .Z(N1) );
  SELECT_OP C82 ( .DATA1(load), .DATA2({N19, N18, N17, N16, N15, N14, N13, N12, 
        N11, N10, N9, N8, N7, N6, N5, N4}), .CONTROL1(N0), .CONTROL2(N1), .Z({
        N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23, 
        N22, N21}) );
  GTECH_NOT I_0 ( .A(len), .Z(N2) );
  GTECH_BUF B_2 ( .A(N2), .Z(N3) );
  GTECH_AND2 C90 ( .A(N3), .B(ena) );
endmodule


module KEY_PISO_2 ( clk, rst, data_s, data_valid_s, data_ready_s, data_p, 
        data_valid_p, data_ready_p );
  output [31:0] data_s;
  input [31:0] data_p;
  input clk, rst, data_ready_s, data_valid_p;
  output data_valid_s, data_ready_p;
  wire   data_valid_s, data_ready_p;
  assign data_s[31] = data_p[31];
  assign data_s[30] = data_p[30];
  assign data_s[29] = data_p[29];
  assign data_s[28] = data_p[28];
  assign data_s[27] = data_p[27];
  assign data_s[26] = data_p[26];
  assign data_s[25] = data_p[25];
  assign data_s[24] = data_p[24];
  assign data_s[23] = data_p[23];
  assign data_s[22] = data_p[22];
  assign data_s[21] = data_p[21];
  assign data_s[20] = data_p[20];
  assign data_s[19] = data_p[19];
  assign data_s[18] = data_p[18];
  assign data_s[17] = data_p[17];
  assign data_s[16] = data_p[16];
  assign data_s[15] = data_p[15];
  assign data_s[14] = data_p[14];
  assign data_s[13] = data_p[13];
  assign data_s[12] = data_p[12];
  assign data_s[11] = data_p[11];
  assign data_s[10] = data_p[10];
  assign data_s[9] = data_p[9];
  assign data_s[8] = data_p[8];
  assign data_s[7] = data_p[7];
  assign data_s[6] = data_p[6];
  assign data_s[5] = data_p[5];
  assign data_s[4] = data_p[4];
  assign data_s[3] = data_p[3];
  assign data_s[2] = data_p[2];
  assign data_s[1] = data_p[1];
  assign data_s[0] = data_p[0];
  assign data_valid_s = data_valid_p;
  assign data_ready_p = data_ready_s;

endmodule


module DATA_PISO_2 ( clk, rst, data_size_p, data_size_s, data_s, data_valid_s, 
        data_ready_s, data_p, data_valid_p, data_ready_p, valid_bytes_p, 
        valid_bytes_s, pad_loc_p, pad_loc_s, eoi_p, eoi_s, eot_p, eot_s );
  input [2:0] data_size_p;
  output [2:0] data_size_s;
  output [31:0] data_s;
  input [31:0] data_p;
  input [3:0] valid_bytes_p;
  output [3:0] valid_bytes_s;
  input [3:0] pad_loc_p;
  output [3:0] pad_loc_s;
  input clk, rst, data_ready_s, data_valid_p, eoi_p, eot_p;
  output data_valid_s, data_ready_p, eoi_s, eot_s;
  wire   data_valid_s, data_ready_p, eoi_s, eot_s;
  assign data_size_s[2] = data_size_p[2];
  assign data_size_s[1] = data_size_p[1];
  assign data_size_s[0] = data_size_p[0];
  assign data_s[31] = data_p[31];
  assign data_s[30] = data_p[30];
  assign data_s[29] = data_p[29];
  assign data_s[28] = data_p[28];
  assign data_s[27] = data_p[27];
  assign data_s[26] = data_p[26];
  assign data_s[25] = data_p[25];
  assign data_s[24] = data_p[24];
  assign data_s[23] = data_p[23];
  assign data_s[22] = data_p[22];
  assign data_s[21] = data_p[21];
  assign data_s[20] = data_p[20];
  assign data_s[19] = data_p[19];
  assign data_s[18] = data_p[18];
  assign data_s[17] = data_p[17];
  assign data_s[16] = data_p[16];
  assign data_s[15] = data_p[15];
  assign data_s[14] = data_p[14];
  assign data_s[13] = data_p[13];
  assign data_s[12] = data_p[12];
  assign data_s[11] = data_p[11];
  assign data_s[10] = data_p[10];
  assign data_s[9] = data_p[9];
  assign data_s[8] = data_p[8];
  assign data_s[7] = data_p[7];
  assign data_s[6] = data_p[6];
  assign data_s[5] = data_p[5];
  assign data_s[4] = data_p[4];
  assign data_s[3] = data_p[3];
  assign data_s[2] = data_p[2];
  assign data_s[1] = data_p[1];
  assign data_s[0] = data_p[0];
  assign data_valid_s = data_valid_p;
  assign data_ready_p = data_ready_s;
  assign valid_bytes_s[3] = valid_bytes_p[3];
  assign valid_bytes_s[2] = valid_bytes_p[2];
  assign valid_bytes_s[1] = valid_bytes_p[1];
  assign valid_bytes_s[0] = valid_bytes_p[0];
  assign pad_loc_s[3] = pad_loc_p[3];
  assign pad_loc_s[2] = pad_loc_p[2];
  assign pad_loc_s[1] = pad_loc_p[1];
  assign pad_loc_s[0] = pad_loc_p[0];
  assign eoi_s = eoi_p;
  assign eot_s = eot_p;

endmodule


module PreProcessor_2 ( clk, rst, pdi_data, pdi_valid, pdi_ready, sdi_data, 
        sdi_valid, sdi_ready, key, key_valid, key_ready, bdi, bdi_valid, 
        bdi_ready, bdi_pad_loc, bdi_valid_bytes, bdi_size, bdi_eot, bdi_eoi, 
        bdi_type, decrypt, hash, key_update, cmd, cmd_valid, cmd_ready );
  input [31:0] pdi_data;
  input [31:0] sdi_data;
  output [31:0] key;
  output [31:0] bdi;
  output [3:0] bdi_pad_loc;
  output [3:0] bdi_valid_bytes;
  output [2:0] bdi_size;
  output [3:0] bdi_type;
  output [31:0] cmd;
  input clk, rst, pdi_valid, sdi_valid, key_ready, bdi_ready, cmd_ready;
  output pdi_ready, sdi_ready, key_valid, bdi_valid, bdi_eot, bdi_eoi, decrypt,
         hash, key_update, cmd_valid;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, len_SegLenCnt, en_SegLenCnt, N64,
         last_flit_of_segment, N65, N66, N67, N68, N69, N70, N71, N72, N73,
         N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87,
         N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N107, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N117, N118, N119, N120, N121, N122,
         N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N133,
         N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144,
         N145, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155,
         N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, N177,
         N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188,
         N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, N199,
         N200, N201, N202, eoi_flag, eot_flag, sel_sdi_length, N203, N204,
         bdi_eoi_internal, bdi_eot_internal, key_ready_p, key_valid_p,
         bdi_ready_p, bdi_valid_p, N205, N206, N207, N208, N209, N210, N211,
         N212, N213, N214, N215, N216, N217, N218, N219, N220, N221, N222,
         N223, N224, N225, N226, N227, N228, N229, N230, N231, N232, N233,
         N234, N235, N236, N237, N238, N239, N240, N241, N242, N243, N244,
         N245, N246, N247, N248, N249, N250, N251, N252, N253, N254, N255,
         N256, N257, N258, N259, N260, N261, N262, N263, N264, N265, N266,
         N267, N268, N269, N270, N271, N272, N273, N274, N275, N276, N277,
         N278, N279, N280, N281, N282, N283, N284, N285, N286, N287, N288,
         N289, N290, N291, N292, N293, N294, N295, N296, N297, N298, N299,
         N300, N301, N302, N303, N304, N305, N306, N307, N308, N309, N310,
         N311, N312, N313, N314, N315, N316, N317, N318, N319, N320, N321,
         N322, N323, N324, N325, N326, N327, N328, N329, N330, N331, N332,
         N333, N334, N335, N336, N337, N338, N339, N340, N341, N342, N343,
         N344, N345, N346, N347, N348, N349, N350, N351, N352, N353, N354,
         N355, N356, N357, N358, N359, N360, N361, N362, N363, N364, N365,
         N366, N367, N368, N369, N370, N371, N372, N373, N374, N375, N376,
         N377, N378, N379, N380, N381, N382, N383, N384, N385, N386, N387,
         N388, N389, N390, N391, N392, N393, N394, N395, N396, N397, N398,
         N399, N400, N401, N402, N403, N404, N405, N406, N407, N408, N409,
         N410, N411, N412, N413, N414, N415, N416, N417, N418, N419, N420,
         N421, N422, N423, N424, N425, N426, N427, N428, N429, N430, N431,
         N432, N433, N434, N435, N436, N437, N438, N439, N440, N441, N442,
         N443, N444, N445, N446, N447, N448, N449, N450, N451, N452, N453,
         N454, N455, N456, N457, N458, N459, N460, N461, N462, N463, N464,
         N465, N466, N467, N468, N469, N470, N471, N472, N473, N474, N475,
         N476, N477, N478, N479, N480, N481, N482, N483, N484, N485, N486,
         N487, N488, N489, N490, N491, N492, N493, N494, N495, N496, N497,
         N498, N499, N500, N501, N502, N503, N504, N505, N506, N507, N508,
         N509, N510, N511, N512, N513, N514, N515, N516, N517, N518, N519,
         N520, N521, N522, N523, N524, N525, N526, N527, N528, N529, N530,
         N531, N532;
  wire   [15:0] load_SegLenCnt;
  wire   [15:0] dout_SegLenCnt;
  wire   [3:0] bdi_valid_bytes_p;
  wire   [3:0] bdi_pad_loc_p;
  wire   [2:0] bdi_size_p;
  wire   [3:0] pr_state;
  wire   [3:0] nx_state;
  assign cmd[31] = pdi_data[31];
  assign cmd[30] = pdi_data[30];
  assign cmd[29] = pdi_data[29];
  assign cmd[28] = pdi_data[28];
  assign cmd[27] = pdi_data[27];
  assign cmd[26] = pdi_data[26];
  assign cmd[25] = pdi_data[25];
  assign cmd[24] = pdi_data[24];
  assign cmd[23] = pdi_data[23];
  assign cmd[22] = pdi_data[22];
  assign cmd[21] = pdi_data[21];
  assign cmd[20] = pdi_data[20];
  assign cmd[19] = pdi_data[19];
  assign cmd[18] = pdi_data[18];
  assign cmd[17] = pdi_data[17];
  assign cmd[16] = pdi_data[16];
  assign cmd[15] = pdi_data[15];
  assign cmd[14] = pdi_data[14];
  assign cmd[13] = pdi_data[13];
  assign cmd[12] = pdi_data[12];
  assign cmd[11] = pdi_data[11];
  assign cmd[10] = pdi_data[10];
  assign cmd[9] = pdi_data[9];
  assign cmd[8] = pdi_data[8];
  assign cmd[7] = pdi_data[7];
  assign cmd[6] = pdi_data[6];
  assign cmd[5] = pdi_data[5];
  assign cmd[4] = pdi_data[4];
  assign cmd[3] = pdi_data[3];
  assign cmd[2] = pdi_data[2];
  assign cmd[1] = pdi_data[1];
  assign cmd[0] = pdi_data[0];

  StepDownCountLd_N16_step4_2 SegLen ( .clk(clk), .len(len_SegLenCnt), .ena(
        en_SegLenCnt), .load(load_SegLenCnt), .count(dout_SegLenCnt) );
  LEQ_UNS_OP lte_155 ( .A(dout_SegLenCnt), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0}), 
        .Z(N64) );
  GTECH_OR2 C14 ( .A(dout_SegLenCnt[14]), .B(dout_SegLenCnt[15]), .Z(N65) );
  GTECH_OR2 C15 ( .A(dout_SegLenCnt[13]), .B(N65), .Z(N66) );
  GTECH_OR2 C16 ( .A(dout_SegLenCnt[12]), .B(N66), .Z(N67) );
  GTECH_OR2 C17 ( .A(dout_SegLenCnt[11]), .B(N67), .Z(N68) );
  GTECH_OR2 C18 ( .A(dout_SegLenCnt[10]), .B(N68), .Z(N69) );
  GTECH_OR2 C19 ( .A(dout_SegLenCnt[9]), .B(N69), .Z(N70) );
  GTECH_OR2 C20 ( .A(dout_SegLenCnt[8]), .B(N70), .Z(N71) );
  GTECH_OR2 C21 ( .A(dout_SegLenCnt[7]), .B(N71), .Z(N72) );
  GTECH_OR2 C22 ( .A(dout_SegLenCnt[6]), .B(N72), .Z(N73) );
  GTECH_OR2 C23 ( .A(dout_SegLenCnt[5]), .B(N73), .Z(N74) );
  GTECH_OR2 C24 ( .A(dout_SegLenCnt[4]), .B(N74), .Z(N75) );
  GTECH_OR2 C25 ( .A(dout_SegLenCnt[3]), .B(N75), .Z(N76) );
  GTECH_OR2 C26 ( .A(dout_SegLenCnt[2]), .B(N76), .Z(N77) );
  GTECH_OR2 C27 ( .A(dout_SegLenCnt[1]), .B(N77), .Z(N78) );
  GTECH_OR2 C28 ( .A(dout_SegLenCnt[0]), .B(N78), .Z(N79) );
  GTECH_NOT I_0 ( .A(N79), .Z(N80) );
  GTECH_NOT I_1 ( .A(dout_SegLenCnt[0]), .Z(N81) );
  GTECH_OR2 C31 ( .A(dout_SegLenCnt[14]), .B(dout_SegLenCnt[15]), .Z(N82) );
  GTECH_OR2 C32 ( .A(dout_SegLenCnt[13]), .B(N82), .Z(N83) );
  GTECH_OR2 C33 ( .A(dout_SegLenCnt[12]), .B(N83), .Z(N84) );
  GTECH_OR2 C34 ( .A(dout_SegLenCnt[11]), .B(N84), .Z(N85) );
  GTECH_OR2 C35 ( .A(dout_SegLenCnt[10]), .B(N85), .Z(N86) );
  GTECH_OR2 C36 ( .A(dout_SegLenCnt[9]), .B(N86), .Z(N87) );
  GTECH_OR2 C37 ( .A(dout_SegLenCnt[8]), .B(N87), .Z(N88) );
  GTECH_OR2 C38 ( .A(dout_SegLenCnt[7]), .B(N88), .Z(N89) );
  GTECH_OR2 C39 ( .A(dout_SegLenCnt[6]), .B(N89), .Z(N90) );
  GTECH_OR2 C40 ( .A(dout_SegLenCnt[5]), .B(N90), .Z(N91) );
  GTECH_OR2 C41 ( .A(dout_SegLenCnt[4]), .B(N91), .Z(N92) );
  GTECH_OR2 C42 ( .A(dout_SegLenCnt[3]), .B(N92), .Z(N93) );
  GTECH_OR2 C43 ( .A(dout_SegLenCnt[2]), .B(N93), .Z(N94) );
  GTECH_OR2 C44 ( .A(dout_SegLenCnt[1]), .B(N94), .Z(N95) );
  GTECH_OR2 C45 ( .A(N81), .B(N95), .Z(N96) );
  GTECH_NOT I_2 ( .A(N96), .Z(N97) );
  GTECH_NOT I_3 ( .A(dout_SegLenCnt[1]), .Z(N98) );
  GTECH_OR2 C48 ( .A(dout_SegLenCnt[14]), .B(dout_SegLenCnt[15]), .Z(N99) );
  GTECH_OR2 C49 ( .A(dout_SegLenCnt[13]), .B(N99), .Z(N100) );
  GTECH_OR2 C50 ( .A(dout_SegLenCnt[12]), .B(N100), .Z(N101) );
  GTECH_OR2 C51 ( .A(dout_SegLenCnt[11]), .B(N101), .Z(N102) );
  GTECH_OR2 C52 ( .A(dout_SegLenCnt[10]), .B(N102), .Z(N103) );
  GTECH_OR2 C53 ( .A(dout_SegLenCnt[9]), .B(N103), .Z(N104) );
  GTECH_OR2 C54 ( .A(dout_SegLenCnt[8]), .B(N104), .Z(N105) );
  GTECH_OR2 C55 ( .A(dout_SegLenCnt[7]), .B(N105), .Z(N106) );
  GTECH_OR2 C56 ( .A(dout_SegLenCnt[6]), .B(N106), .Z(N107) );
  GTECH_OR2 C57 ( .A(dout_SegLenCnt[5]), .B(N107), .Z(N108) );
  GTECH_OR2 C58 ( .A(dout_SegLenCnt[4]), .B(N108), .Z(N109) );
  GTECH_OR2 C59 ( .A(dout_SegLenCnt[3]), .B(N109), .Z(N110) );
  GTECH_OR2 C60 ( .A(dout_SegLenCnt[2]), .B(N110), .Z(N111) );
  GTECH_OR2 C61 ( .A(N98), .B(N111), .Z(N112) );
  GTECH_OR2 C62 ( .A(dout_SegLenCnt[0]), .B(N112), .Z(N113) );
  GTECH_NOT I_4 ( .A(N113), .Z(N114) );
  GTECH_OR2 C66 ( .A(dout_SegLenCnt[14]), .B(dout_SegLenCnt[15]), .Z(N115) );
  GTECH_OR2 C67 ( .A(dout_SegLenCnt[13]), .B(N115), .Z(N116) );
  GTECH_OR2 C68 ( .A(dout_SegLenCnt[12]), .B(N116), .Z(N117) );
  GTECH_OR2 C69 ( .A(dout_SegLenCnt[11]), .B(N117), .Z(N118) );
  GTECH_OR2 C70 ( .A(dout_SegLenCnt[10]), .B(N118), .Z(N119) );
  GTECH_OR2 C71 ( .A(dout_SegLenCnt[9]), .B(N119), .Z(N120) );
  GTECH_OR2 C72 ( .A(dout_SegLenCnt[8]), .B(N120), .Z(N121) );
  GTECH_OR2 C73 ( .A(dout_SegLenCnt[7]), .B(N121), .Z(N122) );
  GTECH_OR2 C74 ( .A(dout_SegLenCnt[6]), .B(N122), .Z(N123) );
  GTECH_OR2 C75 ( .A(dout_SegLenCnt[5]), .B(N123), .Z(N124) );
  GTECH_OR2 C76 ( .A(dout_SegLenCnt[4]), .B(N124), .Z(N125) );
  GTECH_OR2 C77 ( .A(dout_SegLenCnt[3]), .B(N125), .Z(N126) );
  GTECH_OR2 C78 ( .A(dout_SegLenCnt[2]), .B(N126), .Z(N127) );
  GTECH_OR2 C79 ( .A(N98), .B(N127), .Z(N128) );
  GTECH_OR2 C80 ( .A(N81), .B(N128), .Z(N129) );
  GTECH_NOT I_5 ( .A(N129), .Z(N130) );
  GTECH_OR2 C99 ( .A(dout_SegLenCnt[14]), .B(dout_SegLenCnt[15]), .Z(N135) );
  GTECH_OR2 C100 ( .A(dout_SegLenCnt[13]), .B(N135), .Z(N136) );
  GTECH_OR2 C101 ( .A(dout_SegLenCnt[12]), .B(N136), .Z(N137) );
  GTECH_OR2 C102 ( .A(dout_SegLenCnt[11]), .B(N137), .Z(N138) );
  GTECH_OR2 C103 ( .A(dout_SegLenCnt[10]), .B(N138), .Z(N139) );
  GTECH_OR2 C104 ( .A(dout_SegLenCnt[9]), .B(N139), .Z(N140) );
  GTECH_OR2 C105 ( .A(dout_SegLenCnt[8]), .B(N140), .Z(N141) );
  GTECH_OR2 C106 ( .A(dout_SegLenCnt[7]), .B(N141), .Z(N142) );
  GTECH_OR2 C107 ( .A(dout_SegLenCnt[6]), .B(N142), .Z(N143) );
  GTECH_OR2 C108 ( .A(dout_SegLenCnt[5]), .B(N143), .Z(N144) );
  GTECH_OR2 C109 ( .A(dout_SegLenCnt[4]), .B(N144), .Z(N145) );
  GTECH_OR2 C110 ( .A(dout_SegLenCnt[3]), .B(N145), .Z(N146) );
  GTECH_OR2 C111 ( .A(dout_SegLenCnt[2]), .B(N146), .Z(N147) );
  GTECH_OR2 C112 ( .A(dout_SegLenCnt[1]), .B(N147), .Z(N148) );
  GTECH_OR2 C113 ( .A(dout_SegLenCnt[0]), .B(N148), .Z(N149) );
  GTECH_NOT I_6 ( .A(N149), .Z(N150) );
  GTECH_OR2 C116 ( .A(dout_SegLenCnt[14]), .B(dout_SegLenCnt[15]), .Z(N151) );
  GTECH_OR2 C117 ( .A(dout_SegLenCnt[13]), .B(N151), .Z(N152) );
  GTECH_OR2 C118 ( .A(dout_SegLenCnt[12]), .B(N152), .Z(N153) );
  GTECH_OR2 C119 ( .A(dout_SegLenCnt[11]), .B(N153), .Z(N154) );
  GTECH_OR2 C120 ( .A(dout_SegLenCnt[10]), .B(N154), .Z(N155) );
  GTECH_OR2 C121 ( .A(dout_SegLenCnt[9]), .B(N155), .Z(N156) );
  GTECH_OR2 C122 ( .A(dout_SegLenCnt[8]), .B(N156), .Z(N157) );
  GTECH_OR2 C123 ( .A(dout_SegLenCnt[7]), .B(N157), .Z(N158) );
  GTECH_OR2 C124 ( .A(dout_SegLenCnt[6]), .B(N158), .Z(N159) );
  GTECH_OR2 C125 ( .A(dout_SegLenCnt[5]), .B(N159), .Z(N160) );
  GTECH_OR2 C126 ( .A(dout_SegLenCnt[4]), .B(N160), .Z(N161) );
  GTECH_OR2 C127 ( .A(dout_SegLenCnt[3]), .B(N161), .Z(N162) );
  GTECH_OR2 C128 ( .A(dout_SegLenCnt[2]), .B(N162), .Z(N163) );
  GTECH_OR2 C129 ( .A(dout_SegLenCnt[1]), .B(N163), .Z(N164) );
  GTECH_OR2 C130 ( .A(N81), .B(N164), .Z(N165) );
  GTECH_NOT I_7 ( .A(N165), .Z(N166) );
  GTECH_OR2 C133 ( .A(dout_SegLenCnt[14]), .B(dout_SegLenCnt[15]), .Z(N167) );
  GTECH_OR2 C134 ( .A(dout_SegLenCnt[13]), .B(N167), .Z(N168) );
  GTECH_OR2 C135 ( .A(dout_SegLenCnt[12]), .B(N168), .Z(N169) );
  GTECH_OR2 C136 ( .A(dout_SegLenCnt[11]), .B(N169), .Z(N170) );
  GTECH_OR2 C137 ( .A(dout_SegLenCnt[10]), .B(N170), .Z(N171) );
  GTECH_OR2 C138 ( .A(dout_SegLenCnt[9]), .B(N171), .Z(N172) );
  GTECH_OR2 C139 ( .A(dout_SegLenCnt[8]), .B(N172), .Z(N173) );
  GTECH_OR2 C140 ( .A(dout_SegLenCnt[7]), .B(N173), .Z(N174) );
  GTECH_OR2 C141 ( .A(dout_SegLenCnt[6]), .B(N174), .Z(N175) );
  GTECH_OR2 C142 ( .A(dout_SegLenCnt[5]), .B(N175), .Z(N176) );
  GTECH_OR2 C143 ( .A(dout_SegLenCnt[4]), .B(N176), .Z(N177) );
  GTECH_OR2 C144 ( .A(dout_SegLenCnt[3]), .B(N177), .Z(N178) );
  GTECH_OR2 C145 ( .A(dout_SegLenCnt[2]), .B(N178), .Z(N179) );
  GTECH_OR2 C146 ( .A(N98), .B(N179), .Z(N180) );
  GTECH_OR2 C147 ( .A(dout_SegLenCnt[0]), .B(N180), .Z(N181) );
  GTECH_NOT I_8 ( .A(N181), .Z(N182) );
  GTECH_OR2 C151 ( .A(dout_SegLenCnt[14]), .B(dout_SegLenCnt[15]), .Z(N183) );
  GTECH_OR2 C152 ( .A(dout_SegLenCnt[13]), .B(N183), .Z(N184) );
  GTECH_OR2 C153 ( .A(dout_SegLenCnt[12]), .B(N184), .Z(N185) );
  GTECH_OR2 C154 ( .A(dout_SegLenCnt[11]), .B(N185), .Z(N186) );
  GTECH_OR2 C155 ( .A(dout_SegLenCnt[10]), .B(N186), .Z(N187) );
  GTECH_OR2 C156 ( .A(dout_SegLenCnt[9]), .B(N187), .Z(N188) );
  GTECH_OR2 C157 ( .A(dout_SegLenCnt[8]), .B(N188), .Z(N189) );
  GTECH_OR2 C158 ( .A(dout_SegLenCnt[7]), .B(N189), .Z(N190) );
  GTECH_OR2 C159 ( .A(dout_SegLenCnt[6]), .B(N190), .Z(N191) );
  GTECH_OR2 C160 ( .A(dout_SegLenCnt[5]), .B(N191), .Z(N192) );
  GTECH_OR2 C161 ( .A(dout_SegLenCnt[4]), .B(N192), .Z(N193) );
  GTECH_OR2 C162 ( .A(dout_SegLenCnt[3]), .B(N193), .Z(N194) );
  GTECH_OR2 C163 ( .A(dout_SegLenCnt[2]), .B(N194), .Z(N195) );
  GTECH_OR2 C164 ( .A(N98), .B(N195), .Z(N196) );
  GTECH_OR2 C165 ( .A(N81), .B(N196), .Z(N197) );
  GTECH_NOT I_9 ( .A(N197), .Z(N198) );
  \**SEQGEN**  hash_internal_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        N401), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(hash), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N426) );
  \**SEQGEN**  decrypt_internal_reg ( .clear(1'b0), .preset(1'b0), 
        .next_state(N399), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(decrypt), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N426) );
  \**SEQGEN**  eoi_flag_reg ( .clear(1'b0), .preset(1'b0), .next_state(cmd[26]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(eoi_flag), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N446)
         );
  \**SEQGEN**  eot_flag_reg ( .clear(1'b0), .preset(1'b0), .next_state(cmd[25]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(eot_flag), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(N446)
         );
  KEY_PISO_2 keyPISO ( .clk(clk), .rst(rst), .data_s(key), .data_valid_s(
        key_valid), .data_ready_s(key_ready), .data_p(sdi_data), 
        .data_valid_p(key_valid_p), .data_ready_p(key_ready_p) );
  DATA_PISO_2 bdiPISO ( .clk(clk), .rst(rst), .data_size_p(bdi_size_p), 
        .data_size_s(bdi_size), .data_s(bdi), .data_valid_s(bdi_valid), 
        .data_ready_s(bdi_ready), .data_p(cmd), .data_valid_p(bdi_valid_p), 
        .data_ready_p(bdi_ready_p), .valid_bytes_p(bdi_valid_bytes_p), 
        .valid_bytes_s(bdi_valid_bytes), .pad_loc_p(bdi_pad_loc_p), 
        .pad_loc_s(bdi_pad_loc), .eoi_p(bdi_eoi_internal), .eoi_s(bdi_eoi), 
        .eot_p(bdi_eot_internal), .eot_s(bdi_eot) );
  \**SEQGEN**  \pr_state_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N209), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(pr_state[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  \**SEQGEN**  \pr_state_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N208), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(pr_state[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  \**SEQGEN**  \pr_state_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N207), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(pr_state[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  \**SEQGEN**  \pr_state_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N206), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(pr_state[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        1'b1) );
  GTECH_AND2 C230 ( .A(N210), .B(N211), .Z(N214) );
  GTECH_AND2 C231 ( .A(N212), .B(N213), .Z(N215) );
  GTECH_AND2 C232 ( .A(N214), .B(N215), .Z(N216) );
  GTECH_OR2 C234 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N217) );
  GTECH_OR2 C235 ( .A(pr_state[1]), .B(N213), .Z(N218) );
  GTECH_OR2 C236 ( .A(N217), .B(N218), .Z(N219) );
  GTECH_OR2 C239 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N221) );
  GTECH_OR2 C240 ( .A(N212), .B(pr_state[0]), .Z(N222) );
  GTECH_OR2 C241 ( .A(N221), .B(N222), .Z(N223) );
  GTECH_OR2 C245 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N225) );
  GTECH_OR2 C246 ( .A(N212), .B(N213), .Z(N226) );
  GTECH_OR2 C247 ( .A(N225), .B(N226), .Z(N227) );
  GTECH_OR2 C250 ( .A(pr_state[3]), .B(N211), .Z(N229) );
  GTECH_OR2 C251 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N230) );
  GTECH_OR2 C252 ( .A(N229), .B(N230), .Z(N231) );
  GTECH_OR2 C256 ( .A(pr_state[3]), .B(N211), .Z(N233) );
  GTECH_OR2 C257 ( .A(pr_state[1]), .B(N213), .Z(N234) );
  GTECH_OR2 C258 ( .A(N233), .B(N234), .Z(N235) );
  GTECH_OR2 C262 ( .A(pr_state[3]), .B(N211), .Z(N237) );
  GTECH_OR2 C263 ( .A(N212), .B(pr_state[0]), .Z(N238) );
  GTECH_OR2 C264 ( .A(N237), .B(N238), .Z(N239) );
  GTECH_OR2 C269 ( .A(pr_state[3]), .B(N211), .Z(N241) );
  GTECH_OR2 C270 ( .A(N212), .B(N213), .Z(N242) );
  GTECH_OR2 C271 ( .A(N241), .B(N242), .Z(N243) );
  GTECH_OR2 C274 ( .A(N210), .B(pr_state[2]), .Z(N245) );
  GTECH_OR2 C275 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N246) );
  GTECH_OR2 C276 ( .A(N245), .B(N246), .Z(N247) );
  GTECH_OR2 C280 ( .A(N210), .B(pr_state[2]), .Z(N249) );
  GTECH_OR2 C281 ( .A(pr_state[1]), .B(N213), .Z(N250) );
  GTECH_OR2 C282 ( .A(N249), .B(N250), .Z(N251) );
  GTECH_OR2 C286 ( .A(N210), .B(pr_state[2]), .Z(N253) );
  GTECH_OR2 C287 ( .A(N212), .B(pr_state[0]), .Z(N254) );
  GTECH_OR2 C288 ( .A(N253), .B(N254), .Z(N255) );
  GTECH_OR2 C293 ( .A(N210), .B(pr_state[2]), .Z(N257) );
  GTECH_OR2 C294 ( .A(N212), .B(N213), .Z(N258) );
  GTECH_OR2 C295 ( .A(N257), .B(N258), .Z(N259) );
  GTECH_OR2 C299 ( .A(N210), .B(N211), .Z(N261) );
  GTECH_OR2 C300 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N262) );
  GTECH_OR2 C301 ( .A(N261), .B(N262), .Z(N263) );
  GTECH_OR2 C306 ( .A(N210), .B(N211), .Z(N265) );
  GTECH_OR2 C307 ( .A(pr_state[1]), .B(N213), .Z(N266) );
  GTECH_OR2 C308 ( .A(N265), .B(N266), .Z(N267) );
  GTECH_OR2 C313 ( .A(N210), .B(N211), .Z(N269) );
  GTECH_OR2 C314 ( .A(N212), .B(pr_state[0]), .Z(N270) );
  GTECH_OR2 C315 ( .A(N269), .B(N270), .Z(N271) );
  GTECH_AND2 C317 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N273) );
  GTECH_AND2 C318 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N274) );
  GTECH_AND2 C319 ( .A(N273), .B(N274), .Z(N275) );
  GTECH_AND2 C619 ( .A(N210), .B(N211), .Z(N329) );
  GTECH_AND2 C620 ( .A(N212), .B(N213), .Z(N330) );
  GTECH_AND2 C621 ( .A(N329), .B(N330), .Z(N331) );
  GTECH_OR2 C623 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N332) );
  GTECH_OR2 C624 ( .A(pr_state[1]), .B(N213), .Z(N333) );
  GTECH_OR2 C625 ( .A(N332), .B(N333), .Z(N334) );
  GTECH_OR2 C628 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N336) );
  GTECH_OR2 C629 ( .A(N212), .B(pr_state[0]), .Z(N337) );
  GTECH_OR2 C630 ( .A(N336), .B(N337), .Z(N338) );
  GTECH_OR2 C634 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N340) );
  GTECH_OR2 C635 ( .A(N212), .B(N213), .Z(N341) );
  GTECH_OR2 C636 ( .A(N340), .B(N341), .Z(N342) );
  GTECH_OR2 C639 ( .A(pr_state[3]), .B(N211), .Z(N344) );
  GTECH_OR2 C640 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N345) );
  GTECH_OR2 C641 ( .A(N344), .B(N345), .Z(N346) );
  GTECH_OR2 C645 ( .A(pr_state[3]), .B(N211), .Z(N348) );
  GTECH_OR2 C646 ( .A(pr_state[1]), .B(N213), .Z(N349) );
  GTECH_OR2 C647 ( .A(N348), .B(N349), .Z(N350) );
  GTECH_OR2 C651 ( .A(pr_state[3]), .B(N211), .Z(N352) );
  GTECH_OR2 C652 ( .A(N212), .B(pr_state[0]), .Z(N353) );
  GTECH_OR2 C653 ( .A(N352), .B(N353), .Z(N354) );
  GTECH_OR2 C658 ( .A(pr_state[3]), .B(N211), .Z(N356) );
  GTECH_OR2 C659 ( .A(N212), .B(N213), .Z(N357) );
  GTECH_OR2 C660 ( .A(N356), .B(N357), .Z(N358) );
  GTECH_OR2 C663 ( .A(N210), .B(pr_state[2]), .Z(N360) );
  GTECH_OR2 C664 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N361) );
  GTECH_OR2 C665 ( .A(N360), .B(N361), .Z(N362) );
  GTECH_OR2 C669 ( .A(N210), .B(pr_state[2]), .Z(N364) );
  GTECH_OR2 C670 ( .A(pr_state[1]), .B(N213), .Z(N365) );
  GTECH_OR2 C671 ( .A(N364), .B(N365), .Z(N366) );
  GTECH_OR2 C675 ( .A(N210), .B(pr_state[2]), .Z(N368) );
  GTECH_OR2 C676 ( .A(N212), .B(pr_state[0]), .Z(N369) );
  GTECH_OR2 C677 ( .A(N368), .B(N369), .Z(N370) );
  GTECH_OR2 C682 ( .A(N210), .B(pr_state[2]), .Z(N372) );
  GTECH_OR2 C683 ( .A(N212), .B(N213), .Z(N373) );
  GTECH_OR2 C684 ( .A(N372), .B(N373), .Z(N374) );
  GTECH_OR2 C688 ( .A(N210), .B(N211), .Z(N376) );
  GTECH_OR2 C689 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N377) );
  GTECH_OR2 C690 ( .A(N376), .B(N377), .Z(N378) );
  GTECH_OR2 C695 ( .A(N210), .B(N211), .Z(N380) );
  GTECH_OR2 C696 ( .A(pr_state[1]), .B(N213), .Z(N381) );
  GTECH_OR2 C697 ( .A(N380), .B(N381), .Z(N382) );
  GTECH_OR2 C702 ( .A(N210), .B(N211), .Z(N384) );
  GTECH_OR2 C703 ( .A(N212), .B(pr_state[0]), .Z(N385) );
  GTECH_OR2 C704 ( .A(N384), .B(N385), .Z(N386) );
  GTECH_AND2 C706 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N388) );
  GTECH_AND2 C707 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N389) );
  GTECH_AND2 C708 ( .A(N388), .B(N389), .Z(N390) );
  GTECH_NOT I_10 ( .A(cmd[31]), .Z(N447) );
  GTECH_OR2 C923 ( .A(cmd[30]), .B(N447), .Z(N448) );
  GTECH_OR2 C924 ( .A(cmd[29]), .B(N448), .Z(N449) );
  GTECH_OR2 C925 ( .A(cmd[28]), .B(N449), .Z(N450) );
  GTECH_NOT I_11 ( .A(N450), .Z(N451) );
  GTECH_OR2 C927 ( .A(cmd[14]), .B(cmd[15]), .Z(N452) );
  GTECH_OR2 C928 ( .A(cmd[13]), .B(N452), .Z(N453) );
  GTECH_OR2 C929 ( .A(cmd[12]), .B(N453), .Z(N454) );
  GTECH_OR2 C930 ( .A(cmd[11]), .B(N454), .Z(N455) );
  GTECH_OR2 C931 ( .A(cmd[10]), .B(N455), .Z(N456) );
  GTECH_OR2 C932 ( .A(cmd[9]), .B(N456), .Z(N457) );
  GTECH_OR2 C933 ( .A(cmd[8]), .B(N457), .Z(N458) );
  GTECH_OR2 C934 ( .A(cmd[7]), .B(N458), .Z(N459) );
  GTECH_OR2 C935 ( .A(cmd[6]), .B(N459), .Z(N460) );
  GTECH_OR2 C936 ( .A(cmd[5]), .B(N460), .Z(N461) );
  GTECH_OR2 C937 ( .A(cmd[4]), .B(N461), .Z(N462) );
  GTECH_OR2 C938 ( .A(cmd[3]), .B(N462), .Z(N463) );
  GTECH_OR2 C939 ( .A(cmd[2]), .B(N463), .Z(N464) );
  GTECH_OR2 C940 ( .A(cmd[1]), .B(N464), .Z(N465) );
  GTECH_OR2 C941 ( .A(cmd[0]), .B(N465), .Z(N466) );
  GTECH_NOT I_12 ( .A(N466), .Z(N467) );
  GTECH_OR2 C943 ( .A(cmd[14]), .B(cmd[15]), .Z(N468) );
  GTECH_OR2 C944 ( .A(cmd[13]), .B(N468), .Z(N469) );
  GTECH_OR2 C945 ( .A(cmd[12]), .B(N469), .Z(N470) );
  GTECH_OR2 C946 ( .A(cmd[11]), .B(N470), .Z(N471) );
  GTECH_OR2 C947 ( .A(cmd[10]), .B(N471), .Z(N472) );
  GTECH_OR2 C948 ( .A(cmd[9]), .B(N472), .Z(N473) );
  GTECH_OR2 C949 ( .A(cmd[8]), .B(N473), .Z(N474) );
  GTECH_OR2 C950 ( .A(cmd[7]), .B(N474), .Z(N475) );
  GTECH_OR2 C951 ( .A(cmd[6]), .B(N475), .Z(N476) );
  GTECH_OR2 C952 ( .A(cmd[5]), .B(N476), .Z(N477) );
  GTECH_OR2 C953 ( .A(cmd[4]), .B(N477), .Z(N478) );
  GTECH_OR2 C954 ( .A(cmd[3]), .B(N478), .Z(N479) );
  GTECH_OR2 C955 ( .A(cmd[2]), .B(N479), .Z(N480) );
  GTECH_OR2 C956 ( .A(cmd[1]), .B(N480), .Z(N481) );
  GTECH_OR2 C957 ( .A(cmd[0]), .B(N481), .Z(N482) );
  GTECH_NOT I_13 ( .A(N482), .Z(N483) );
  GTECH_OR2 C959 ( .A(cmd[14]), .B(cmd[15]), .Z(N484) );
  GTECH_OR2 C960 ( .A(cmd[13]), .B(N484), .Z(N485) );
  GTECH_OR2 C961 ( .A(cmd[12]), .B(N485), .Z(N486) );
  GTECH_OR2 C962 ( .A(cmd[11]), .B(N486), .Z(N487) );
  GTECH_OR2 C963 ( .A(cmd[10]), .B(N487), .Z(N488) );
  GTECH_OR2 C964 ( .A(cmd[9]), .B(N488), .Z(N489) );
  GTECH_OR2 C965 ( .A(cmd[8]), .B(N489), .Z(N490) );
  GTECH_OR2 C966 ( .A(cmd[7]), .B(N490), .Z(N491) );
  GTECH_OR2 C967 ( .A(cmd[6]), .B(N491), .Z(N492) );
  GTECH_OR2 C968 ( .A(cmd[5]), .B(N492), .Z(N493) );
  GTECH_OR2 C969 ( .A(cmd[4]), .B(N493), .Z(N494) );
  GTECH_OR2 C970 ( .A(cmd[3]), .B(N494), .Z(N495) );
  GTECH_OR2 C971 ( .A(cmd[2]), .B(N495), .Z(N496) );
  GTECH_OR2 C972 ( .A(cmd[1]), .B(N496), .Z(N497) );
  GTECH_OR2 C973 ( .A(cmd[0]), .B(N497), .Z(N498) );
  GTECH_NOT I_14 ( .A(N498), .Z(N499) );
  GTECH_OR2 C976 ( .A(cmd[30]), .B(N447), .Z(N500) );
  GTECH_OR2 C977 ( .A(cmd[29]), .B(N500), .Z(N501) );
  GTECH_OR2 C978 ( .A(cmd[28]), .B(N501), .Z(N502) );
  GTECH_NOT I_15 ( .A(N502), .Z(N503) );
  GTECH_NOT I_16 ( .A(cmd[29]), .Z(N504) );
  GTECH_OR2 C981 ( .A(cmd[30]), .B(cmd[31]), .Z(N505) );
  GTECH_OR2 C982 ( .A(N504), .B(N505), .Z(N506) );
  GTECH_OR2 C983 ( .A(cmd[28]), .B(N506), .Z(N507) );
  GTECH_NOT I_17 ( .A(N507), .Z(N508) );
  GTECH_NOT I_18 ( .A(cmd[28]), .Z(N509) );
  GTECH_OR2 C987 ( .A(cmd[30]), .B(cmd[31]), .Z(N510) );
  GTECH_OR2 C988 ( .A(N504), .B(N510), .Z(N511) );
  GTECH_OR2 C989 ( .A(N509), .B(N511), .Z(N512) );
  GTECH_NOT I_19 ( .A(N512), .Z(N513) );
  GTECH_OR2 C992 ( .A(cmd[30]), .B(cmd[31]), .Z(N514) );
  GTECH_OR2 C993 ( .A(N504), .B(N514), .Z(N515) );
  GTECH_OR2 C994 ( .A(cmd[28]), .B(N515), .Z(N516) );
  GTECH_NOT I_20 ( .A(N516), .Z(N517) );
  GTECH_OR2 C998 ( .A(cmd[30]), .B(cmd[31]), .Z(N518) );
  GTECH_OR2 C999 ( .A(N504), .B(N518), .Z(N519) );
  GTECH_OR2 C1000 ( .A(N509), .B(N519), .Z(N520) );
  GTECH_NOT I_21 ( .A(N520), .Z(N521) );
  GTECH_NOT I_22 ( .A(cmd[30]), .Z(N522) );
  GTECH_OR2 C1005 ( .A(N522), .B(cmd[31]), .Z(N523) );
  GTECH_OR2 C1006 ( .A(N504), .B(N523), .Z(N524) );
  GTECH_OR2 C1007 ( .A(N509), .B(N524), .Z(N525) );
  GTECH_NOT I_23 ( .A(N525), .Z(N526) );
  SELECT_OP C1009 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({1'b1, 1'b0, 1'b0, 
        1'b0}), .DATA3({1'b1, 1'b1, 1'b0, 1'b0}), .DATA4({1'b1, 1'b1, 1'b1, 
        1'b0}), .DATA5({1'b1, 1'b1, 1'b1, 1'b1}), .CONTROL1(N0), .CONTROL2(N1), 
        .CONTROL3(N2), .CONTROL4(N3), .CONTROL5(N134), .Z(bdi_valid_bytes_p)
         );
  GTECH_BUF B_0 ( .A(N80), .Z(N0) );
  GTECH_BUF B_1 ( .A(N97), .Z(N1) );
  GTECH_BUF B_2 ( .A(N114), .Z(N2) );
  GTECH_BUF B_3 ( .A(N130), .Z(N3) );
  SELECT_OP C1010 ( .DATA1({1'b1, 1'b0, 1'b0, 1'b0}), .DATA2({1'b0, 1'b1, 1'b0, 
        1'b0}), .DATA3({1'b0, 1'b0, 1'b1, 1'b0}), .DATA4({1'b0, 1'b0, 1'b0, 
        1'b1}), .DATA5({1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N4), .CONTROL2(N5), 
        .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N202), .Z(bdi_pad_loc_p) );
  GTECH_BUF B_4 ( .A(N150), .Z(N4) );
  GTECH_BUF B_5 ( .A(N166), .Z(N5) );
  GTECH_BUF B_6 ( .A(N182), .Z(N6) );
  GTECH_BUF B_7 ( .A(N198), .Z(N7) );
  SELECT_OP C1011 ( .DATA1(sdi_data[15:0]), .DATA2(cmd[15:0]), .CONTROL1(N8), 
        .CONTROL2(N9), .Z(load_SegLenCnt) );
  GTECH_BUF B_8 ( .A(sel_sdi_length), .Z(N8) );
  GTECH_BUF B_9 ( .A(N203), .Z(N9) );
  SELECT_OP C1012 ( .DATA1(dout_SegLenCnt[2:0]), .DATA2({1'b1, 1'b0, 1'b0}), 
        .CONTROL1(N10), .CONTROL2(N11), .Z(bdi_size_p) );
  GTECH_BUF B_10 ( .A(last_flit_of_segment), .Z(N10) );
  GTECH_BUF B_11 ( .A(N204), .Z(N11) );
  SELECT_OP C1013 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(nx_state), 
        .CONTROL1(N12), .CONTROL2(N13), .Z({N209, N208, N207, N206}) );
  GTECH_BUF B_12 ( .A(rst), .Z(N12) );
  GTECH_BUF B_13 ( .A(N205), .Z(N13) );
  SELECT_OP C1014 ( .DATA1({1'b0, 1'b1}), .DATA2({N278, N278}), .CONTROL1(N14), 
        .CONTROL2(N277), .Z({N280, N279}) );
  GTECH_BUF B_14 ( .A(N276), .Z(N14) );
  SELECT_OP C1015 ( .DATA1({1'b0, 1'b0}), .DATA2({N280, N279}), .CONTROL1(N15), 
        .CONTROL2(N16), .Z({N282, N281}) );
  GTECH_BUF B_15 ( .A(N526), .Z(N15) );
  GTECH_BUF B_16 ( .A(N525), .Z(N16) );
  SELECT_OP C1016 ( .DATA1({N282, N281, N526}), .DATA2({1'b0, 1'b0, 1'b0}), 
        .CONTROL1(N17), .CONTROL2(N18), .Z({N285, N284, N283}) );
  GTECH_BUF B_17 ( .A(pdi_valid), .Z(N17) );
  GTECH_BUF B_18 ( .A(N393), .Z(N18) );
  GTECH_NOT I_24 ( .A(N287), .Z(N288) );
  GTECH_NOT I_25 ( .A(N289), .Z(N290) );
  GTECH_NOT I_26 ( .A(N291), .Z(N292) );
  SELECT_OP C1020 ( .DATA1({N291, N292, N292}), .DATA2({1'b0, 1'b1, 1'b0}), 
        .CONTROL1(N17), .CONTROL2(N18), .Z({N295, N294, N293}) );
  GTECH_NOT I_27 ( .A(N296), .Z(N299) );
  SELECT_OP C1022 ( .DATA1({eot_flag, N298}), .DATA2({1'b0, 1'b1}), .CONTROL1(
        N19), .CONTROL2(N297), .Z({N301, N300}) );
  GTECH_BUF B_19 ( .A(N296), .Z(N19) );
  GTECH_NOT I_28 ( .A(N304), .Z(N306) );
  SELECT_OP C1024 ( .DATA1({decrypt, decrypt}), .DATA2({1'b1, 1'b0}), 
        .CONTROL1(N20), .CONTROL2(N305), .Z({N308, N307}) );
  GTECH_BUF B_20 ( .A(N304), .Z(N20) );
  SELECT_OP C1025 ( .DATA1({N308, N307, N306}), .DATA2({1'b1, 1'b0, 1'b0}), 
        .CONTROL1(N21), .CONTROL2(N303), .Z({N311, N310, N309}) );
  GTECH_BUF B_21 ( .A(N302), .Z(N21) );
  SELECT_OP C1026 ( .DATA1({decrypt, decrypt}), .DATA2({1'b1, 1'b0}), 
        .CONTROL1(N22), .CONTROL2(N23), .Z({N315, N314}) );
  GTECH_BUF B_22 ( .A(eot_flag), .Z(N22) );
  GTECH_BUF B_23 ( .A(N298), .Z(N23) );
  GTECH_NOT I_29 ( .A(N312), .Z(N316) );
  SELECT_OP C1028 ( .DATA1({N315, N314}), .DATA2({1'b1, 1'b0}), .CONTROL1(N24), 
        .CONTROL2(N313), .Z({N318, N317}) );
  GTECH_BUF B_24 ( .A(N312), .Z(N24) );
  SELECT_OP C1029 ( .DATA1(N328), .DATA2(1'b1), .CONTROL1(N25), .CONTROL2(N320), .Z(N321) );
  GTECH_BUF B_25 ( .A(N319), .Z(N25) );
  SELECT_OP C1031 ( .DATA1({N467, N466}), .DATA2({1'b0, 1'b0}), .CONTROL1(N17), 
        .CONTROL2(N18), .Z({N323, N322}) );
  GTECH_NOT I_30 ( .A(N324), .Z(N326) );
  SELECT_OP C1033 ( .DATA1(N298), .DATA2(1'b1), .CONTROL1(N26), .CONTROL2(N325), .Z(N327) );
  GTECH_BUF B_26 ( .A(N324), .Z(N26) );
  SELECT_OP C1034 ( .DATA1({N285, N284, 1'b0, N283}), .DATA2({1'b0, 1'b0, 
        sdi_valid, N286}), .DATA3({1'b0, 1'b0, 1'b1, sdi_valid}), .DATA4({1'b0, 
        1'b0, N288, N288}), .DATA5({1'b0, 1'b1, 1'b0, pdi_valid}), .DATA6({
        1'b0, 1'b1, N289, N290}), .DATA7({N295, N294, N294, N293}), .DATA8({
        N301, N300, N300, N299}), .DATA9({N311, 1'b0, N310, N309}), .DATA10({
        N318, 1'b0, N317, N316}), .DATA11({1'b1, 1'b0, 1'b1, pdi_valid}), 
        .DATA12({N321, 1'b0, N321, N321}), .DATA13({1'b1, 1'b1, N323, N322}), 
        .DATA14({N327, N327, 1'b0, N326}), .DATA15({N328, N328, N328, 1'b0}), 
        .DATA16({1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N27), .CONTROL2(N28), 
        .CONTROL3(N29), .CONTROL4(N30), .CONTROL5(N31), .CONTROL6(N32), 
        .CONTROL7(N33), .CONTROL8(N34), .CONTROL9(N35), .CONTROL10(N36), 
        .CONTROL11(N37), .CONTROL12(N38), .CONTROL13(N39), .CONTROL14(N40), 
        .CONTROL15(N41), .CONTROL16(N42), .Z(nx_state) );
  GTECH_BUF B_27 ( .A(N216), .Z(N27) );
  GTECH_BUF B_28 ( .A(N220), .Z(N28) );
  GTECH_BUF B_29 ( .A(N224), .Z(N29) );
  GTECH_BUF B_30 ( .A(N228), .Z(N30) );
  GTECH_BUF B_31 ( .A(N232), .Z(N31) );
  GTECH_BUF B_32 ( .A(N236), .Z(N32) );
  GTECH_BUF B_33 ( .A(N240), .Z(N33) );
  GTECH_BUF B_34 ( .A(N244), .Z(N34) );
  GTECH_BUF B_35 ( .A(N248), .Z(N35) );
  GTECH_BUF B_36 ( .A(N252), .Z(N36) );
  GTECH_BUF B_37 ( .A(N256), .Z(N37) );
  GTECH_BUF B_38 ( .A(N260), .Z(N38) );
  GTECH_BUF B_39 ( .A(N264), .Z(N39) );
  GTECH_BUF B_40 ( .A(N268), .Z(N40) );
  GTECH_BUF B_41 ( .A(N272), .Z(N41) );
  GTECH_BUF B_42 ( .A(N275), .Z(N42) );
  SELECT_OP C1035 ( .DATA1(cmd[28]), .DATA2(decrypt), .CONTROL1(N17), 
        .CONTROL2(N18), .Z(N394) );
  SELECT_OP C1036 ( .DATA1(cmd_ready), .DATA2(1'b1), .CONTROL1(N17), 
        .CONTROL2(N18), .Z(N395) );
  SELECT_OP C1037 ( .DATA1(N395), .DATA2(1'b1), .CONTROL1(N43), .CONTROL2(N44), 
        .Z(N396) );
  GTECH_BUF B_43 ( .A(N451), .Z(N43) );
  GTECH_BUF B_44 ( .A(N450), .Z(N44) );
  SELECT_OP C1038 ( .DATA1(pdi_valid), .DATA2(1'b0), .CONTROL1(N43), 
        .CONTROL2(N44), .Z(N397) );
  SELECT_OP C1039 ( .DATA1(N395), .DATA2(N396), .CONTROL1(N45), .CONTROL2(N392), .Z(N398) );
  GTECH_BUF B_45 ( .A(N391), .Z(N45) );
  SELECT_OP C1040 ( .DATA1(N394), .DATA2(decrypt), .CONTROL1(N45), .CONTROL2(
        N392), .Z(N399) );
  SELECT_OP C1041 ( .DATA1(pdi_valid), .DATA2(N397), .CONTROL1(N45), 
        .CONTROL2(N392), .Z(N400) );
  SELECT_OP C1042 ( .DATA1(1'b0), .DATA2(N397), .CONTROL1(N45), .CONTROL2(N392), .Z(N401) );
  SELECT_OP C1043 ( .DATA1(pdi_valid), .DATA2(1'b0), .CONTROL1(N46), 
        .CONTROL2(N47), .Z(N408) );
  GTECH_BUF B_46 ( .A(decrypt), .Z(N46) );
  GTECH_BUF B_47 ( .A(N406), .Z(N47) );
  SELECT_OP C1044 ( .DATA1(bdi_ready_p), .DATA2(1'b0), .CONTROL1(N46), 
        .CONTROL2(N47), .Z(N409) );
  SELECT_OP C1045 ( .DATA1(N407), .DATA2(1'b0), .CONTROL1(N46), .CONTROL2(N47), 
        .Z(N410) );
  SELECT_OP C1046 ( .DATA1(N398), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b1), .DATA6(bdi_ready_p), .DATA7(1'b1), .DATA8(bdi_ready_p), 
        .DATA9(cmd_ready), .DATA10(bdi_ready_p), .DATA11(1'b1), .DATA12(N409), 
        .DATA13(1'b1), .DATA14(bdi_ready_p), .DATA15(1'b0), .DATA16(1'b0), 
        .CONTROL1(N48), .CONTROL2(N49), .CONTROL3(N50), .CONTROL4(N51), 
        .CONTROL5(N52), .CONTROL6(N53), .CONTROL7(N54), .CONTROL8(N55), 
        .CONTROL9(N56), .CONTROL10(N57), .CONTROL11(N58), .CONTROL12(N59), 
        .CONTROL13(N60), .CONTROL14(N61), .CONTROL15(N62), .CONTROL16(N63), 
        .Z(pdi_ready) );
  GTECH_BUF B_48 ( .A(N331), .Z(N48) );
  GTECH_BUF B_49 ( .A(N335), .Z(N49) );
  GTECH_BUF B_50 ( .A(N339), .Z(N50) );
  GTECH_BUF B_51 ( .A(N343), .Z(N51) );
  GTECH_BUF B_52 ( .A(N347), .Z(N52) );
  GTECH_BUF B_53 ( .A(N351), .Z(N53) );
  GTECH_BUF B_54 ( .A(N355), .Z(N54) );
  GTECH_BUF B_55 ( .A(N359), .Z(N55) );
  GTECH_BUF B_56 ( .A(N363), .Z(N56) );
  GTECH_BUF B_57 ( .A(N367), .Z(N57) );
  GTECH_BUF B_58 ( .A(N371), .Z(N58) );
  GTECH_BUF B_59 ( .A(N375), .Z(N59) );
  GTECH_BUF B_60 ( .A(N379), .Z(N60) );
  GTECH_BUF B_61 ( .A(N383), .Z(N61) );
  GTECH_BUF B_62 ( .A(N387), .Z(N62) );
  GTECH_BUF B_63 ( .A(N390), .Z(N63) );
  SELECT_OP C1047 ( .DATA1(N400), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(
        pdi_valid), .DATA10(1'b0), .DATA11(1'b0), .DATA12(1'b0), .DATA13(1'b0), 
        .DATA14(1'b0), .DATA15(1'b0), .DATA16(1'b0), .CONTROL1(N48), 
        .CONTROL2(N49), .CONTROL3(N50), .CONTROL4(N51), .CONTROL5(N52), 
        .CONTROL6(N53), .CONTROL7(N54), .CONTROL8(N55), .CONTROL9(N56), 
        .CONTROL10(N57), .CONTROL11(N58), .CONTROL12(N59), .CONTROL13(N60), 
        .CONTROL14(N61), .CONTROL15(N62), .CONTROL16(N63), .Z(cmd_valid) );
  SELECT_OP C1048 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(
        key_ready_p), .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), 
        .DATA9(1'b0), .DATA10(1'b0), .DATA11(1'b0), .DATA12(1'b0), .DATA13(
        1'b0), .DATA14(1'b0), .DATA15(1'b0), .DATA16(1'b0), .CONTROL1(N48), 
        .CONTROL2(N49), .CONTROL3(N50), .CONTROL4(N51), .CONTROL5(N52), 
        .CONTROL6(N53), .CONTROL7(N54), .CONTROL8(N55), .CONTROL9(N56), 
        .CONTROL10(N57), .CONTROL11(N58), .CONTROL12(N59), .CONTROL13(N60), 
        .CONTROL14(N61), .CONTROL15(N62), .CONTROL16(N63), .Z(sdi_ready) );
  SELECT_OP C1049 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b1), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b0), .DATA11(1'b0), .DATA12(1'b0), .DATA13(1'b0), .DATA14(
        1'b0), .DATA15(1'b0), .DATA16(1'b0), .CONTROL1(N48), .CONTROL2(N49), 
        .CONTROL3(N50), .CONTROL4(N51), .CONTROL5(N52), .CONTROL6(N53), 
        .CONTROL7(N54), .CONTROL8(N55), .CONTROL9(N56), .CONTROL10(N57), 
        .CONTROL11(N58), .CONTROL12(N59), .CONTROL13(N60), .CONTROL14(N61), 
        .CONTROL15(N62), .CONTROL16(N63), .Z(key_update) );
  SELECT_OP C1050 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(sdi_valid), .DATA4(1'b0), .DATA5(pdi_valid), .DATA6(1'b0), .DATA7(pdi_valid), .DATA8(1'b0), .DATA9(
        N302), .DATA10(1'b0), .DATA11(pdi_valid), .DATA12(1'b0), .DATA13(
        pdi_valid), .DATA14(1'b0), .DATA15(1'b0), .DATA16(1'b0), .CONTROL1(N48), .CONTROL2(N49), .CONTROL3(N50), .CONTROL4(N51), .CONTROL5(N52), .CONTROL6(
        N53), .CONTROL7(N54), .CONTROL8(N55), .CONTROL9(N56), .CONTROL10(N57), 
        .CONTROL11(N58), .CONTROL12(N59), .CONTROL13(N60), .CONTROL14(N61), 
        .CONTROL15(N62), .CONTROL16(N63), .Z(len_SegLenCnt) );
  SELECT_OP C1051 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b1), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b0), .DATA11(1'b0), .DATA12(1'b0), .DATA13(1'b0), .DATA14(
        1'b0), .DATA15(1'b0), .DATA16(1'b0), .CONTROL1(N48), .CONTROL2(N49), 
        .CONTROL3(N50), .CONTROL4(N51), .CONTROL5(N52), .CONTROL6(N53), 
        .CONTROL7(N54), .CONTROL8(N55), .CONTROL9(N56), .CONTROL10(N57), 
        .CONTROL11(N58), .CONTROL12(N59), .CONTROL13(N60), .CONTROL14(N61), 
        .CONTROL15(N62), .CONTROL16(N63), .Z(sel_sdi_length) );
  SELECT_OP C1052 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(sdi_valid), .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b0), .DATA11(1'b0), .DATA12(1'b0), .DATA13(1'b0), .DATA14(
        1'b0), .DATA15(1'b0), .DATA16(1'b0), .CONTROL1(N48), .CONTROL2(N49), 
        .CONTROL3(N50), .CONTROL4(N51), .CONTROL5(N52), .CONTROL6(N53), 
        .CONTROL7(N54), .CONTROL8(N55), .CONTROL9(N56), .CONTROL10(N57), 
        .CONTROL11(N58), .CONTROL12(N59), .CONTROL13(N60), .CONTROL14(N61), 
        .CONTROL15(N62), .CONTROL16(N63), .Z(key_valid_p) );
  SELECT_OP C1053 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(N402), 
        .DATA5(1'b0), .DATA6(N403), .DATA7(1'b0), .DATA8(N404), .DATA9(1'b0), 
        .DATA10(N405), .DATA11(1'b0), .DATA12(N410), .DATA13(1'b0), .DATA14(
        N411), .DATA15(1'b0), .DATA16(1'b0), .CONTROL1(N48), .CONTROL2(N49), 
        .CONTROL3(N50), .CONTROL4(N51), .CONTROL5(N52), .CONTROL6(N53), 
        .CONTROL7(N54), .CONTROL8(N55), .CONTROL9(N56), .CONTROL10(N57), 
        .CONTROL11(N58), .CONTROL12(N59), .CONTROL13(N60), .CONTROL14(N61), 
        .CONTROL15(N62), .CONTROL16(N63), .Z(en_SegLenCnt) );
  SELECT_OP C1054 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(pdi_valid), .DATA7(1'b0), .DATA8(pdi_valid), 
        .DATA9(1'b0), .DATA10(pdi_valid), .DATA11(1'b0), .DATA12(N408), 
        .DATA13(1'b0), .DATA14(pdi_valid), .DATA15(1'b1), .DATA16(1'b0), 
        .CONTROL1(N48), .CONTROL2(N49), .CONTROL3(N50), .CONTROL4(N51), 
        .CONTROL5(N52), .CONTROL6(N53), .CONTROL7(N54), .CONTROL8(N55), 
        .CONTROL9(N56), .CONTROL10(N57), .CONTROL11(N58), .CONTROL12(N59), 
        .CONTROL13(N60), .CONTROL14(N61), .CONTROL15(N62), .CONTROL16(N63), 
        .Z(bdi_valid_p) );
  SELECT_OP C1055 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({1'b0, 1'b0, 1'b0, 
        1'b0}), .DATA3({1'b0, 1'b0, 1'b0, 1'b0}), .DATA4({1'b0, 1'b0, 1'b0, 
        1'b0}), .DATA5({1'b0, 1'b0, 1'b0, 1'b0}), .DATA6({1'b1, 1'b1, 1'b0, 
        1'b1}), .DATA7({1'b0, 1'b0, 1'b0, 1'b0}), .DATA8({1'b0, 1'b0, 1'b0, 
        1'b1}), .DATA9({1'b0, 1'b0, 1'b0, 1'b0}), .DATA10({1'b0, 1'b1, 1'b0, 
        decrypt}), .DATA11({1'b0, 1'b0, 1'b0, 1'b0}), .DATA12({1'b1, 1'b0, 
        1'b0, 1'b0}), .DATA13({1'b0, 1'b0, 1'b0, 1'b0}), .DATA14({1'b0, 1'b1, 
        1'b1, 1'b1}), .DATA15({1'b0, 1'b1, 1'b1, 1'b1}), .DATA16({1'b0, 1'b0, 
        1'b0, 1'b0}), .CONTROL1(N48), .CONTROL2(N49), .CONTROL3(N50), 
        .CONTROL4(N51), .CONTROL5(N52), .CONTROL6(N53), .CONTROL7(N54), 
        .CONTROL8(N55), .CONTROL9(N56), .CONTROL10(N57), .CONTROL11(N58), 
        .CONTROL12(N59), .CONTROL13(N60), .CONTROL14(N61), .CONTROL15(N62), 
        .CONTROL16(N63), .Z(bdi_type) );
  GTECH_BUF B_64 ( .A(N64), .Z(last_flit_of_segment) );
  GTECH_OR2 C1063 ( .A(N97), .B(N80), .Z(N131) );
  GTECH_OR2 C1064 ( .A(N114), .B(N131), .Z(N132) );
  GTECH_OR2 C1065 ( .A(N130), .B(N132), .Z(N133) );
  GTECH_NOT I_31 ( .A(N133), .Z(N134) );
  GTECH_OR2 C1071 ( .A(N166), .B(N150), .Z(N199) );
  GTECH_OR2 C1072 ( .A(N182), .B(N199), .Z(N200) );
  GTECH_OR2 C1073 ( .A(N198), .B(N200), .Z(N201) );
  GTECH_NOT I_32 ( .A(N201), .Z(N202) );
  GTECH_NOT I_33 ( .A(sel_sdi_length), .Z(N203) );
  GTECH_NOT I_34 ( .A(last_flit_of_segment), .Z(N204) );
  GTECH_AND2 C1081 ( .A(eoi_flag), .B(last_flit_of_segment), .Z(
        bdi_eoi_internal) );
  GTECH_AND2 C1082 ( .A(eot_flag), .B(last_flit_of_segment), .Z(
        bdi_eot_internal) );
  GTECH_NOT I_35 ( .A(rst), .Z(N205) );
  GTECH_NOT I_36 ( .A(pr_state[3]), .Z(N210) );
  GTECH_NOT I_37 ( .A(pr_state[2]), .Z(N211) );
  GTECH_NOT I_38 ( .A(pr_state[1]), .Z(N212) );
  GTECH_NOT I_39 ( .A(pr_state[0]), .Z(N213) );
  GTECH_NOT I_40 ( .A(N219), .Z(N220) );
  GTECH_NOT I_41 ( .A(N223), .Z(N224) );
  GTECH_NOT I_42 ( .A(N227), .Z(N228) );
  GTECH_NOT I_43 ( .A(N231), .Z(N232) );
  GTECH_NOT I_44 ( .A(N235), .Z(N236) );
  GTECH_NOT I_45 ( .A(N239), .Z(N240) );
  GTECH_NOT I_46 ( .A(N243), .Z(N244) );
  GTECH_NOT I_47 ( .A(N247), .Z(N248) );
  GTECH_NOT I_48 ( .A(N251), .Z(N252) );
  GTECH_NOT I_49 ( .A(N255), .Z(N256) );
  GTECH_NOT I_50 ( .A(N259), .Z(N260) );
  GTECH_NOT I_51 ( .A(N263), .Z(N264) );
  GTECH_NOT I_52 ( .A(N267), .Z(N268) );
  GTECH_NOT I_53 ( .A(N271), .Z(N272) );
  GTECH_AND2 C1150 ( .A(N527), .B(cmd_ready), .Z(N276) );
  GTECH_OR2 C1151 ( .A(N517), .B(N521), .Z(N527) );
  GTECH_NOT I_54 ( .A(N276), .Z(N277) );
  GTECH_AND2 C1154 ( .A(N503), .B(cmd_ready), .Z(N278) );
  GTECH_NOT I_55 ( .A(sdi_valid), .Z(N286) );
  GTECH_AND2 C1159 ( .A(N528), .B(last_flit_of_segment), .Z(N287) );
  GTECH_AND2 C1160 ( .A(sdi_valid), .B(key_ready_p), .Z(N528) );
  GTECH_AND2 C1162 ( .A(N529), .B(last_flit_of_segment), .Z(N289) );
  GTECH_AND2 C1163 ( .A(pdi_valid), .B(bdi_ready_p), .Z(N529) );
  GTECH_AND2 C1165 ( .A(N483), .B(eot_flag), .Z(N291) );
  GTECH_AND2 C1167 ( .A(N530), .B(last_flit_of_segment), .Z(N296) );
  GTECH_AND2 C1168 ( .A(pdi_valid), .B(bdi_ready_p), .Z(N530) );
  GTECH_NOT I_56 ( .A(N296), .Z(N297) );
  GTECH_NOT I_57 ( .A(eot_flag), .Z(N298) );
  GTECH_AND2 C1174 ( .A(pdi_valid), .B(cmd_ready), .Z(N302) );
  GTECH_NOT I_58 ( .A(N302), .Z(N303) );
  GTECH_AND2 C1177 ( .A(N499), .B(eot_flag), .Z(N304) );
  GTECH_NOT I_59 ( .A(N304), .Z(N305) );
  GTECH_AND2 C1181 ( .A(N531), .B(last_flit_of_segment), .Z(N312) );
  GTECH_AND2 C1182 ( .A(pdi_valid), .B(bdi_ready_p), .Z(N531) );
  GTECH_NOT I_60 ( .A(N312), .Z(N313) );
  GTECH_AND2 C1189 ( .A(pdi_valid), .B(last_flit_of_segment), .Z(N319) );
  GTECH_NOT I_61 ( .A(N319), .Z(N320) );
  GTECH_AND2 C1193 ( .A(N532), .B(last_flit_of_segment), .Z(N324) );
  GTECH_AND2 C1194 ( .A(pdi_valid), .B(bdi_ready_p), .Z(N532) );
  GTECH_NOT I_62 ( .A(N324), .Z(N325) );
  GTECH_NOT I_63 ( .A(bdi_ready_p), .Z(N328) );
  GTECH_NOT I_64 ( .A(N334), .Z(N335) );
  GTECH_NOT I_65 ( .A(N338), .Z(N339) );
  GTECH_NOT I_66 ( .A(N342), .Z(N343) );
  GTECH_NOT I_67 ( .A(N346), .Z(N347) );
  GTECH_NOT I_68 ( .A(N350), .Z(N351) );
  GTECH_NOT I_69 ( .A(N354), .Z(N355) );
  GTECH_NOT I_70 ( .A(N358), .Z(N359) );
  GTECH_NOT I_71 ( .A(N362), .Z(N363) );
  GTECH_NOT I_72 ( .A(N366), .Z(N367) );
  GTECH_NOT I_73 ( .A(N370), .Z(N371) );
  GTECH_NOT I_74 ( .A(N374), .Z(N375) );
  GTECH_NOT I_75 ( .A(N378), .Z(N379) );
  GTECH_NOT I_76 ( .A(N382), .Z(N383) );
  GTECH_NOT I_77 ( .A(N386), .Z(N387) );
  GTECH_OR2 C1263 ( .A(N508), .B(N513), .Z(N391) );
  GTECH_NOT I_78 ( .A(N391), .Z(N392) );
  GTECH_NOT I_79 ( .A(pdi_valid), .Z(N393) );
  GTECH_AND2 C1271 ( .A(sdi_valid), .B(key_ready_p), .Z(N402) );
  GTECH_AND2 C1272 ( .A(pdi_valid), .B(bdi_ready_p), .Z(N403) );
  GTECH_AND2 C1273 ( .A(pdi_valid), .B(bdi_ready_p), .Z(N404) );
  GTECH_AND2 C1275 ( .A(pdi_valid), .B(bdi_ready_p), .Z(N405) );
  GTECH_NOT I_80 ( .A(decrypt), .Z(N406) );
  GTECH_AND2 C1279 ( .A(pdi_valid), .B(bdi_ready_p), .Z(N407) );
  GTECH_AND2 C1280 ( .A(pdi_valid), .B(bdi_ready_p), .Z(N411) );
  GTECH_OR2 C1281 ( .A(N335), .B(N339), .Z(N412) );
  GTECH_OR2 C1282 ( .A(N412), .B(N343), .Z(N413) );
  GTECH_OR2 C1283 ( .A(N413), .B(N347), .Z(N414) );
  GTECH_OR2 C1284 ( .A(N414), .B(N351), .Z(N415) );
  GTECH_OR2 C1285 ( .A(N415), .B(N355), .Z(N416) );
  GTECH_OR2 C1286 ( .A(N416), .B(N359), .Z(N417) );
  GTECH_OR2 C1287 ( .A(N417), .B(N363), .Z(N418) );
  GTECH_OR2 C1288 ( .A(N418), .B(N367), .Z(N419) );
  GTECH_OR2 C1289 ( .A(N419), .B(N371), .Z(N420) );
  GTECH_OR2 C1290 ( .A(N420), .B(N375), .Z(N421) );
  GTECH_OR2 C1291 ( .A(N421), .B(N379), .Z(N422) );
  GTECH_OR2 C1292 ( .A(N422), .B(N383), .Z(N423) );
  GTECH_OR2 C1293 ( .A(N423), .B(N387), .Z(N424) );
  GTECH_OR2 C1294 ( .A(N424), .B(N390), .Z(N425) );
  GTECH_NOT I_81 ( .A(N425), .Z(N426) );
  GTECH_OR2 C1296 ( .A(N331), .B(N335), .Z(N427) );
  GTECH_OR2 C1297 ( .A(N427), .B(N339), .Z(N428) );
  GTECH_OR2 C1298 ( .A(N428), .B(N343), .Z(N429) );
  GTECH_AND2 C1299 ( .A(N393), .B(N347), .Z(N430) );
  GTECH_OR2 C1300 ( .A(N429), .B(N430), .Z(N431) );
  GTECH_OR2 C1301 ( .A(N431), .B(N351), .Z(N432) );
  GTECH_AND2 C1302 ( .A(N393), .B(N355), .Z(N433) );
  GTECH_OR2 C1303 ( .A(N432), .B(N433), .Z(N434) );
  GTECH_OR2 C1304 ( .A(N434), .B(N359), .Z(N435) );
  GTECH_AND2 C1305 ( .A(N303), .B(N363), .Z(N436) );
  GTECH_OR2 C1306 ( .A(N435), .B(N436), .Z(N437) );
  GTECH_OR2 C1307 ( .A(N437), .B(N367), .Z(N438) );
  GTECH_OR2 C1308 ( .A(N438), .B(N371), .Z(N439) );
  GTECH_OR2 C1309 ( .A(N439), .B(N375), .Z(N440) );
  GTECH_AND2 C1310 ( .A(N393), .B(N379), .Z(N441) );
  GTECH_OR2 C1311 ( .A(N440), .B(N441), .Z(N442) );
  GTECH_OR2 C1312 ( .A(N442), .B(N383), .Z(N443) );
  GTECH_OR2 C1313 ( .A(N443), .B(N387), .Z(N444) );
  GTECH_OR2 C1314 ( .A(N444), .B(N390), .Z(N445) );
  GTECH_NOT I_82 ( .A(N445), .Z(N446) );
endmodule


module counter_num_bits4_1 ( clk, reset, enable, q );
  output [3:0] q;
  input clk, reset, enable;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12;

  \**SEQGEN**  \count_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N12), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(q[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N8) );
  \**SEQGEN**  \count_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N11), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(q[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N8) );
  \**SEQGEN**  \count_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N10), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(q[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N8) );
  \**SEQGEN**  \count_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N9), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(q[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N8) );
  ADD_UNS_OP add_39 ( .A(q), .B(1'b1), .Z({N7, N6, N5, N4}) );
  SELECT_OP C33 ( .DATA1(1'b1), .DATA2(enable), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N8) );
  GTECH_BUF B_0 ( .A(reset), .Z(N0) );
  GTECH_BUF B_1 ( .A(N2), .Z(N1) );
  SELECT_OP C34 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N7, N6, N5, N4}), 
        .CONTROL1(N0), .CONTROL2(N1), .Z({N12, N11, N10, N9}) );
  GTECH_NOT I_0 ( .A(reset), .Z(N2) );
  GTECH_BUF B_2 ( .A(N2), .Z(N3) );
  GTECH_AND2 C42 ( .A(N3), .B(enable) );
endmodule


module reg_custom_LEN128_1 ( clk, en, din, qout );
  input [127:0] din;
  output [127:0] qout;
  input clk, en;


  \**SEQGEN**  \qout_reg[127]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[127]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[127]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[126]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[126]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[126]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[125]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[125]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[125]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[124]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[124]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[124]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[123]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[123]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[123]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[122]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[122]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[122]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[121]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[121]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[121]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[120]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[120]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[120]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[119]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[119]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[119]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[118]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[118]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[118]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[117]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[117]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[117]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[116]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[116]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[116]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[115]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[115]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[115]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[114]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[114]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[114]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[113]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[113]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[113]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[112]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[112]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[112]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[111]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[111]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[111]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[110]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[110]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[110]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[109]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[109]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[109]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[108]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[108]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[108]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[107]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[107]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[107]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[106]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[106]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[106]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[105]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[105]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[105]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[104]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[104]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[104]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[103]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[103]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[103]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[102]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[102]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[102]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[101]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[101]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[101]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[100]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[100]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        qout[100]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[99]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[99]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[99]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[98]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[98]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[98]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[97]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[97]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[97]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[96]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[96]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[96]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[95]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[95]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[95]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[94]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[94]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[94]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[93]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[93]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[93]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[92]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[92]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[92]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[91]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[91]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[91]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[90]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[90]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[90]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[89]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[89]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[89]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[88]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[88]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[88]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[87]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[87]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[87]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[86]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[86]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[86]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[85]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[85]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[85]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[84]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[84]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[84]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[83]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[83]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[83]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[82]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[82]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[82]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[81]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[81]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[81]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[80]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[80]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[80]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[79]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[79]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[79]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[78]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[78]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[78]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[77]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[77]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[77]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[76]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[76]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[76]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[75]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[75]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[75]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[74]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[74]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[74]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[73]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[73]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[73]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[72]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[72]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[72]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[71]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[71]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[71]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[70]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[70]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[70]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[69]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[69]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[69]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[68]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[68]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[68]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[67]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[67]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[67]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[66]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[66]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[66]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[65]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[65]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[65]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[64]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[64]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[64]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[63]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[63]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[63]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[62]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[62]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[62]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[61]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[61]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[61]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[60]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[60]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[60]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[59]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[59]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[59]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[58]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[58]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[58]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[57]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[57]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[57]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[56]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[56]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[56]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[55]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[55]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[55]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[54]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[54]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[54]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[53]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[53]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[53]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[52]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[52]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[52]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[51]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[51]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[51]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[50]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[50]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[50]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[49]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[49]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[49]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[48]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[48]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[48]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[47]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[47]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[47]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[46]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[46]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[46]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[45]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[45]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[45]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[44]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[44]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[44]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[43]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[43]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[43]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[42]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[42]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[42]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[41]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[41]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[41]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[40]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[40]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[40]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[39]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[39]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[39]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[38]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[38]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[38]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[37]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[37]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[37]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[36]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[36]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[36]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[35]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[35]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[35]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[34]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[34]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[34]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[33]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[33]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[33]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[32]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[32]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[32]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[31]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[31]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[31]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[30]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[30]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[30]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[29]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[29]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[29]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[28]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[28]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[28]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[27]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[27]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[27]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[26]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[26]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[26]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[25]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[25]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[25]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[24]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[24]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[24]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[23]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[23]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[23]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[22]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[22]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[22]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[21]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[21]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[21]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[20]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[20]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[20]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[19]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[19]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[19]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[18]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[18]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[18]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[17]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[17]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[17]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[16]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[16]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[16]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[15]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[15]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[14]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[14]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[13]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[13]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[12]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[12]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[11]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[11]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(
        din[10]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[10]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(
        en) );
  \**SEQGEN**  \qout_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(din[9]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[9]), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(din[8]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[8]), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(din[7]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[7]), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(din[6]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[6]), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(din[5]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[5]), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(din[4]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[4]), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(din[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[3]), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(din[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[2]), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(din[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[1]), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(en) );
  \**SEQGEN**  \qout_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(din[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(qout[0]), .synch_clear(
        1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(en) );
endmodule


module xoodoo_round_ADDRESS_LEN384_1 ( INPUT, perm_output, RNDCTR );
  input [383:0] INPUT;
  output [383:0] perm_output;
  input [3:0] RNDCTR;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71,
         N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143,
         N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176,
         N177, N178, N179, N180, N181, N182, N183, N184, N185, N186, N187,
         N188, N189, N190, N191, N192, N193, N194, N195, N196, N197, N198,
         N199, N200, N201, N202, N203, N204, N205, N206, N207, N208, N209,
         N210, N211, N212, N213, N214, N215, N216, N217, N218, N219, N220,
         N221, N222, N223, N224, N225, N226, N227, N228, N229, N230, N231,
         N232, N233, N234, N235, N236, N237, N238, N239, N240, N241, N242,
         N243, N244, N245, N246, N247, N248, N249, N250, N251, N252, N253,
         N254, N255, N256, N257, N258, N259, N260, N261, N262, N263, N264,
         N265, N266, N267, N268, N269, N270, N271, N272, N273, N274, N275,
         N276, N277, N278, N279, N280, N281, N282, N283, N284, N285, N286,
         N287, N288, N289, N290, N291, N292, N293, N294, N295, N296, N297,
         N298, N299, N300, N301, N302, N303, N304, N305, N306, N307, N308,
         N309, N310, N311, N312, N313, N314, N315, N316, N317, N318, N319,
         N320, N321, N322, N323, N324, N325, N326, N327, N328, N329, N330,
         N331, N332, N333, N334, N335, N336, N337, N338, N339, N340, N341,
         N342, N343, N344, N345, N346, N347, N348, N349, N350, N351, N352,
         N353, N354, N355, N356, N357, N358, N359, N360, N361, N362, N363,
         N364, N365, N366, N367, N368, N369, N370, N371, N372, N373, N374,
         N375, N376, N377, N378, N379, N380, N381, N382, N383, N384, N385,
         N386, N387, N388, N389, N390, N391, N392, N393, N394, N395, N396,
         N397, N398, N399, N400, N401, N402, N403, N404, N405, N406, N407,
         N408, N409, N410, N411, N412, N413, N414, N415, N416, N417, N418,
         N419, N420, N421, N422, N423, N424, N425, N426, N427, N428, N429,
         N430, N431, N432, N433, N434, N435, N436, N437, N438, N439, N440,
         N441, N442, N443, N444, N445, N446, N447, N448, N449, N450, N451,
         N452, N453, N454, N455, N456, N457, N458, N459, N460, N461, N462,
         N463, N464, N465, N466, N467, N468, N469, N470, N471, N472, N473,
         N474, N475, N476, N477, N478, N479, N480, N481, N482, N483, N484,
         N485, N486, N487, N488, N489, N490, N491, N492, N493, N494, N495,
         N496, N497, N498, N499, N500, N501, N502, N503, N504, N505, N506,
         N507, N508, N509, N510, N511, N512, N513, N514, N515, N516, N517,
         N518, N519, N520, N521, N522, N523, N524, N525, N526, N527, N528,
         N529, N530, N531, N532, N533, N534, N535, N536, N537, N538, N539,
         N540, N541, N542, N543, N544, N545, N546, N547, N548, N549, N550,
         N551, N552, N553, N554, N555, N556, N557, N558, N559, N560, N561,
         N562, N563, N564, N565, N566, N567, N568, N569, N570, N571, N572,
         N573, N574, N575, N576, N577, N578, N579, N580, N581, N582, N583,
         N584, N585, N586, N587, N588, N589, N590, N591, N592, N593, N594,
         N595, N596, N597, N598, N599, N600, N601, N602, N603, N604, N605,
         N606, N607, N608, N609, N610, N611, N612, N613, N614, N615, N616,
         N617, N618, N619, N620, N621, N622, N623, N624, N625, N626, N627,
         N628, N629, N630, N631, N632, N633, N634, N635, N636, N637, N638,
         N639, N640, N641, N642, N643, N644, N645, N646, N647, N648, N649,
         N650, N651, N652, N653, N654, N655, N656, N657, N658, N659, N660,
         N661, N662, N663, N664, N665, N666, N667, N668, N669, N670, N671,
         N672, N673, N674, N675, N676, N677, N678, N679, N680, N681, N682,
         N683, N684, N685, N686, N687, N688, N689, N690, N691, N692, N693,
         N694, N695, N696, N697, N698, N699, N700, N701, N702, N703, N704,
         N705, N706, N707, N708, N709, N710, N711, N712, N713, N714, N715,
         N716, N717, N718, N719, N720, N721, N722, N723, N724, N725, N726,
         N727, N728, N729, N730, N731, N732, N733, N734, N735, N736, N737,
         N738, N739, N740, N741, N742, N743, N744, N745, N746, N747, N748,
         N749, N750, N751, N752, N753, N754, N755, N756, N757, N758, N759,
         N760, N761, N762, N763, N764, N765, N766, N767, N768, N769, N770,
         N771, N772, N773, N774, N775, N776, N777, N778, N779, N780, N781,
         N782, N783, N784, N785, N786, N787, N788, N789, N790, N791, N792,
         N793, N794, N795, N796, N797, N798, N799, N800, N801, N802, N803,
         N804, N805, N806, N807, N808, N809, N810, N811, N812, N813, N814,
         N815, N816, N817, N818, N819, N820, N821, N822, N823, N824, N825,
         N826, N827, N828, N829, N830, N831, N832, N833, N834, N835, N836,
         N837, N838, N839, N840, N841, N842, N843, N844, N845, N846, N847,
         N848, N849, N850, N851, N852, N853, N854, N855, N856, N857, N858,
         N859, N860, N861, N862, N863, N864, N865, N866, N867, N868, N869,
         N870, N871, N872, N873, N874, N875, N876, N877, N878, N879, N880,
         N881, N882, N883, N884, N885, N886, N887, N888, N889, N890, N891,
         N892, N893, N894, N895, N896, N897, N898, N899, N900, N901, N902,
         N903, N904, N905, N906, N907, N908, N909, N910, N911, N912, N913,
         N914, N915, N916, N917, N918, N919, N920, N921, N922, N923, N924,
         N925, N926, N927, N928, N929, N930, N931, N932, N933, N934, N935,
         N936, N937, N938, N939, N940, N941, N942, N943, N944, N945, N946,
         N947, N948;
  wire   [127:0] p_plane;
  wire   [127:0] eshift;
  wire   [127:0] plane2_2;
  wire   [127:0] plane1_2;
  wire   [127:0] plane0_2;
  wire   [11:0] add_rnd_const_small;

  GTECH_AND4 C1990 ( .A(N0), .B(N1), .C(N2), .D(N3), .Z(N160) );
  GTECH_NOT I_0 ( .A(RNDCTR[3]), .Z(N0) );
  GTECH_NOT I_1 ( .A(RNDCTR[2]), .Z(N1) );
  GTECH_NOT I_2 ( .A(RNDCTR[0]), .Z(N2) );
  GTECH_NOT I_3 ( .A(RNDCTR[1]), .Z(N3) );
  GTECH_AND3 C1991 ( .A(RNDCTR[3]), .B(N4), .C(N5), .Z(N161) );
  GTECH_NOT I_4 ( .A(RNDCTR[0]), .Z(N4) );
  GTECH_NOT I_5 ( .A(RNDCTR[1]), .Z(N5) );
  GTECH_AND4 C1992 ( .A(N6), .B(N7), .C(RNDCTR[0]), .D(N8), .Z(N162) );
  GTECH_NOT I_6 ( .A(RNDCTR[3]), .Z(N6) );
  GTECH_NOT I_7 ( .A(RNDCTR[2]), .Z(N7) );
  GTECH_NOT I_8 ( .A(RNDCTR[1]), .Z(N8) );
  GTECH_AND4 C1993 ( .A(N9), .B(N10), .C(N11), .D(RNDCTR[1]), .Z(N164) );
  GTECH_NOT I_9 ( .A(RNDCTR[3]), .Z(N9) );
  GTECH_NOT I_10 ( .A(RNDCTR[2]), .Z(N10) );
  GTECH_NOT I_11 ( .A(RNDCTR[0]), .Z(N11) );
  GTECH_AND4 C1994 ( .A(N12), .B(N13), .C(RNDCTR[0]), .D(RNDCTR[1]), .Z(N166)
         );
  GTECH_NOT I_12 ( .A(RNDCTR[3]), .Z(N12) );
  GTECH_NOT I_13 ( .A(RNDCTR[2]), .Z(N13) );
  GTECH_AND3 C1995 ( .A(RNDCTR[2]), .B(N14), .C(N15), .Z(N168) );
  GTECH_NOT I_14 ( .A(RNDCTR[0]), .Z(N14) );
  GTECH_NOT I_15 ( .A(RNDCTR[1]), .Z(N15) );
  GTECH_AND3 C1996 ( .A(RNDCTR[2]), .B(RNDCTR[0]), .C(N16), .Z(N169) );
  GTECH_NOT I_16 ( .A(RNDCTR[1]), .Z(N16) );
  GTECH_AND3 C1997 ( .A(RNDCTR[2]), .B(N17), .C(RNDCTR[1]), .Z(N170) );
  GTECH_NOT I_17 ( .A(RNDCTR[0]), .Z(N17) );
  GTECH_AND3 C1998 ( .A(RNDCTR[2]), .B(RNDCTR[0]), .C(RNDCTR[1]), .Z(N171) );
  GTECH_AND3 C1999 ( .A(RNDCTR[3]), .B(RNDCTR[0]), .C(N18), .Z(N163) );
  GTECH_NOT I_18 ( .A(RNDCTR[1]), .Z(N18) );
  GTECH_AND3 C2000 ( .A(RNDCTR[3]), .B(N19), .C(RNDCTR[1]), .Z(N165) );
  GTECH_NOT I_19 ( .A(RNDCTR[0]), .Z(N19) );
  GTECH_AND3 C2001 ( .A(RNDCTR[3]), .B(RNDCTR[0]), .C(RNDCTR[1]), .Z(N167) );
  SELECT_OP C2006 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b1), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b1), 
        .DATA10(1'b0), .DATA11(1'b0), .DATA12(1'b0), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .CONTROL9(N28), 
        .CONTROL10(N29), .CONTROL11(N30), .CONTROL12(N31), .Z(N172) );
  GTECH_BUF B_0 ( .A(N160), .Z(N20) );
  GTECH_BUF B_1 ( .A(N162), .Z(N21) );
  GTECH_BUF B_2 ( .A(N164), .Z(N22) );
  GTECH_BUF B_3 ( .A(N166), .Z(N23) );
  GTECH_BUF B_4 ( .A(N168), .Z(N24) );
  GTECH_BUF B_5 ( .A(N169), .Z(N25) );
  GTECH_BUF B_6 ( .A(N170), .Z(N26) );
  GTECH_BUF B_7 ( .A(N171), .Z(N27) );
  GTECH_BUF B_8 ( .A(N161), .Z(N28) );
  GTECH_BUF B_9 ( .A(N163), .Z(N29) );
  GTECH_BUF B_10 ( .A(N165), .Z(N30) );
  GTECH_BUF B_11 ( .A(N167), .Z(N31) );
  SELECT_OP C2007 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b1), .DATA4(1'b0), 
        .DATA5(1'b1), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b1), 
        .DATA10(1'b0), .DATA11(1'b1), .DATA12(1'b0), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .CONTROL9(N28), 
        .CONTROL10(N29), .CONTROL11(N30), .CONTROL12(N31), .Z(N173) );
  SELECT_OP C2008 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b1), 
        .DATA10(1'b1), .DATA11(1'b1), .DATA12(1'b0), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .CONTROL9(N28), 
        .CONTROL10(N29), .CONTROL11(N30), .CONTROL12(N31), .Z(N174) );
  SELECT_OP C2009 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b1), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b1), .DATA11(1'b0), .DATA12(1'b0), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .CONTROL9(N28), 
        .CONTROL10(N29), .CONTROL11(N30), .CONTROL12(N31), .Z(N175) );
  SELECT_OP C2010 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b1), .DATA6(1'b0), .DATA7(1'b1), .DATA8(1'b1), .DATA9(1'b0), 
        .DATA10(1'b1), .DATA11(1'b1), .DATA12(1'b0), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .CONTROL9(N28), 
        .CONTROL10(N29), .CONTROL11(N30), .CONTROL12(N31), .Z(N176) );
  SELECT_OP C2011 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .DATA4(1'b1), 
        .DATA5(1'b0), .DATA6(1'b1), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b1), .DATA11(1'b0), .DATA12(1'b1), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .CONTROL9(N28), 
        .CONTROL10(N29), .CONTROL11(N30), .CONTROL12(N31), .Z(N177) );
  SELECT_OP C2012 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b1), .DATA9(1'b0), 
        .DATA10(1'b0), .DATA11(1'b0), .DATA12(1'b0), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .CONTROL9(N28), 
        .CONTROL10(N29), .CONTROL11(N30), .CONTROL12(N31), .Z(N178) );
  SELECT_OP C2013 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b1), .DATA7(1'b0), .DATA8(1'b1), .DATA9(1'b0), 
        .DATA10(1'b0), .DATA11(1'b0), .DATA12(1'b0), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .CONTROL9(N28), 
        .CONTROL10(N29), .CONTROL11(N30), .CONTROL12(N31), .Z(N179) );
  SELECT_OP C2014 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b0), .DATA11(1'b0), .DATA12(1'b1), .CONTROL1(N20), 
        .CONTROL2(N21), .CONTROL3(N22), .CONTROL4(N23), .CONTROL5(N24), 
        .CONTROL6(N25), .CONTROL7(N26), .CONTROL8(N27), .CONTROL9(N28), 
        .CONTROL10(N29), .CONTROL11(N30), .CONTROL12(N31), .Z(N180) );
  GTECH_XOR2 C2017 ( .A(INPUT[127]), .B(INPUT[255]), .Z(N32) );
  GTECH_XOR2 C2018 ( .A(INPUT[126]), .B(INPUT[254]), .Z(N33) );
  GTECH_XOR2 C2019 ( .A(INPUT[125]), .B(INPUT[253]), .Z(N34) );
  GTECH_XOR2 C2020 ( .A(INPUT[124]), .B(INPUT[252]), .Z(N35) );
  GTECH_XOR2 C2021 ( .A(INPUT[123]), .B(INPUT[251]), .Z(N36) );
  GTECH_XOR2 C2022 ( .A(INPUT[122]), .B(INPUT[250]), .Z(N37) );
  GTECH_XOR2 C2023 ( .A(INPUT[121]), .B(INPUT[249]), .Z(N38) );
  GTECH_XOR2 C2024 ( .A(INPUT[120]), .B(INPUT[248]), .Z(N39) );
  GTECH_XOR2 C2025 ( .A(INPUT[119]), .B(INPUT[247]), .Z(N40) );
  GTECH_XOR2 C2026 ( .A(INPUT[118]), .B(INPUT[246]), .Z(N41) );
  GTECH_XOR2 C2027 ( .A(INPUT[117]), .B(INPUT[245]), .Z(N42) );
  GTECH_XOR2 C2028 ( .A(INPUT[116]), .B(INPUT[244]), .Z(N43) );
  GTECH_XOR2 C2029 ( .A(INPUT[115]), .B(INPUT[243]), .Z(N44) );
  GTECH_XOR2 C2030 ( .A(INPUT[114]), .B(INPUT[242]), .Z(N45) );
  GTECH_XOR2 C2031 ( .A(INPUT[113]), .B(INPUT[241]), .Z(N46) );
  GTECH_XOR2 C2032 ( .A(INPUT[112]), .B(INPUT[240]), .Z(N47) );
  GTECH_XOR2 C2033 ( .A(INPUT[111]), .B(INPUT[239]), .Z(N48) );
  GTECH_XOR2 C2034 ( .A(INPUT[110]), .B(INPUT[238]), .Z(N49) );
  GTECH_XOR2 C2035 ( .A(INPUT[109]), .B(INPUT[237]), .Z(N50) );
  GTECH_XOR2 C2036 ( .A(INPUT[108]), .B(INPUT[236]), .Z(N51) );
  GTECH_XOR2 C2037 ( .A(INPUT[107]), .B(INPUT[235]), .Z(N52) );
  GTECH_XOR2 C2038 ( .A(INPUT[106]), .B(INPUT[234]), .Z(N53) );
  GTECH_XOR2 C2039 ( .A(INPUT[105]), .B(INPUT[233]), .Z(N54) );
  GTECH_XOR2 C2040 ( .A(INPUT[104]), .B(INPUT[232]), .Z(N55) );
  GTECH_XOR2 C2041 ( .A(INPUT[103]), .B(INPUT[231]), .Z(N56) );
  GTECH_XOR2 C2042 ( .A(INPUT[102]), .B(INPUT[230]), .Z(N57) );
  GTECH_XOR2 C2043 ( .A(INPUT[101]), .B(INPUT[229]), .Z(N58) );
  GTECH_XOR2 C2044 ( .A(INPUT[100]), .B(INPUT[228]), .Z(N59) );
  GTECH_XOR2 C2045 ( .A(INPUT[99]), .B(INPUT[227]), .Z(N60) );
  GTECH_XOR2 C2046 ( .A(INPUT[98]), .B(INPUT[226]), .Z(N61) );
  GTECH_XOR2 C2047 ( .A(INPUT[97]), .B(INPUT[225]), .Z(N62) );
  GTECH_XOR2 C2048 ( .A(INPUT[96]), .B(INPUT[224]), .Z(N63) );
  GTECH_XOR2 C2049 ( .A(INPUT[95]), .B(INPUT[223]), .Z(N64) );
  GTECH_XOR2 C2050 ( .A(INPUT[94]), .B(INPUT[222]), .Z(N65) );
  GTECH_XOR2 C2051 ( .A(INPUT[93]), .B(INPUT[221]), .Z(N66) );
  GTECH_XOR2 C2052 ( .A(INPUT[92]), .B(INPUT[220]), .Z(N67) );
  GTECH_XOR2 C2053 ( .A(INPUT[91]), .B(INPUT[219]), .Z(N68) );
  GTECH_XOR2 C2054 ( .A(INPUT[90]), .B(INPUT[218]), .Z(N69) );
  GTECH_XOR2 C2055 ( .A(INPUT[89]), .B(INPUT[217]), .Z(N70) );
  GTECH_XOR2 C2056 ( .A(INPUT[88]), .B(INPUT[216]), .Z(N71) );
  GTECH_XOR2 C2057 ( .A(INPUT[87]), .B(INPUT[215]), .Z(N72) );
  GTECH_XOR2 C2058 ( .A(INPUT[86]), .B(INPUT[214]), .Z(N73) );
  GTECH_XOR2 C2059 ( .A(INPUT[85]), .B(INPUT[213]), .Z(N74) );
  GTECH_XOR2 C2060 ( .A(INPUT[84]), .B(INPUT[212]), .Z(N75) );
  GTECH_XOR2 C2061 ( .A(INPUT[83]), .B(INPUT[211]), .Z(N76) );
  GTECH_XOR2 C2062 ( .A(INPUT[82]), .B(INPUT[210]), .Z(N77) );
  GTECH_XOR2 C2063 ( .A(INPUT[81]), .B(INPUT[209]), .Z(N78) );
  GTECH_XOR2 C2064 ( .A(INPUT[80]), .B(INPUT[208]), .Z(N79) );
  GTECH_XOR2 C2065 ( .A(INPUT[79]), .B(INPUT[207]), .Z(N80) );
  GTECH_XOR2 C2066 ( .A(INPUT[78]), .B(INPUT[206]), .Z(N81) );
  GTECH_XOR2 C2067 ( .A(INPUT[77]), .B(INPUT[205]), .Z(N82) );
  GTECH_XOR2 C2068 ( .A(INPUT[76]), .B(INPUT[204]), .Z(N83) );
  GTECH_XOR2 C2069 ( .A(INPUT[75]), .B(INPUT[203]), .Z(N84) );
  GTECH_XOR2 C2070 ( .A(INPUT[74]), .B(INPUT[202]), .Z(N85) );
  GTECH_XOR2 C2071 ( .A(INPUT[73]), .B(INPUT[201]), .Z(N86) );
  GTECH_XOR2 C2072 ( .A(INPUT[72]), .B(INPUT[200]), .Z(N87) );
  GTECH_XOR2 C2073 ( .A(INPUT[71]), .B(INPUT[199]), .Z(N88) );
  GTECH_XOR2 C2074 ( .A(INPUT[70]), .B(INPUT[198]), .Z(N89) );
  GTECH_XOR2 C2075 ( .A(INPUT[69]), .B(INPUT[197]), .Z(N90) );
  GTECH_XOR2 C2076 ( .A(INPUT[68]), .B(INPUT[196]), .Z(N91) );
  GTECH_XOR2 C2077 ( .A(INPUT[67]), .B(INPUT[195]), .Z(N92) );
  GTECH_XOR2 C2078 ( .A(INPUT[66]), .B(INPUT[194]), .Z(N93) );
  GTECH_XOR2 C2079 ( .A(INPUT[65]), .B(INPUT[193]), .Z(N94) );
  GTECH_XOR2 C2080 ( .A(INPUT[64]), .B(INPUT[192]), .Z(N95) );
  GTECH_XOR2 C2081 ( .A(INPUT[63]), .B(INPUT[191]), .Z(N96) );
  GTECH_XOR2 C2082 ( .A(INPUT[62]), .B(INPUT[190]), .Z(N97) );
  GTECH_XOR2 C2083 ( .A(INPUT[61]), .B(INPUT[189]), .Z(N98) );
  GTECH_XOR2 C2084 ( .A(INPUT[60]), .B(INPUT[188]), .Z(N99) );
  GTECH_XOR2 C2085 ( .A(INPUT[59]), .B(INPUT[187]), .Z(N100) );
  GTECH_XOR2 C2086 ( .A(INPUT[58]), .B(INPUT[186]), .Z(N101) );
  GTECH_XOR2 C2087 ( .A(INPUT[57]), .B(INPUT[185]), .Z(N102) );
  GTECH_XOR2 C2088 ( .A(INPUT[56]), .B(INPUT[184]), .Z(N103) );
  GTECH_XOR2 C2089 ( .A(INPUT[55]), .B(INPUT[183]), .Z(N104) );
  GTECH_XOR2 C2090 ( .A(INPUT[54]), .B(INPUT[182]), .Z(N105) );
  GTECH_XOR2 C2091 ( .A(INPUT[53]), .B(INPUT[181]), .Z(N106) );
  GTECH_XOR2 C2092 ( .A(INPUT[52]), .B(INPUT[180]), .Z(N107) );
  GTECH_XOR2 C2093 ( .A(INPUT[51]), .B(INPUT[179]), .Z(N108) );
  GTECH_XOR2 C2094 ( .A(INPUT[50]), .B(INPUT[178]), .Z(N109) );
  GTECH_XOR2 C2095 ( .A(INPUT[49]), .B(INPUT[177]), .Z(N110) );
  GTECH_XOR2 C2096 ( .A(INPUT[48]), .B(INPUT[176]), .Z(N111) );
  GTECH_XOR2 C2097 ( .A(INPUT[47]), .B(INPUT[175]), .Z(N112) );
  GTECH_XOR2 C2098 ( .A(INPUT[46]), .B(INPUT[174]), .Z(N113) );
  GTECH_XOR2 C2099 ( .A(INPUT[45]), .B(INPUT[173]), .Z(N114) );
  GTECH_XOR2 C2100 ( .A(INPUT[44]), .B(INPUT[172]), .Z(N115) );
  GTECH_XOR2 C2101 ( .A(INPUT[43]), .B(INPUT[171]), .Z(N116) );
  GTECH_XOR2 C2102 ( .A(INPUT[42]), .B(INPUT[170]), .Z(N117) );
  GTECH_XOR2 C2103 ( .A(INPUT[41]), .B(INPUT[169]), .Z(N118) );
  GTECH_XOR2 C2104 ( .A(INPUT[40]), .B(INPUT[168]), .Z(N119) );
  GTECH_XOR2 C2105 ( .A(INPUT[39]), .B(INPUT[167]), .Z(N120) );
  GTECH_XOR2 C2106 ( .A(INPUT[38]), .B(INPUT[166]), .Z(N121) );
  GTECH_XOR2 C2107 ( .A(INPUT[37]), .B(INPUT[165]), .Z(N122) );
  GTECH_XOR2 C2108 ( .A(INPUT[36]), .B(INPUT[164]), .Z(N123) );
  GTECH_XOR2 C2109 ( .A(INPUT[35]), .B(INPUT[163]), .Z(N124) );
  GTECH_XOR2 C2110 ( .A(INPUT[34]), .B(INPUT[162]), .Z(N125) );
  GTECH_XOR2 C2111 ( .A(INPUT[33]), .B(INPUT[161]), .Z(N126) );
  GTECH_XOR2 C2112 ( .A(INPUT[32]), .B(INPUT[160]), .Z(N127) );
  GTECH_XOR2 C2113 ( .A(INPUT[31]), .B(INPUT[159]), .Z(N128) );
  GTECH_XOR2 C2114 ( .A(INPUT[30]), .B(INPUT[158]), .Z(N129) );
  GTECH_XOR2 C2115 ( .A(INPUT[29]), .B(INPUT[157]), .Z(N130) );
  GTECH_XOR2 C2116 ( .A(INPUT[28]), .B(INPUT[156]), .Z(N131) );
  GTECH_XOR2 C2117 ( .A(INPUT[27]), .B(INPUT[155]), .Z(N132) );
  GTECH_XOR2 C2118 ( .A(INPUT[26]), .B(INPUT[154]), .Z(N133) );
  GTECH_XOR2 C2119 ( .A(INPUT[25]), .B(INPUT[153]), .Z(N134) );
  GTECH_XOR2 C2120 ( .A(INPUT[24]), .B(INPUT[152]), .Z(N135) );
  GTECH_XOR2 C2121 ( .A(INPUT[23]), .B(INPUT[151]), .Z(N136) );
  GTECH_XOR2 C2122 ( .A(INPUT[22]), .B(INPUT[150]), .Z(N137) );
  GTECH_XOR2 C2123 ( .A(INPUT[21]), .B(INPUT[149]), .Z(N138) );
  GTECH_XOR2 C2124 ( .A(INPUT[20]), .B(INPUT[148]), .Z(N139) );
  GTECH_XOR2 C2125 ( .A(INPUT[19]), .B(INPUT[147]), .Z(N140) );
  GTECH_XOR2 C2126 ( .A(INPUT[18]), .B(INPUT[146]), .Z(N141) );
  GTECH_XOR2 C2127 ( .A(INPUT[17]), .B(INPUT[145]), .Z(N142) );
  GTECH_XOR2 C2128 ( .A(INPUT[16]), .B(INPUT[144]), .Z(N143) );
  GTECH_XOR2 C2129 ( .A(INPUT[15]), .B(INPUT[143]), .Z(N144) );
  GTECH_XOR2 C2130 ( .A(INPUT[14]), .B(INPUT[142]), .Z(N145) );
  GTECH_XOR2 C2131 ( .A(INPUT[13]), .B(INPUT[141]), .Z(N146) );
  GTECH_XOR2 C2132 ( .A(INPUT[12]), .B(INPUT[140]), .Z(N147) );
  GTECH_XOR2 C2133 ( .A(INPUT[11]), .B(INPUT[139]), .Z(N148) );
  GTECH_XOR2 C2134 ( .A(INPUT[10]), .B(INPUT[138]), .Z(N149) );
  GTECH_XOR2 C2135 ( .A(INPUT[9]), .B(INPUT[137]), .Z(N150) );
  GTECH_XOR2 C2136 ( .A(INPUT[8]), .B(INPUT[136]), .Z(N151) );
  GTECH_XOR2 C2137 ( .A(INPUT[7]), .B(INPUT[135]), .Z(N152) );
  GTECH_XOR2 C2138 ( .A(INPUT[6]), .B(INPUT[134]), .Z(N153) );
  GTECH_XOR2 C2139 ( .A(INPUT[5]), .B(INPUT[133]), .Z(N154) );
  GTECH_XOR2 C2140 ( .A(INPUT[4]), .B(INPUT[132]), .Z(N155) );
  GTECH_XOR2 C2141 ( .A(INPUT[3]), .B(INPUT[131]), .Z(N156) );
  GTECH_XOR2 C2142 ( .A(INPUT[2]), .B(INPUT[130]), .Z(N157) );
  GTECH_XOR2 C2143 ( .A(INPUT[1]), .B(INPUT[129]), .Z(N158) );
  GTECH_XOR2 C2144 ( .A(INPUT[0]), .B(INPUT[128]), .Z(N159) );
  GTECH_XOR2 C2145 ( .A(N32), .B(INPUT[383]), .Z(p_plane[127]) );
  GTECH_XOR2 C2146 ( .A(N33), .B(INPUT[382]), .Z(p_plane[126]) );
  GTECH_XOR2 C2147 ( .A(N34), .B(INPUT[381]), .Z(p_plane[125]) );
  GTECH_XOR2 C2148 ( .A(N35), .B(INPUT[380]), .Z(p_plane[124]) );
  GTECH_XOR2 C2149 ( .A(N36), .B(INPUT[379]), .Z(p_plane[123]) );
  GTECH_XOR2 C2150 ( .A(N37), .B(INPUT[378]), .Z(p_plane[122]) );
  GTECH_XOR2 C2151 ( .A(N38), .B(INPUT[377]), .Z(p_plane[121]) );
  GTECH_XOR2 C2152 ( .A(N39), .B(INPUT[376]), .Z(p_plane[120]) );
  GTECH_XOR2 C2153 ( .A(N40), .B(INPUT[375]), .Z(p_plane[119]) );
  GTECH_XOR2 C2154 ( .A(N41), .B(INPUT[374]), .Z(p_plane[118]) );
  GTECH_XOR2 C2155 ( .A(N42), .B(INPUT[373]), .Z(p_plane[117]) );
  GTECH_XOR2 C2156 ( .A(N43), .B(INPUT[372]), .Z(p_plane[116]) );
  GTECH_XOR2 C2157 ( .A(N44), .B(INPUT[371]), .Z(p_plane[115]) );
  GTECH_XOR2 C2158 ( .A(N45), .B(INPUT[370]), .Z(p_plane[114]) );
  GTECH_XOR2 C2159 ( .A(N46), .B(INPUT[369]), .Z(p_plane[113]) );
  GTECH_XOR2 C2160 ( .A(N47), .B(INPUT[368]), .Z(p_plane[112]) );
  GTECH_XOR2 C2161 ( .A(N48), .B(INPUT[367]), .Z(p_plane[111]) );
  GTECH_XOR2 C2162 ( .A(N49), .B(INPUT[366]), .Z(p_plane[110]) );
  GTECH_XOR2 C2163 ( .A(N50), .B(INPUT[365]), .Z(p_plane[109]) );
  GTECH_XOR2 C2164 ( .A(N51), .B(INPUT[364]), .Z(p_plane[108]) );
  GTECH_XOR2 C2165 ( .A(N52), .B(INPUT[363]), .Z(p_plane[107]) );
  GTECH_XOR2 C2166 ( .A(N53), .B(INPUT[362]), .Z(p_plane[106]) );
  GTECH_XOR2 C2167 ( .A(N54), .B(INPUT[361]), .Z(p_plane[105]) );
  GTECH_XOR2 C2168 ( .A(N55), .B(INPUT[360]), .Z(p_plane[104]) );
  GTECH_XOR2 C2169 ( .A(N56), .B(INPUT[359]), .Z(p_plane[103]) );
  GTECH_XOR2 C2170 ( .A(N57), .B(INPUT[358]), .Z(p_plane[102]) );
  GTECH_XOR2 C2171 ( .A(N58), .B(INPUT[357]), .Z(p_plane[101]) );
  GTECH_XOR2 C2172 ( .A(N59), .B(INPUT[356]), .Z(p_plane[100]) );
  GTECH_XOR2 C2173 ( .A(N60), .B(INPUT[355]), .Z(p_plane[99]) );
  GTECH_XOR2 C2174 ( .A(N61), .B(INPUT[354]), .Z(p_plane[98]) );
  GTECH_XOR2 C2175 ( .A(N62), .B(INPUT[353]), .Z(p_plane[97]) );
  GTECH_XOR2 C2176 ( .A(N63), .B(INPUT[352]), .Z(p_plane[96]) );
  GTECH_XOR2 C2177 ( .A(N64), .B(INPUT[351]), .Z(p_plane[95]) );
  GTECH_XOR2 C2178 ( .A(N65), .B(INPUT[350]), .Z(p_plane[94]) );
  GTECH_XOR2 C2179 ( .A(N66), .B(INPUT[349]), .Z(p_plane[93]) );
  GTECH_XOR2 C2180 ( .A(N67), .B(INPUT[348]), .Z(p_plane[92]) );
  GTECH_XOR2 C2181 ( .A(N68), .B(INPUT[347]), .Z(p_plane[91]) );
  GTECH_XOR2 C2182 ( .A(N69), .B(INPUT[346]), .Z(p_plane[90]) );
  GTECH_XOR2 C2183 ( .A(N70), .B(INPUT[345]), .Z(p_plane[89]) );
  GTECH_XOR2 C2184 ( .A(N71), .B(INPUT[344]), .Z(p_plane[88]) );
  GTECH_XOR2 C2185 ( .A(N72), .B(INPUT[343]), .Z(p_plane[87]) );
  GTECH_XOR2 C2186 ( .A(N73), .B(INPUT[342]), .Z(p_plane[86]) );
  GTECH_XOR2 C2187 ( .A(N74), .B(INPUT[341]), .Z(p_plane[85]) );
  GTECH_XOR2 C2188 ( .A(N75), .B(INPUT[340]), .Z(p_plane[84]) );
  GTECH_XOR2 C2189 ( .A(N76), .B(INPUT[339]), .Z(p_plane[83]) );
  GTECH_XOR2 C2190 ( .A(N77), .B(INPUT[338]), .Z(p_plane[82]) );
  GTECH_XOR2 C2191 ( .A(N78), .B(INPUT[337]), .Z(p_plane[81]) );
  GTECH_XOR2 C2192 ( .A(N79), .B(INPUT[336]), .Z(p_plane[80]) );
  GTECH_XOR2 C2193 ( .A(N80), .B(INPUT[335]), .Z(p_plane[79]) );
  GTECH_XOR2 C2194 ( .A(N81), .B(INPUT[334]), .Z(p_plane[78]) );
  GTECH_XOR2 C2195 ( .A(N82), .B(INPUT[333]), .Z(p_plane[77]) );
  GTECH_XOR2 C2196 ( .A(N83), .B(INPUT[332]), .Z(p_plane[76]) );
  GTECH_XOR2 C2197 ( .A(N84), .B(INPUT[331]), .Z(p_plane[75]) );
  GTECH_XOR2 C2198 ( .A(N85), .B(INPUT[330]), .Z(p_plane[74]) );
  GTECH_XOR2 C2199 ( .A(N86), .B(INPUT[329]), .Z(p_plane[73]) );
  GTECH_XOR2 C2200 ( .A(N87), .B(INPUT[328]), .Z(p_plane[72]) );
  GTECH_XOR2 C2201 ( .A(N88), .B(INPUT[327]), .Z(p_plane[71]) );
  GTECH_XOR2 C2202 ( .A(N89), .B(INPUT[326]), .Z(p_plane[70]) );
  GTECH_XOR2 C2203 ( .A(N90), .B(INPUT[325]), .Z(p_plane[69]) );
  GTECH_XOR2 C2204 ( .A(N91), .B(INPUT[324]), .Z(p_plane[68]) );
  GTECH_XOR2 C2205 ( .A(N92), .B(INPUT[323]), .Z(p_plane[67]) );
  GTECH_XOR2 C2206 ( .A(N93), .B(INPUT[322]), .Z(p_plane[66]) );
  GTECH_XOR2 C2207 ( .A(N94), .B(INPUT[321]), .Z(p_plane[65]) );
  GTECH_XOR2 C2208 ( .A(N95), .B(INPUT[320]), .Z(p_plane[64]) );
  GTECH_XOR2 C2209 ( .A(N96), .B(INPUT[319]), .Z(p_plane[63]) );
  GTECH_XOR2 C2210 ( .A(N97), .B(INPUT[318]), .Z(p_plane[62]) );
  GTECH_XOR2 C2211 ( .A(N98), .B(INPUT[317]), .Z(p_plane[61]) );
  GTECH_XOR2 C2212 ( .A(N99), .B(INPUT[316]), .Z(p_plane[60]) );
  GTECH_XOR2 C2213 ( .A(N100), .B(INPUT[315]), .Z(p_plane[59]) );
  GTECH_XOR2 C2214 ( .A(N101), .B(INPUT[314]), .Z(p_plane[58]) );
  GTECH_XOR2 C2215 ( .A(N102), .B(INPUT[313]), .Z(p_plane[57]) );
  GTECH_XOR2 C2216 ( .A(N103), .B(INPUT[312]), .Z(p_plane[56]) );
  GTECH_XOR2 C2217 ( .A(N104), .B(INPUT[311]), .Z(p_plane[55]) );
  GTECH_XOR2 C2218 ( .A(N105), .B(INPUT[310]), .Z(p_plane[54]) );
  GTECH_XOR2 C2219 ( .A(N106), .B(INPUT[309]), .Z(p_plane[53]) );
  GTECH_XOR2 C2220 ( .A(N107), .B(INPUT[308]), .Z(p_plane[52]) );
  GTECH_XOR2 C2221 ( .A(N108), .B(INPUT[307]), .Z(p_plane[51]) );
  GTECH_XOR2 C2222 ( .A(N109), .B(INPUT[306]), .Z(p_plane[50]) );
  GTECH_XOR2 C2223 ( .A(N110), .B(INPUT[305]), .Z(p_plane[49]) );
  GTECH_XOR2 C2224 ( .A(N111), .B(INPUT[304]), .Z(p_plane[48]) );
  GTECH_XOR2 C2225 ( .A(N112), .B(INPUT[303]), .Z(p_plane[47]) );
  GTECH_XOR2 C2226 ( .A(N113), .B(INPUT[302]), .Z(p_plane[46]) );
  GTECH_XOR2 C2227 ( .A(N114), .B(INPUT[301]), .Z(p_plane[45]) );
  GTECH_XOR2 C2228 ( .A(N115), .B(INPUT[300]), .Z(p_plane[44]) );
  GTECH_XOR2 C2229 ( .A(N116), .B(INPUT[299]), .Z(p_plane[43]) );
  GTECH_XOR2 C2230 ( .A(N117), .B(INPUT[298]), .Z(p_plane[42]) );
  GTECH_XOR2 C2231 ( .A(N118), .B(INPUT[297]), .Z(p_plane[41]) );
  GTECH_XOR2 C2232 ( .A(N119), .B(INPUT[296]), .Z(p_plane[40]) );
  GTECH_XOR2 C2233 ( .A(N120), .B(INPUT[295]), .Z(p_plane[39]) );
  GTECH_XOR2 C2234 ( .A(N121), .B(INPUT[294]), .Z(p_plane[38]) );
  GTECH_XOR2 C2235 ( .A(N122), .B(INPUT[293]), .Z(p_plane[37]) );
  GTECH_XOR2 C2236 ( .A(N123), .B(INPUT[292]), .Z(p_plane[36]) );
  GTECH_XOR2 C2237 ( .A(N124), .B(INPUT[291]), .Z(p_plane[35]) );
  GTECH_XOR2 C2238 ( .A(N125), .B(INPUT[290]), .Z(p_plane[34]) );
  GTECH_XOR2 C2239 ( .A(N126), .B(INPUT[289]), .Z(p_plane[33]) );
  GTECH_XOR2 C2240 ( .A(N127), .B(INPUT[288]), .Z(p_plane[32]) );
  GTECH_XOR2 C2241 ( .A(N128), .B(INPUT[287]), .Z(p_plane[31]) );
  GTECH_XOR2 C2242 ( .A(N129), .B(INPUT[286]), .Z(p_plane[30]) );
  GTECH_XOR2 C2243 ( .A(N130), .B(INPUT[285]), .Z(p_plane[29]) );
  GTECH_XOR2 C2244 ( .A(N131), .B(INPUT[284]), .Z(p_plane[28]) );
  GTECH_XOR2 C2245 ( .A(N132), .B(INPUT[283]), .Z(p_plane[27]) );
  GTECH_XOR2 C2246 ( .A(N133), .B(INPUT[282]), .Z(p_plane[26]) );
  GTECH_XOR2 C2247 ( .A(N134), .B(INPUT[281]), .Z(p_plane[25]) );
  GTECH_XOR2 C2248 ( .A(N135), .B(INPUT[280]), .Z(p_plane[24]) );
  GTECH_XOR2 C2249 ( .A(N136), .B(INPUT[279]), .Z(p_plane[23]) );
  GTECH_XOR2 C2250 ( .A(N137), .B(INPUT[278]), .Z(p_plane[22]) );
  GTECH_XOR2 C2251 ( .A(N138), .B(INPUT[277]), .Z(p_plane[21]) );
  GTECH_XOR2 C2252 ( .A(N139), .B(INPUT[276]), .Z(p_plane[20]) );
  GTECH_XOR2 C2253 ( .A(N140), .B(INPUT[275]), .Z(p_plane[19]) );
  GTECH_XOR2 C2254 ( .A(N141), .B(INPUT[274]), .Z(p_plane[18]) );
  GTECH_XOR2 C2255 ( .A(N142), .B(INPUT[273]), .Z(p_plane[17]) );
  GTECH_XOR2 C2256 ( .A(N143), .B(INPUT[272]), .Z(p_plane[16]) );
  GTECH_XOR2 C2257 ( .A(N144), .B(INPUT[271]), .Z(p_plane[15]) );
  GTECH_XOR2 C2258 ( .A(N145), .B(INPUT[270]), .Z(p_plane[14]) );
  GTECH_XOR2 C2259 ( .A(N146), .B(INPUT[269]), .Z(p_plane[13]) );
  GTECH_XOR2 C2260 ( .A(N147), .B(INPUT[268]), .Z(p_plane[12]) );
  GTECH_XOR2 C2261 ( .A(N148), .B(INPUT[267]), .Z(p_plane[11]) );
  GTECH_XOR2 C2262 ( .A(N149), .B(INPUT[266]), .Z(p_plane[10]) );
  GTECH_XOR2 C2263 ( .A(N150), .B(INPUT[265]), .Z(p_plane[9]) );
  GTECH_XOR2 C2264 ( .A(N151), .B(INPUT[264]), .Z(p_plane[8]) );
  GTECH_XOR2 C2265 ( .A(N152), .B(INPUT[263]), .Z(p_plane[7]) );
  GTECH_XOR2 C2266 ( .A(N153), .B(INPUT[262]), .Z(p_plane[6]) );
  GTECH_XOR2 C2267 ( .A(N154), .B(INPUT[261]), .Z(p_plane[5]) );
  GTECH_XOR2 C2268 ( .A(N155), .B(INPUT[260]), .Z(p_plane[4]) );
  GTECH_XOR2 C2269 ( .A(N156), .B(INPUT[259]), .Z(p_plane[3]) );
  GTECH_XOR2 C2270 ( .A(N157), .B(INPUT[258]), .Z(p_plane[2]) );
  GTECH_XOR2 C2271 ( .A(N158), .B(INPUT[257]), .Z(p_plane[1]) );
  GTECH_XOR2 C2272 ( .A(N159), .B(INPUT[256]), .Z(p_plane[0]) );
  GTECH_XOR2 C2273 ( .A(p_plane[26]), .B(p_plane[17]), .Z(eshift[127]) );
  GTECH_XOR2 C2274 ( .A(p_plane[25]), .B(p_plane[16]), .Z(eshift[126]) );
  GTECH_XOR2 C2275 ( .A(p_plane[24]), .B(p_plane[15]), .Z(eshift[125]) );
  GTECH_XOR2 C2276 ( .A(p_plane[23]), .B(p_plane[14]), .Z(eshift[124]) );
  GTECH_XOR2 C2277 ( .A(p_plane[22]), .B(p_plane[13]), .Z(eshift[123]) );
  GTECH_XOR2 C2278 ( .A(p_plane[21]), .B(p_plane[12]), .Z(eshift[122]) );
  GTECH_XOR2 C2279 ( .A(p_plane[20]), .B(p_plane[11]), .Z(eshift[121]) );
  GTECH_XOR2 C2280 ( .A(p_plane[19]), .B(p_plane[10]), .Z(eshift[120]) );
  GTECH_XOR2 C2281 ( .A(p_plane[18]), .B(p_plane[9]), .Z(eshift[119]) );
  GTECH_XOR2 C2282 ( .A(p_plane[17]), .B(p_plane[8]), .Z(eshift[118]) );
  GTECH_XOR2 C2283 ( .A(p_plane[16]), .B(p_plane[7]), .Z(eshift[117]) );
  GTECH_XOR2 C2284 ( .A(p_plane[15]), .B(p_plane[6]), .Z(eshift[116]) );
  GTECH_XOR2 C2285 ( .A(p_plane[14]), .B(p_plane[5]), .Z(eshift[115]) );
  GTECH_XOR2 C2286 ( .A(p_plane[13]), .B(p_plane[4]), .Z(eshift[114]) );
  GTECH_XOR2 C2287 ( .A(p_plane[12]), .B(p_plane[3]), .Z(eshift[113]) );
  GTECH_XOR2 C2288 ( .A(p_plane[11]), .B(p_plane[2]), .Z(eshift[112]) );
  GTECH_XOR2 C2289 ( .A(p_plane[10]), .B(p_plane[1]), .Z(eshift[111]) );
  GTECH_XOR2 C2290 ( .A(p_plane[9]), .B(p_plane[0]), .Z(eshift[110]) );
  GTECH_XOR2 C2291 ( .A(p_plane[8]), .B(p_plane[31]), .Z(eshift[109]) );
  GTECH_XOR2 C2292 ( .A(p_plane[7]), .B(p_plane[30]), .Z(eshift[108]) );
  GTECH_XOR2 C2293 ( .A(p_plane[6]), .B(p_plane[29]), .Z(eshift[107]) );
  GTECH_XOR2 C2294 ( .A(p_plane[5]), .B(p_plane[28]), .Z(eshift[106]) );
  GTECH_XOR2 C2295 ( .A(p_plane[4]), .B(p_plane[27]), .Z(eshift[105]) );
  GTECH_XOR2 C2296 ( .A(p_plane[3]), .B(p_plane[26]), .Z(eshift[104]) );
  GTECH_XOR2 C2297 ( .A(p_plane[2]), .B(p_plane[25]), .Z(eshift[103]) );
  GTECH_XOR2 C2298 ( .A(p_plane[1]), .B(p_plane[24]), .Z(eshift[102]) );
  GTECH_XOR2 C2299 ( .A(p_plane[0]), .B(p_plane[23]), .Z(eshift[101]) );
  GTECH_XOR2 C2300 ( .A(p_plane[31]), .B(p_plane[22]), .Z(eshift[100]) );
  GTECH_XOR2 C2301 ( .A(p_plane[30]), .B(p_plane[21]), .Z(eshift[99]) );
  GTECH_XOR2 C2302 ( .A(p_plane[29]), .B(p_plane[20]), .Z(eshift[98]) );
  GTECH_XOR2 C2303 ( .A(p_plane[28]), .B(p_plane[19]), .Z(eshift[97]) );
  GTECH_XOR2 C2304 ( .A(p_plane[27]), .B(p_plane[18]), .Z(eshift[96]) );
  GTECH_XOR2 C2305 ( .A(p_plane[122]), .B(p_plane[113]), .Z(eshift[95]) );
  GTECH_XOR2 C2306 ( .A(p_plane[121]), .B(p_plane[112]), .Z(eshift[94]) );
  GTECH_XOR2 C2307 ( .A(p_plane[120]), .B(p_plane[111]), .Z(eshift[93]) );
  GTECH_XOR2 C2308 ( .A(p_plane[119]), .B(p_plane[110]), .Z(eshift[92]) );
  GTECH_XOR2 C2309 ( .A(p_plane[118]), .B(p_plane[109]), .Z(eshift[91]) );
  GTECH_XOR2 C2310 ( .A(p_plane[117]), .B(p_plane[108]), .Z(eshift[90]) );
  GTECH_XOR2 C2311 ( .A(p_plane[116]), .B(p_plane[107]), .Z(eshift[89]) );
  GTECH_XOR2 C2312 ( .A(p_plane[115]), .B(p_plane[106]), .Z(eshift[88]) );
  GTECH_XOR2 C2313 ( .A(p_plane[114]), .B(p_plane[105]), .Z(eshift[87]) );
  GTECH_XOR2 C2314 ( .A(p_plane[113]), .B(p_plane[104]), .Z(eshift[86]) );
  GTECH_XOR2 C2315 ( .A(p_plane[112]), .B(p_plane[103]), .Z(eshift[85]) );
  GTECH_XOR2 C2316 ( .A(p_plane[111]), .B(p_plane[102]), .Z(eshift[84]) );
  GTECH_XOR2 C2317 ( .A(p_plane[110]), .B(p_plane[101]), .Z(eshift[83]) );
  GTECH_XOR2 C2318 ( .A(p_plane[109]), .B(p_plane[100]), .Z(eshift[82]) );
  GTECH_XOR2 C2319 ( .A(p_plane[108]), .B(p_plane[99]), .Z(eshift[81]) );
  GTECH_XOR2 C2320 ( .A(p_plane[107]), .B(p_plane[98]), .Z(eshift[80]) );
  GTECH_XOR2 C2321 ( .A(p_plane[106]), .B(p_plane[97]), .Z(eshift[79]) );
  GTECH_XOR2 C2322 ( .A(p_plane[105]), .B(p_plane[96]), .Z(eshift[78]) );
  GTECH_XOR2 C2323 ( .A(p_plane[104]), .B(p_plane[127]), .Z(eshift[77]) );
  GTECH_XOR2 C2324 ( .A(p_plane[103]), .B(p_plane[126]), .Z(eshift[76]) );
  GTECH_XOR2 C2325 ( .A(p_plane[102]), .B(p_plane[125]), .Z(eshift[75]) );
  GTECH_XOR2 C2326 ( .A(p_plane[101]), .B(p_plane[124]), .Z(eshift[74]) );
  GTECH_XOR2 C2327 ( .A(p_plane[100]), .B(p_plane[123]), .Z(eshift[73]) );
  GTECH_XOR2 C2328 ( .A(p_plane[99]), .B(p_plane[122]), .Z(eshift[72]) );
  GTECH_XOR2 C2329 ( .A(p_plane[98]), .B(p_plane[121]), .Z(eshift[71]) );
  GTECH_XOR2 C2330 ( .A(p_plane[97]), .B(p_plane[120]), .Z(eshift[70]) );
  GTECH_XOR2 C2331 ( .A(p_plane[96]), .B(p_plane[119]), .Z(eshift[69]) );
  GTECH_XOR2 C2332 ( .A(p_plane[127]), .B(p_plane[118]), .Z(eshift[68]) );
  GTECH_XOR2 C2333 ( .A(p_plane[126]), .B(p_plane[117]), .Z(eshift[67]) );
  GTECH_XOR2 C2334 ( .A(p_plane[125]), .B(p_plane[116]), .Z(eshift[66]) );
  GTECH_XOR2 C2335 ( .A(p_plane[124]), .B(p_plane[115]), .Z(eshift[65]) );
  GTECH_XOR2 C2336 ( .A(p_plane[123]), .B(p_plane[114]), .Z(eshift[64]) );
  GTECH_XOR2 C2337 ( .A(p_plane[90]), .B(p_plane[81]), .Z(eshift[63]) );
  GTECH_XOR2 C2338 ( .A(p_plane[89]), .B(p_plane[80]), .Z(eshift[62]) );
  GTECH_XOR2 C2339 ( .A(p_plane[88]), .B(p_plane[79]), .Z(eshift[61]) );
  GTECH_XOR2 C2340 ( .A(p_plane[87]), .B(p_plane[78]), .Z(eshift[60]) );
  GTECH_XOR2 C2341 ( .A(p_plane[86]), .B(p_plane[77]), .Z(eshift[59]) );
  GTECH_XOR2 C2342 ( .A(p_plane[85]), .B(p_plane[76]), .Z(eshift[58]) );
  GTECH_XOR2 C2343 ( .A(p_plane[84]), .B(p_plane[75]), .Z(eshift[57]) );
  GTECH_XOR2 C2344 ( .A(p_plane[83]), .B(p_plane[74]), .Z(eshift[56]) );
  GTECH_XOR2 C2345 ( .A(p_plane[82]), .B(p_plane[73]), .Z(eshift[55]) );
  GTECH_XOR2 C2346 ( .A(p_plane[81]), .B(p_plane[72]), .Z(eshift[54]) );
  GTECH_XOR2 C2347 ( .A(p_plane[80]), .B(p_plane[71]), .Z(eshift[53]) );
  GTECH_XOR2 C2348 ( .A(p_plane[79]), .B(p_plane[70]), .Z(eshift[52]) );
  GTECH_XOR2 C2349 ( .A(p_plane[78]), .B(p_plane[69]), .Z(eshift[51]) );
  GTECH_XOR2 C2350 ( .A(p_plane[77]), .B(p_plane[68]), .Z(eshift[50]) );
  GTECH_XOR2 C2351 ( .A(p_plane[76]), .B(p_plane[67]), .Z(eshift[49]) );
  GTECH_XOR2 C2352 ( .A(p_plane[75]), .B(p_plane[66]), .Z(eshift[48]) );
  GTECH_XOR2 C2353 ( .A(p_plane[74]), .B(p_plane[65]), .Z(eshift[47]) );
  GTECH_XOR2 C2354 ( .A(p_plane[73]), .B(p_plane[64]), .Z(eshift[46]) );
  GTECH_XOR2 C2355 ( .A(p_plane[72]), .B(p_plane[95]), .Z(eshift[45]) );
  GTECH_XOR2 C2356 ( .A(p_plane[71]), .B(p_plane[94]), .Z(eshift[44]) );
  GTECH_XOR2 C2357 ( .A(p_plane[70]), .B(p_plane[93]), .Z(eshift[43]) );
  GTECH_XOR2 C2358 ( .A(p_plane[69]), .B(p_plane[92]), .Z(eshift[42]) );
  GTECH_XOR2 C2359 ( .A(p_plane[68]), .B(p_plane[91]), .Z(eshift[41]) );
  GTECH_XOR2 C2360 ( .A(p_plane[67]), .B(p_plane[90]), .Z(eshift[40]) );
  GTECH_XOR2 C2361 ( .A(p_plane[66]), .B(p_plane[89]), .Z(eshift[39]) );
  GTECH_XOR2 C2362 ( .A(p_plane[65]), .B(p_plane[88]), .Z(eshift[38]) );
  GTECH_XOR2 C2363 ( .A(p_plane[64]), .B(p_plane[87]), .Z(eshift[37]) );
  GTECH_XOR2 C2364 ( .A(p_plane[95]), .B(p_plane[86]), .Z(eshift[36]) );
  GTECH_XOR2 C2365 ( .A(p_plane[94]), .B(p_plane[85]), .Z(eshift[35]) );
  GTECH_XOR2 C2366 ( .A(p_plane[93]), .B(p_plane[84]), .Z(eshift[34]) );
  GTECH_XOR2 C2367 ( .A(p_plane[92]), .B(p_plane[83]), .Z(eshift[33]) );
  GTECH_XOR2 C2368 ( .A(p_plane[91]), .B(p_plane[82]), .Z(eshift[32]) );
  GTECH_XOR2 C2369 ( .A(p_plane[58]), .B(p_plane[49]), .Z(eshift[31]) );
  GTECH_XOR2 C2370 ( .A(p_plane[57]), .B(p_plane[48]), .Z(eshift[30]) );
  GTECH_XOR2 C2371 ( .A(p_plane[56]), .B(p_plane[47]), .Z(eshift[29]) );
  GTECH_XOR2 C2372 ( .A(p_plane[55]), .B(p_plane[46]), .Z(eshift[28]) );
  GTECH_XOR2 C2373 ( .A(p_plane[54]), .B(p_plane[45]), .Z(eshift[27]) );
  GTECH_XOR2 C2374 ( .A(p_plane[53]), .B(p_plane[44]), .Z(eshift[26]) );
  GTECH_XOR2 C2375 ( .A(p_plane[52]), .B(p_plane[43]), .Z(eshift[25]) );
  GTECH_XOR2 C2376 ( .A(p_plane[51]), .B(p_plane[42]), .Z(eshift[24]) );
  GTECH_XOR2 C2377 ( .A(p_plane[50]), .B(p_plane[41]), .Z(eshift[23]) );
  GTECH_XOR2 C2378 ( .A(p_plane[49]), .B(p_plane[40]), .Z(eshift[22]) );
  GTECH_XOR2 C2379 ( .A(p_plane[48]), .B(p_plane[39]), .Z(eshift[21]) );
  GTECH_XOR2 C2380 ( .A(p_plane[47]), .B(p_plane[38]), .Z(eshift[20]) );
  GTECH_XOR2 C2381 ( .A(p_plane[46]), .B(p_plane[37]), .Z(eshift[19]) );
  GTECH_XOR2 C2382 ( .A(p_plane[45]), .B(p_plane[36]), .Z(eshift[18]) );
  GTECH_XOR2 C2383 ( .A(p_plane[44]), .B(p_plane[35]), .Z(eshift[17]) );
  GTECH_XOR2 C2384 ( .A(p_plane[43]), .B(p_plane[34]), .Z(eshift[16]) );
  GTECH_XOR2 C2385 ( .A(p_plane[42]), .B(p_plane[33]), .Z(eshift[15]) );
  GTECH_XOR2 C2386 ( .A(p_plane[41]), .B(p_plane[32]), .Z(eshift[14]) );
  GTECH_XOR2 C2387 ( .A(p_plane[40]), .B(p_plane[63]), .Z(eshift[13]) );
  GTECH_XOR2 C2388 ( .A(p_plane[39]), .B(p_plane[62]), .Z(eshift[12]) );
  GTECH_XOR2 C2389 ( .A(p_plane[38]), .B(p_plane[61]), .Z(eshift[11]) );
  GTECH_XOR2 C2390 ( .A(p_plane[37]), .B(p_plane[60]), .Z(eshift[10]) );
  GTECH_XOR2 C2391 ( .A(p_plane[36]), .B(p_plane[59]), .Z(eshift[9]) );
  GTECH_XOR2 C2392 ( .A(p_plane[35]), .B(p_plane[58]), .Z(eshift[8]) );
  GTECH_XOR2 C2393 ( .A(p_plane[34]), .B(p_plane[57]), .Z(eshift[7]) );
  GTECH_XOR2 C2394 ( .A(p_plane[33]), .B(p_plane[56]), .Z(eshift[6]) );
  GTECH_XOR2 C2395 ( .A(p_plane[32]), .B(p_plane[55]), .Z(eshift[5]) );
  GTECH_XOR2 C2396 ( .A(p_plane[63]), .B(p_plane[54]), .Z(eshift[4]) );
  GTECH_XOR2 C2397 ( .A(p_plane[62]), .B(p_plane[53]), .Z(eshift[3]) );
  GTECH_XOR2 C2398 ( .A(p_plane[61]), .B(p_plane[52]), .Z(eshift[2]) );
  GTECH_XOR2 C2399 ( .A(p_plane[60]), .B(p_plane[51]), .Z(eshift[1]) );
  GTECH_XOR2 C2400 ( .A(p_plane[59]), .B(p_plane[50]), .Z(eshift[0]) );
  GTECH_XOR2 C2401 ( .A(INPUT[383]), .B(eshift[127]), .Z(plane2_2[127]) );
  GTECH_XOR2 C2402 ( .A(INPUT[382]), .B(eshift[126]), .Z(plane2_2[126]) );
  GTECH_XOR2 C2403 ( .A(INPUT[381]), .B(eshift[125]), .Z(plane2_2[125]) );
  GTECH_XOR2 C2404 ( .A(INPUT[380]), .B(eshift[124]), .Z(plane2_2[124]) );
  GTECH_XOR2 C2405 ( .A(INPUT[379]), .B(eshift[123]), .Z(plane2_2[123]) );
  GTECH_XOR2 C2406 ( .A(INPUT[378]), .B(eshift[122]), .Z(plane2_2[122]) );
  GTECH_XOR2 C2407 ( .A(INPUT[377]), .B(eshift[121]), .Z(plane2_2[121]) );
  GTECH_XOR2 C2408 ( .A(INPUT[376]), .B(eshift[120]), .Z(plane2_2[120]) );
  GTECH_XOR2 C2409 ( .A(INPUT[375]), .B(eshift[119]), .Z(plane2_2[119]) );
  GTECH_XOR2 C2410 ( .A(INPUT[374]), .B(eshift[118]), .Z(plane2_2[118]) );
  GTECH_XOR2 C2411 ( .A(INPUT[373]), .B(eshift[117]), .Z(plane2_2[117]) );
  GTECH_XOR2 C2412 ( .A(INPUT[372]), .B(eshift[116]), .Z(plane2_2[116]) );
  GTECH_XOR2 C2413 ( .A(INPUT[371]), .B(eshift[115]), .Z(plane2_2[115]) );
  GTECH_XOR2 C2414 ( .A(INPUT[370]), .B(eshift[114]), .Z(plane2_2[114]) );
  GTECH_XOR2 C2415 ( .A(INPUT[369]), .B(eshift[113]), .Z(plane2_2[113]) );
  GTECH_XOR2 C2416 ( .A(INPUT[368]), .B(eshift[112]), .Z(plane2_2[112]) );
  GTECH_XOR2 C2417 ( .A(INPUT[367]), .B(eshift[111]), .Z(plane2_2[111]) );
  GTECH_XOR2 C2418 ( .A(INPUT[366]), .B(eshift[110]), .Z(plane2_2[110]) );
  GTECH_XOR2 C2419 ( .A(INPUT[365]), .B(eshift[109]), .Z(plane2_2[109]) );
  GTECH_XOR2 C2420 ( .A(INPUT[364]), .B(eshift[108]), .Z(plane2_2[108]) );
  GTECH_XOR2 C2421 ( .A(INPUT[363]), .B(eshift[107]), .Z(plane2_2[107]) );
  GTECH_XOR2 C2422 ( .A(INPUT[362]), .B(eshift[106]), .Z(plane2_2[106]) );
  GTECH_XOR2 C2423 ( .A(INPUT[361]), .B(eshift[105]), .Z(plane2_2[105]) );
  GTECH_XOR2 C2424 ( .A(INPUT[360]), .B(eshift[104]), .Z(plane2_2[104]) );
  GTECH_XOR2 C2425 ( .A(INPUT[359]), .B(eshift[103]), .Z(plane2_2[103]) );
  GTECH_XOR2 C2426 ( .A(INPUT[358]), .B(eshift[102]), .Z(plane2_2[102]) );
  GTECH_XOR2 C2427 ( .A(INPUT[357]), .B(eshift[101]), .Z(plane2_2[101]) );
  GTECH_XOR2 C2428 ( .A(INPUT[356]), .B(eshift[100]), .Z(plane2_2[100]) );
  GTECH_XOR2 C2429 ( .A(INPUT[355]), .B(eshift[99]), .Z(plane2_2[99]) );
  GTECH_XOR2 C2430 ( .A(INPUT[354]), .B(eshift[98]), .Z(plane2_2[98]) );
  GTECH_XOR2 C2431 ( .A(INPUT[353]), .B(eshift[97]), .Z(plane2_2[97]) );
  GTECH_XOR2 C2432 ( .A(INPUT[352]), .B(eshift[96]), .Z(plane2_2[96]) );
  GTECH_XOR2 C2433 ( .A(INPUT[351]), .B(eshift[95]), .Z(plane2_2[95]) );
  GTECH_XOR2 C2434 ( .A(INPUT[350]), .B(eshift[94]), .Z(plane2_2[94]) );
  GTECH_XOR2 C2435 ( .A(INPUT[349]), .B(eshift[93]), .Z(plane2_2[93]) );
  GTECH_XOR2 C2436 ( .A(INPUT[348]), .B(eshift[92]), .Z(plane2_2[92]) );
  GTECH_XOR2 C2437 ( .A(INPUT[347]), .B(eshift[91]), .Z(plane2_2[91]) );
  GTECH_XOR2 C2438 ( .A(INPUT[346]), .B(eshift[90]), .Z(plane2_2[90]) );
  GTECH_XOR2 C2439 ( .A(INPUT[345]), .B(eshift[89]), .Z(plane2_2[89]) );
  GTECH_XOR2 C2440 ( .A(INPUT[344]), .B(eshift[88]), .Z(plane2_2[88]) );
  GTECH_XOR2 C2441 ( .A(INPUT[343]), .B(eshift[87]), .Z(plane2_2[87]) );
  GTECH_XOR2 C2442 ( .A(INPUT[342]), .B(eshift[86]), .Z(plane2_2[86]) );
  GTECH_XOR2 C2443 ( .A(INPUT[341]), .B(eshift[85]), .Z(plane2_2[85]) );
  GTECH_XOR2 C2444 ( .A(INPUT[340]), .B(eshift[84]), .Z(plane2_2[84]) );
  GTECH_XOR2 C2445 ( .A(INPUT[339]), .B(eshift[83]), .Z(plane2_2[83]) );
  GTECH_XOR2 C2446 ( .A(INPUT[338]), .B(eshift[82]), .Z(plane2_2[82]) );
  GTECH_XOR2 C2447 ( .A(INPUT[337]), .B(eshift[81]), .Z(plane2_2[81]) );
  GTECH_XOR2 C2448 ( .A(INPUT[336]), .B(eshift[80]), .Z(plane2_2[80]) );
  GTECH_XOR2 C2449 ( .A(INPUT[335]), .B(eshift[79]), .Z(plane2_2[79]) );
  GTECH_XOR2 C2450 ( .A(INPUT[334]), .B(eshift[78]), .Z(plane2_2[78]) );
  GTECH_XOR2 C2451 ( .A(INPUT[333]), .B(eshift[77]), .Z(plane2_2[77]) );
  GTECH_XOR2 C2452 ( .A(INPUT[332]), .B(eshift[76]), .Z(plane2_2[76]) );
  GTECH_XOR2 C2453 ( .A(INPUT[331]), .B(eshift[75]), .Z(plane2_2[75]) );
  GTECH_XOR2 C2454 ( .A(INPUT[330]), .B(eshift[74]), .Z(plane2_2[74]) );
  GTECH_XOR2 C2455 ( .A(INPUT[329]), .B(eshift[73]), .Z(plane2_2[73]) );
  GTECH_XOR2 C2456 ( .A(INPUT[328]), .B(eshift[72]), .Z(plane2_2[72]) );
  GTECH_XOR2 C2457 ( .A(INPUT[327]), .B(eshift[71]), .Z(plane2_2[71]) );
  GTECH_XOR2 C2458 ( .A(INPUT[326]), .B(eshift[70]), .Z(plane2_2[70]) );
  GTECH_XOR2 C2459 ( .A(INPUT[325]), .B(eshift[69]), .Z(plane2_2[69]) );
  GTECH_XOR2 C2460 ( .A(INPUT[324]), .B(eshift[68]), .Z(plane2_2[68]) );
  GTECH_XOR2 C2461 ( .A(INPUT[323]), .B(eshift[67]), .Z(plane2_2[67]) );
  GTECH_XOR2 C2462 ( .A(INPUT[322]), .B(eshift[66]), .Z(plane2_2[66]) );
  GTECH_XOR2 C2463 ( .A(INPUT[321]), .B(eshift[65]), .Z(plane2_2[65]) );
  GTECH_XOR2 C2464 ( .A(INPUT[320]), .B(eshift[64]), .Z(plane2_2[64]) );
  GTECH_XOR2 C2465 ( .A(INPUT[319]), .B(eshift[63]), .Z(plane2_2[63]) );
  GTECH_XOR2 C2466 ( .A(INPUT[318]), .B(eshift[62]), .Z(plane2_2[62]) );
  GTECH_XOR2 C2467 ( .A(INPUT[317]), .B(eshift[61]), .Z(plane2_2[61]) );
  GTECH_XOR2 C2468 ( .A(INPUT[316]), .B(eshift[60]), .Z(plane2_2[60]) );
  GTECH_XOR2 C2469 ( .A(INPUT[315]), .B(eshift[59]), .Z(plane2_2[59]) );
  GTECH_XOR2 C2470 ( .A(INPUT[314]), .B(eshift[58]), .Z(plane2_2[58]) );
  GTECH_XOR2 C2471 ( .A(INPUT[313]), .B(eshift[57]), .Z(plane2_2[57]) );
  GTECH_XOR2 C2472 ( .A(INPUT[312]), .B(eshift[56]), .Z(plane2_2[56]) );
  GTECH_XOR2 C2473 ( .A(INPUT[311]), .B(eshift[55]), .Z(plane2_2[55]) );
  GTECH_XOR2 C2474 ( .A(INPUT[310]), .B(eshift[54]), .Z(plane2_2[54]) );
  GTECH_XOR2 C2475 ( .A(INPUT[309]), .B(eshift[53]), .Z(plane2_2[53]) );
  GTECH_XOR2 C2476 ( .A(INPUT[308]), .B(eshift[52]), .Z(plane2_2[52]) );
  GTECH_XOR2 C2477 ( .A(INPUT[307]), .B(eshift[51]), .Z(plane2_2[51]) );
  GTECH_XOR2 C2478 ( .A(INPUT[306]), .B(eshift[50]), .Z(plane2_2[50]) );
  GTECH_XOR2 C2479 ( .A(INPUT[305]), .B(eshift[49]), .Z(plane2_2[49]) );
  GTECH_XOR2 C2480 ( .A(INPUT[304]), .B(eshift[48]), .Z(plane2_2[48]) );
  GTECH_XOR2 C2481 ( .A(INPUT[303]), .B(eshift[47]), .Z(plane2_2[47]) );
  GTECH_XOR2 C2482 ( .A(INPUT[302]), .B(eshift[46]), .Z(plane2_2[46]) );
  GTECH_XOR2 C2483 ( .A(INPUT[301]), .B(eshift[45]), .Z(plane2_2[45]) );
  GTECH_XOR2 C2484 ( .A(INPUT[300]), .B(eshift[44]), .Z(plane2_2[44]) );
  GTECH_XOR2 C2485 ( .A(INPUT[299]), .B(eshift[43]), .Z(plane2_2[43]) );
  GTECH_XOR2 C2486 ( .A(INPUT[298]), .B(eshift[42]), .Z(plane2_2[42]) );
  GTECH_XOR2 C2487 ( .A(INPUT[297]), .B(eshift[41]), .Z(plane2_2[41]) );
  GTECH_XOR2 C2488 ( .A(INPUT[296]), .B(eshift[40]), .Z(plane2_2[40]) );
  GTECH_XOR2 C2489 ( .A(INPUT[295]), .B(eshift[39]), .Z(plane2_2[39]) );
  GTECH_XOR2 C2490 ( .A(INPUT[294]), .B(eshift[38]), .Z(plane2_2[38]) );
  GTECH_XOR2 C2491 ( .A(INPUT[293]), .B(eshift[37]), .Z(plane2_2[37]) );
  GTECH_XOR2 C2492 ( .A(INPUT[292]), .B(eshift[36]), .Z(plane2_2[36]) );
  GTECH_XOR2 C2493 ( .A(INPUT[291]), .B(eshift[35]), .Z(plane2_2[35]) );
  GTECH_XOR2 C2494 ( .A(INPUT[290]), .B(eshift[34]), .Z(plane2_2[34]) );
  GTECH_XOR2 C2495 ( .A(INPUT[289]), .B(eshift[33]), .Z(plane2_2[33]) );
  GTECH_XOR2 C2496 ( .A(INPUT[288]), .B(eshift[32]), .Z(plane2_2[32]) );
  GTECH_XOR2 C2497 ( .A(INPUT[287]), .B(eshift[31]), .Z(plane2_2[31]) );
  GTECH_XOR2 C2498 ( .A(INPUT[286]), .B(eshift[30]), .Z(plane2_2[30]) );
  GTECH_XOR2 C2499 ( .A(INPUT[285]), .B(eshift[29]), .Z(plane2_2[29]) );
  GTECH_XOR2 C2500 ( .A(INPUT[284]), .B(eshift[28]), .Z(plane2_2[28]) );
  GTECH_XOR2 C2501 ( .A(INPUT[283]), .B(eshift[27]), .Z(plane2_2[27]) );
  GTECH_XOR2 C2502 ( .A(INPUT[282]), .B(eshift[26]), .Z(plane2_2[26]) );
  GTECH_XOR2 C2503 ( .A(INPUT[281]), .B(eshift[25]), .Z(plane2_2[25]) );
  GTECH_XOR2 C2504 ( .A(INPUT[280]), .B(eshift[24]), .Z(plane2_2[24]) );
  GTECH_XOR2 C2505 ( .A(INPUT[279]), .B(eshift[23]), .Z(plane2_2[23]) );
  GTECH_XOR2 C2506 ( .A(INPUT[278]), .B(eshift[22]), .Z(plane2_2[22]) );
  GTECH_XOR2 C2507 ( .A(INPUT[277]), .B(eshift[21]), .Z(plane2_2[21]) );
  GTECH_XOR2 C2508 ( .A(INPUT[276]), .B(eshift[20]), .Z(plane2_2[20]) );
  GTECH_XOR2 C2509 ( .A(INPUT[275]), .B(eshift[19]), .Z(plane2_2[19]) );
  GTECH_XOR2 C2510 ( .A(INPUT[274]), .B(eshift[18]), .Z(plane2_2[18]) );
  GTECH_XOR2 C2511 ( .A(INPUT[273]), .B(eshift[17]), .Z(plane2_2[17]) );
  GTECH_XOR2 C2512 ( .A(INPUT[272]), .B(eshift[16]), .Z(plane2_2[16]) );
  GTECH_XOR2 C2513 ( .A(INPUT[271]), .B(eshift[15]), .Z(plane2_2[15]) );
  GTECH_XOR2 C2514 ( .A(INPUT[270]), .B(eshift[14]), .Z(plane2_2[14]) );
  GTECH_XOR2 C2515 ( .A(INPUT[269]), .B(eshift[13]), .Z(plane2_2[13]) );
  GTECH_XOR2 C2516 ( .A(INPUT[268]), .B(eshift[12]), .Z(plane2_2[12]) );
  GTECH_XOR2 C2517 ( .A(INPUT[267]), .B(eshift[11]), .Z(plane2_2[11]) );
  GTECH_XOR2 C2518 ( .A(INPUT[266]), .B(eshift[10]), .Z(plane2_2[10]) );
  GTECH_XOR2 C2519 ( .A(INPUT[265]), .B(eshift[9]), .Z(plane2_2[9]) );
  GTECH_XOR2 C2520 ( .A(INPUT[264]), .B(eshift[8]), .Z(plane2_2[8]) );
  GTECH_XOR2 C2521 ( .A(INPUT[263]), .B(eshift[7]), .Z(plane2_2[7]) );
  GTECH_XOR2 C2522 ( .A(INPUT[262]), .B(eshift[6]), .Z(plane2_2[6]) );
  GTECH_XOR2 C2523 ( .A(INPUT[261]), .B(eshift[5]), .Z(plane2_2[5]) );
  GTECH_XOR2 C2524 ( .A(INPUT[260]), .B(eshift[4]), .Z(plane2_2[4]) );
  GTECH_XOR2 C2525 ( .A(INPUT[259]), .B(eshift[3]), .Z(plane2_2[3]) );
  GTECH_XOR2 C2526 ( .A(INPUT[258]), .B(eshift[2]), .Z(plane2_2[2]) );
  GTECH_XOR2 C2527 ( .A(INPUT[257]), .B(eshift[1]), .Z(plane2_2[1]) );
  GTECH_XOR2 C2528 ( .A(INPUT[256]), .B(eshift[0]), .Z(plane2_2[0]) );
  GTECH_XOR2 C2529 ( .A(INPUT[255]), .B(eshift[127]), .Z(plane1_2[127]) );
  GTECH_XOR2 C2530 ( .A(INPUT[254]), .B(eshift[126]), .Z(plane1_2[126]) );
  GTECH_XOR2 C2531 ( .A(INPUT[253]), .B(eshift[125]), .Z(plane1_2[125]) );
  GTECH_XOR2 C2532 ( .A(INPUT[252]), .B(eshift[124]), .Z(plane1_2[124]) );
  GTECH_XOR2 C2533 ( .A(INPUT[251]), .B(eshift[123]), .Z(plane1_2[123]) );
  GTECH_XOR2 C2534 ( .A(INPUT[250]), .B(eshift[122]), .Z(plane1_2[122]) );
  GTECH_XOR2 C2535 ( .A(INPUT[249]), .B(eshift[121]), .Z(plane1_2[121]) );
  GTECH_XOR2 C2536 ( .A(INPUT[248]), .B(eshift[120]), .Z(plane1_2[120]) );
  GTECH_XOR2 C2537 ( .A(INPUT[247]), .B(eshift[119]), .Z(plane1_2[119]) );
  GTECH_XOR2 C2538 ( .A(INPUT[246]), .B(eshift[118]), .Z(plane1_2[118]) );
  GTECH_XOR2 C2539 ( .A(INPUT[245]), .B(eshift[117]), .Z(plane1_2[117]) );
  GTECH_XOR2 C2540 ( .A(INPUT[244]), .B(eshift[116]), .Z(plane1_2[116]) );
  GTECH_XOR2 C2541 ( .A(INPUT[243]), .B(eshift[115]), .Z(plane1_2[115]) );
  GTECH_XOR2 C2542 ( .A(INPUT[242]), .B(eshift[114]), .Z(plane1_2[114]) );
  GTECH_XOR2 C2543 ( .A(INPUT[241]), .B(eshift[113]), .Z(plane1_2[113]) );
  GTECH_XOR2 C2544 ( .A(INPUT[240]), .B(eshift[112]), .Z(plane1_2[112]) );
  GTECH_XOR2 C2545 ( .A(INPUT[239]), .B(eshift[111]), .Z(plane1_2[111]) );
  GTECH_XOR2 C2546 ( .A(INPUT[238]), .B(eshift[110]), .Z(plane1_2[110]) );
  GTECH_XOR2 C2547 ( .A(INPUT[237]), .B(eshift[109]), .Z(plane1_2[109]) );
  GTECH_XOR2 C2548 ( .A(INPUT[236]), .B(eshift[108]), .Z(plane1_2[108]) );
  GTECH_XOR2 C2549 ( .A(INPUT[235]), .B(eshift[107]), .Z(plane1_2[107]) );
  GTECH_XOR2 C2550 ( .A(INPUT[234]), .B(eshift[106]), .Z(plane1_2[106]) );
  GTECH_XOR2 C2551 ( .A(INPUT[233]), .B(eshift[105]), .Z(plane1_2[105]) );
  GTECH_XOR2 C2552 ( .A(INPUT[232]), .B(eshift[104]), .Z(plane1_2[104]) );
  GTECH_XOR2 C2553 ( .A(INPUT[231]), .B(eshift[103]), .Z(plane1_2[103]) );
  GTECH_XOR2 C2554 ( .A(INPUT[230]), .B(eshift[102]), .Z(plane1_2[102]) );
  GTECH_XOR2 C2555 ( .A(INPUT[229]), .B(eshift[101]), .Z(plane1_2[101]) );
  GTECH_XOR2 C2556 ( .A(INPUT[228]), .B(eshift[100]), .Z(plane1_2[100]) );
  GTECH_XOR2 C2557 ( .A(INPUT[227]), .B(eshift[99]), .Z(plane1_2[99]) );
  GTECH_XOR2 C2558 ( .A(INPUT[226]), .B(eshift[98]), .Z(plane1_2[98]) );
  GTECH_XOR2 C2559 ( .A(INPUT[225]), .B(eshift[97]), .Z(plane1_2[97]) );
  GTECH_XOR2 C2560 ( .A(INPUT[224]), .B(eshift[96]), .Z(plane1_2[96]) );
  GTECH_XOR2 C2561 ( .A(INPUT[223]), .B(eshift[95]), .Z(plane1_2[95]) );
  GTECH_XOR2 C2562 ( .A(INPUT[222]), .B(eshift[94]), .Z(plane1_2[94]) );
  GTECH_XOR2 C2563 ( .A(INPUT[221]), .B(eshift[93]), .Z(plane1_2[93]) );
  GTECH_XOR2 C2564 ( .A(INPUT[220]), .B(eshift[92]), .Z(plane1_2[92]) );
  GTECH_XOR2 C2565 ( .A(INPUT[219]), .B(eshift[91]), .Z(plane1_2[91]) );
  GTECH_XOR2 C2566 ( .A(INPUT[218]), .B(eshift[90]), .Z(plane1_2[90]) );
  GTECH_XOR2 C2567 ( .A(INPUT[217]), .B(eshift[89]), .Z(plane1_2[89]) );
  GTECH_XOR2 C2568 ( .A(INPUT[216]), .B(eshift[88]), .Z(plane1_2[88]) );
  GTECH_XOR2 C2569 ( .A(INPUT[215]), .B(eshift[87]), .Z(plane1_2[87]) );
  GTECH_XOR2 C2570 ( .A(INPUT[214]), .B(eshift[86]), .Z(plane1_2[86]) );
  GTECH_XOR2 C2571 ( .A(INPUT[213]), .B(eshift[85]), .Z(plane1_2[85]) );
  GTECH_XOR2 C2572 ( .A(INPUT[212]), .B(eshift[84]), .Z(plane1_2[84]) );
  GTECH_XOR2 C2573 ( .A(INPUT[211]), .B(eshift[83]), .Z(plane1_2[83]) );
  GTECH_XOR2 C2574 ( .A(INPUT[210]), .B(eshift[82]), .Z(plane1_2[82]) );
  GTECH_XOR2 C2575 ( .A(INPUT[209]), .B(eshift[81]), .Z(plane1_2[81]) );
  GTECH_XOR2 C2576 ( .A(INPUT[208]), .B(eshift[80]), .Z(plane1_2[80]) );
  GTECH_XOR2 C2577 ( .A(INPUT[207]), .B(eshift[79]), .Z(plane1_2[79]) );
  GTECH_XOR2 C2578 ( .A(INPUT[206]), .B(eshift[78]), .Z(plane1_2[78]) );
  GTECH_XOR2 C2579 ( .A(INPUT[205]), .B(eshift[77]), .Z(plane1_2[77]) );
  GTECH_XOR2 C2580 ( .A(INPUT[204]), .B(eshift[76]), .Z(plane1_2[76]) );
  GTECH_XOR2 C2581 ( .A(INPUT[203]), .B(eshift[75]), .Z(plane1_2[75]) );
  GTECH_XOR2 C2582 ( .A(INPUT[202]), .B(eshift[74]), .Z(plane1_2[74]) );
  GTECH_XOR2 C2583 ( .A(INPUT[201]), .B(eshift[73]), .Z(plane1_2[73]) );
  GTECH_XOR2 C2584 ( .A(INPUT[200]), .B(eshift[72]), .Z(plane1_2[72]) );
  GTECH_XOR2 C2585 ( .A(INPUT[199]), .B(eshift[71]), .Z(plane1_2[71]) );
  GTECH_XOR2 C2586 ( .A(INPUT[198]), .B(eshift[70]), .Z(plane1_2[70]) );
  GTECH_XOR2 C2587 ( .A(INPUT[197]), .B(eshift[69]), .Z(plane1_2[69]) );
  GTECH_XOR2 C2588 ( .A(INPUT[196]), .B(eshift[68]), .Z(plane1_2[68]) );
  GTECH_XOR2 C2589 ( .A(INPUT[195]), .B(eshift[67]), .Z(plane1_2[67]) );
  GTECH_XOR2 C2590 ( .A(INPUT[194]), .B(eshift[66]), .Z(plane1_2[66]) );
  GTECH_XOR2 C2591 ( .A(INPUT[193]), .B(eshift[65]), .Z(plane1_2[65]) );
  GTECH_XOR2 C2592 ( .A(INPUT[192]), .B(eshift[64]), .Z(plane1_2[64]) );
  GTECH_XOR2 C2593 ( .A(INPUT[191]), .B(eshift[63]), .Z(plane1_2[63]) );
  GTECH_XOR2 C2594 ( .A(INPUT[190]), .B(eshift[62]), .Z(plane1_2[62]) );
  GTECH_XOR2 C2595 ( .A(INPUT[189]), .B(eshift[61]), .Z(plane1_2[61]) );
  GTECH_XOR2 C2596 ( .A(INPUT[188]), .B(eshift[60]), .Z(plane1_2[60]) );
  GTECH_XOR2 C2597 ( .A(INPUT[187]), .B(eshift[59]), .Z(plane1_2[59]) );
  GTECH_XOR2 C2598 ( .A(INPUT[186]), .B(eshift[58]), .Z(plane1_2[58]) );
  GTECH_XOR2 C2599 ( .A(INPUT[185]), .B(eshift[57]), .Z(plane1_2[57]) );
  GTECH_XOR2 C2600 ( .A(INPUT[184]), .B(eshift[56]), .Z(plane1_2[56]) );
  GTECH_XOR2 C2601 ( .A(INPUT[183]), .B(eshift[55]), .Z(plane1_2[55]) );
  GTECH_XOR2 C2602 ( .A(INPUT[182]), .B(eshift[54]), .Z(plane1_2[54]) );
  GTECH_XOR2 C2603 ( .A(INPUT[181]), .B(eshift[53]), .Z(plane1_2[53]) );
  GTECH_XOR2 C2604 ( .A(INPUT[180]), .B(eshift[52]), .Z(plane1_2[52]) );
  GTECH_XOR2 C2605 ( .A(INPUT[179]), .B(eshift[51]), .Z(plane1_2[51]) );
  GTECH_XOR2 C2606 ( .A(INPUT[178]), .B(eshift[50]), .Z(plane1_2[50]) );
  GTECH_XOR2 C2607 ( .A(INPUT[177]), .B(eshift[49]), .Z(plane1_2[49]) );
  GTECH_XOR2 C2608 ( .A(INPUT[176]), .B(eshift[48]), .Z(plane1_2[48]) );
  GTECH_XOR2 C2609 ( .A(INPUT[175]), .B(eshift[47]), .Z(plane1_2[47]) );
  GTECH_XOR2 C2610 ( .A(INPUT[174]), .B(eshift[46]), .Z(plane1_2[46]) );
  GTECH_XOR2 C2611 ( .A(INPUT[173]), .B(eshift[45]), .Z(plane1_2[45]) );
  GTECH_XOR2 C2612 ( .A(INPUT[172]), .B(eshift[44]), .Z(plane1_2[44]) );
  GTECH_XOR2 C2613 ( .A(INPUT[171]), .B(eshift[43]), .Z(plane1_2[43]) );
  GTECH_XOR2 C2614 ( .A(INPUT[170]), .B(eshift[42]), .Z(plane1_2[42]) );
  GTECH_XOR2 C2615 ( .A(INPUT[169]), .B(eshift[41]), .Z(plane1_2[41]) );
  GTECH_XOR2 C2616 ( .A(INPUT[168]), .B(eshift[40]), .Z(plane1_2[40]) );
  GTECH_XOR2 C2617 ( .A(INPUT[167]), .B(eshift[39]), .Z(plane1_2[39]) );
  GTECH_XOR2 C2618 ( .A(INPUT[166]), .B(eshift[38]), .Z(plane1_2[38]) );
  GTECH_XOR2 C2619 ( .A(INPUT[165]), .B(eshift[37]), .Z(plane1_2[37]) );
  GTECH_XOR2 C2620 ( .A(INPUT[164]), .B(eshift[36]), .Z(plane1_2[36]) );
  GTECH_XOR2 C2621 ( .A(INPUT[163]), .B(eshift[35]), .Z(plane1_2[35]) );
  GTECH_XOR2 C2622 ( .A(INPUT[162]), .B(eshift[34]), .Z(plane1_2[34]) );
  GTECH_XOR2 C2623 ( .A(INPUT[161]), .B(eshift[33]), .Z(plane1_2[33]) );
  GTECH_XOR2 C2624 ( .A(INPUT[160]), .B(eshift[32]), .Z(plane1_2[32]) );
  GTECH_XOR2 C2625 ( .A(INPUT[159]), .B(eshift[31]), .Z(plane1_2[31]) );
  GTECH_XOR2 C2626 ( .A(INPUT[158]), .B(eshift[30]), .Z(plane1_2[30]) );
  GTECH_XOR2 C2627 ( .A(INPUT[157]), .B(eshift[29]), .Z(plane1_2[29]) );
  GTECH_XOR2 C2628 ( .A(INPUT[156]), .B(eshift[28]), .Z(plane1_2[28]) );
  GTECH_XOR2 C2629 ( .A(INPUT[155]), .B(eshift[27]), .Z(plane1_2[27]) );
  GTECH_XOR2 C2630 ( .A(INPUT[154]), .B(eshift[26]), .Z(plane1_2[26]) );
  GTECH_XOR2 C2631 ( .A(INPUT[153]), .B(eshift[25]), .Z(plane1_2[25]) );
  GTECH_XOR2 C2632 ( .A(INPUT[152]), .B(eshift[24]), .Z(plane1_2[24]) );
  GTECH_XOR2 C2633 ( .A(INPUT[151]), .B(eshift[23]), .Z(plane1_2[23]) );
  GTECH_XOR2 C2634 ( .A(INPUT[150]), .B(eshift[22]), .Z(plane1_2[22]) );
  GTECH_XOR2 C2635 ( .A(INPUT[149]), .B(eshift[21]), .Z(plane1_2[21]) );
  GTECH_XOR2 C2636 ( .A(INPUT[148]), .B(eshift[20]), .Z(plane1_2[20]) );
  GTECH_XOR2 C2637 ( .A(INPUT[147]), .B(eshift[19]), .Z(plane1_2[19]) );
  GTECH_XOR2 C2638 ( .A(INPUT[146]), .B(eshift[18]), .Z(plane1_2[18]) );
  GTECH_XOR2 C2639 ( .A(INPUT[145]), .B(eshift[17]), .Z(plane1_2[17]) );
  GTECH_XOR2 C2640 ( .A(INPUT[144]), .B(eshift[16]), .Z(plane1_2[16]) );
  GTECH_XOR2 C2641 ( .A(INPUT[143]), .B(eshift[15]), .Z(plane1_2[15]) );
  GTECH_XOR2 C2642 ( .A(INPUT[142]), .B(eshift[14]), .Z(plane1_2[14]) );
  GTECH_XOR2 C2643 ( .A(INPUT[141]), .B(eshift[13]), .Z(plane1_2[13]) );
  GTECH_XOR2 C2644 ( .A(INPUT[140]), .B(eshift[12]), .Z(plane1_2[12]) );
  GTECH_XOR2 C2645 ( .A(INPUT[139]), .B(eshift[11]), .Z(plane1_2[11]) );
  GTECH_XOR2 C2646 ( .A(INPUT[138]), .B(eshift[10]), .Z(plane1_2[10]) );
  GTECH_XOR2 C2647 ( .A(INPUT[137]), .B(eshift[9]), .Z(plane1_2[9]) );
  GTECH_XOR2 C2648 ( .A(INPUT[136]), .B(eshift[8]), .Z(plane1_2[8]) );
  GTECH_XOR2 C2649 ( .A(INPUT[135]), .B(eshift[7]), .Z(plane1_2[7]) );
  GTECH_XOR2 C2650 ( .A(INPUT[134]), .B(eshift[6]), .Z(plane1_2[6]) );
  GTECH_XOR2 C2651 ( .A(INPUT[133]), .B(eshift[5]), .Z(plane1_2[5]) );
  GTECH_XOR2 C2652 ( .A(INPUT[132]), .B(eshift[4]), .Z(plane1_2[4]) );
  GTECH_XOR2 C2653 ( .A(INPUT[131]), .B(eshift[3]), .Z(plane1_2[3]) );
  GTECH_XOR2 C2654 ( .A(INPUT[130]), .B(eshift[2]), .Z(plane1_2[2]) );
  GTECH_XOR2 C2655 ( .A(INPUT[129]), .B(eshift[1]), .Z(plane1_2[1]) );
  GTECH_XOR2 C2656 ( .A(INPUT[128]), .B(eshift[0]), .Z(plane1_2[0]) );
  GTECH_XOR2 C2657 ( .A(INPUT[127]), .B(eshift[127]), .Z(plane0_2[127]) );
  GTECH_XOR2 C2658 ( .A(INPUT[126]), .B(eshift[126]), .Z(plane0_2[126]) );
  GTECH_XOR2 C2659 ( .A(INPUT[125]), .B(eshift[125]), .Z(plane0_2[125]) );
  GTECH_XOR2 C2660 ( .A(INPUT[124]), .B(eshift[124]), .Z(plane0_2[124]) );
  GTECH_XOR2 C2661 ( .A(INPUT[123]), .B(eshift[123]), .Z(plane0_2[123]) );
  GTECH_XOR2 C2662 ( .A(INPUT[122]), .B(eshift[122]), .Z(plane0_2[122]) );
  GTECH_XOR2 C2663 ( .A(INPUT[121]), .B(eshift[121]), .Z(plane0_2[121]) );
  GTECH_XOR2 C2664 ( .A(INPUT[120]), .B(eshift[120]), .Z(plane0_2[120]) );
  GTECH_XOR2 C2665 ( .A(INPUT[119]), .B(eshift[119]), .Z(plane0_2[119]) );
  GTECH_XOR2 C2666 ( .A(INPUT[118]), .B(eshift[118]), .Z(plane0_2[118]) );
  GTECH_XOR2 C2667 ( .A(INPUT[117]), .B(eshift[117]), .Z(plane0_2[117]) );
  GTECH_XOR2 C2668 ( .A(INPUT[116]), .B(eshift[116]), .Z(plane0_2[116]) );
  GTECH_XOR2 C2669 ( .A(INPUT[115]), .B(eshift[115]), .Z(plane0_2[115]) );
  GTECH_XOR2 C2670 ( .A(INPUT[114]), .B(eshift[114]), .Z(plane0_2[114]) );
  GTECH_XOR2 C2671 ( .A(INPUT[113]), .B(eshift[113]), .Z(plane0_2[113]) );
  GTECH_XOR2 C2672 ( .A(INPUT[112]), .B(eshift[112]), .Z(plane0_2[112]) );
  GTECH_XOR2 C2673 ( .A(INPUT[111]), .B(eshift[111]), .Z(plane0_2[111]) );
  GTECH_XOR2 C2674 ( .A(INPUT[110]), .B(eshift[110]), .Z(plane0_2[110]) );
  GTECH_XOR2 C2675 ( .A(INPUT[109]), .B(eshift[109]), .Z(plane0_2[109]) );
  GTECH_XOR2 C2676 ( .A(INPUT[108]), .B(eshift[108]), .Z(plane0_2[108]) );
  GTECH_XOR2 C2677 ( .A(INPUT[107]), .B(eshift[107]), .Z(plane0_2[107]) );
  GTECH_XOR2 C2678 ( .A(INPUT[106]), .B(eshift[106]), .Z(plane0_2[106]) );
  GTECH_XOR2 C2679 ( .A(INPUT[105]), .B(eshift[105]), .Z(plane0_2[105]) );
  GTECH_XOR2 C2680 ( .A(INPUT[104]), .B(eshift[104]), .Z(plane0_2[104]) );
  GTECH_XOR2 C2681 ( .A(INPUT[103]), .B(eshift[103]), .Z(plane0_2[103]) );
  GTECH_XOR2 C2682 ( .A(INPUT[102]), .B(eshift[102]), .Z(plane0_2[102]) );
  GTECH_XOR2 C2683 ( .A(INPUT[101]), .B(eshift[101]), .Z(plane0_2[101]) );
  GTECH_XOR2 C2684 ( .A(INPUT[100]), .B(eshift[100]), .Z(plane0_2[100]) );
  GTECH_XOR2 C2685 ( .A(INPUT[99]), .B(eshift[99]), .Z(plane0_2[99]) );
  GTECH_XOR2 C2686 ( .A(INPUT[98]), .B(eshift[98]), .Z(plane0_2[98]) );
  GTECH_XOR2 C2687 ( .A(INPUT[97]), .B(eshift[97]), .Z(plane0_2[97]) );
  GTECH_XOR2 C2688 ( .A(INPUT[96]), .B(eshift[96]), .Z(plane0_2[96]) );
  GTECH_XOR2 C2689 ( .A(INPUT[95]), .B(eshift[95]), .Z(plane0_2[95]) );
  GTECH_XOR2 C2690 ( .A(INPUT[94]), .B(eshift[94]), .Z(plane0_2[94]) );
  GTECH_XOR2 C2691 ( .A(INPUT[93]), .B(eshift[93]), .Z(plane0_2[93]) );
  GTECH_XOR2 C2692 ( .A(INPUT[92]), .B(eshift[92]), .Z(plane0_2[92]) );
  GTECH_XOR2 C2693 ( .A(INPUT[91]), .B(eshift[91]), .Z(plane0_2[91]) );
  GTECH_XOR2 C2694 ( .A(INPUT[90]), .B(eshift[90]), .Z(plane0_2[90]) );
  GTECH_XOR2 C2695 ( .A(INPUT[89]), .B(eshift[89]), .Z(plane0_2[89]) );
  GTECH_XOR2 C2696 ( .A(INPUT[88]), .B(eshift[88]), .Z(plane0_2[88]) );
  GTECH_XOR2 C2697 ( .A(INPUT[87]), .B(eshift[87]), .Z(plane0_2[87]) );
  GTECH_XOR2 C2698 ( .A(INPUT[86]), .B(eshift[86]), .Z(plane0_2[86]) );
  GTECH_XOR2 C2699 ( .A(INPUT[85]), .B(eshift[85]), .Z(plane0_2[85]) );
  GTECH_XOR2 C2700 ( .A(INPUT[84]), .B(eshift[84]), .Z(plane0_2[84]) );
  GTECH_XOR2 C2701 ( .A(INPUT[83]), .B(eshift[83]), .Z(plane0_2[83]) );
  GTECH_XOR2 C2702 ( .A(INPUT[82]), .B(eshift[82]), .Z(plane0_2[82]) );
  GTECH_XOR2 C2703 ( .A(INPUT[81]), .B(eshift[81]), .Z(plane0_2[81]) );
  GTECH_XOR2 C2704 ( .A(INPUT[80]), .B(eshift[80]), .Z(plane0_2[80]) );
  GTECH_XOR2 C2705 ( .A(INPUT[79]), .B(eshift[79]), .Z(plane0_2[79]) );
  GTECH_XOR2 C2706 ( .A(INPUT[78]), .B(eshift[78]), .Z(plane0_2[78]) );
  GTECH_XOR2 C2707 ( .A(INPUT[77]), .B(eshift[77]), .Z(plane0_2[77]) );
  GTECH_XOR2 C2708 ( .A(INPUT[76]), .B(eshift[76]), .Z(plane0_2[76]) );
  GTECH_XOR2 C2709 ( .A(INPUT[75]), .B(eshift[75]), .Z(plane0_2[75]) );
  GTECH_XOR2 C2710 ( .A(INPUT[74]), .B(eshift[74]), .Z(plane0_2[74]) );
  GTECH_XOR2 C2711 ( .A(INPUT[73]), .B(eshift[73]), .Z(plane0_2[73]) );
  GTECH_XOR2 C2712 ( .A(INPUT[72]), .B(eshift[72]), .Z(plane0_2[72]) );
  GTECH_XOR2 C2713 ( .A(INPUT[71]), .B(eshift[71]), .Z(plane0_2[71]) );
  GTECH_XOR2 C2714 ( .A(INPUT[70]), .B(eshift[70]), .Z(plane0_2[70]) );
  GTECH_XOR2 C2715 ( .A(INPUT[69]), .B(eshift[69]), .Z(plane0_2[69]) );
  GTECH_XOR2 C2716 ( .A(INPUT[68]), .B(eshift[68]), .Z(plane0_2[68]) );
  GTECH_XOR2 C2717 ( .A(INPUT[67]), .B(eshift[67]), .Z(plane0_2[67]) );
  GTECH_XOR2 C2718 ( .A(INPUT[66]), .B(eshift[66]), .Z(plane0_2[66]) );
  GTECH_XOR2 C2719 ( .A(INPUT[65]), .B(eshift[65]), .Z(plane0_2[65]) );
  GTECH_XOR2 C2720 ( .A(INPUT[64]), .B(eshift[64]), .Z(plane0_2[64]) );
  GTECH_XOR2 C2721 ( .A(INPUT[63]), .B(eshift[63]), .Z(plane0_2[63]) );
  GTECH_XOR2 C2722 ( .A(INPUT[62]), .B(eshift[62]), .Z(plane0_2[62]) );
  GTECH_XOR2 C2723 ( .A(INPUT[61]), .B(eshift[61]), .Z(plane0_2[61]) );
  GTECH_XOR2 C2724 ( .A(INPUT[60]), .B(eshift[60]), .Z(plane0_2[60]) );
  GTECH_XOR2 C2725 ( .A(INPUT[59]), .B(eshift[59]), .Z(plane0_2[59]) );
  GTECH_XOR2 C2726 ( .A(INPUT[58]), .B(eshift[58]), .Z(plane0_2[58]) );
  GTECH_XOR2 C2727 ( .A(INPUT[57]), .B(eshift[57]), .Z(plane0_2[57]) );
  GTECH_XOR2 C2728 ( .A(INPUT[56]), .B(eshift[56]), .Z(plane0_2[56]) );
  GTECH_XOR2 C2729 ( .A(INPUT[55]), .B(eshift[55]), .Z(plane0_2[55]) );
  GTECH_XOR2 C2730 ( .A(INPUT[54]), .B(eshift[54]), .Z(plane0_2[54]) );
  GTECH_XOR2 C2731 ( .A(INPUT[53]), .B(eshift[53]), .Z(plane0_2[53]) );
  GTECH_XOR2 C2732 ( .A(INPUT[52]), .B(eshift[52]), .Z(plane0_2[52]) );
  GTECH_XOR2 C2733 ( .A(INPUT[51]), .B(eshift[51]), .Z(plane0_2[51]) );
  GTECH_XOR2 C2734 ( .A(INPUT[50]), .B(eshift[50]), .Z(plane0_2[50]) );
  GTECH_XOR2 C2735 ( .A(INPUT[49]), .B(eshift[49]), .Z(plane0_2[49]) );
  GTECH_XOR2 C2736 ( .A(INPUT[48]), .B(eshift[48]), .Z(plane0_2[48]) );
  GTECH_XOR2 C2737 ( .A(INPUT[47]), .B(eshift[47]), .Z(plane0_2[47]) );
  GTECH_XOR2 C2738 ( .A(INPUT[46]), .B(eshift[46]), .Z(plane0_2[46]) );
  GTECH_XOR2 C2739 ( .A(INPUT[45]), .B(eshift[45]), .Z(plane0_2[45]) );
  GTECH_XOR2 C2740 ( .A(INPUT[44]), .B(eshift[44]), .Z(plane0_2[44]) );
  GTECH_XOR2 C2741 ( .A(INPUT[43]), .B(eshift[43]), .Z(plane0_2[43]) );
  GTECH_XOR2 C2742 ( .A(INPUT[42]), .B(eshift[42]), .Z(plane0_2[42]) );
  GTECH_XOR2 C2743 ( .A(INPUT[41]), .B(eshift[41]), .Z(plane0_2[41]) );
  GTECH_XOR2 C2744 ( .A(INPUT[40]), .B(eshift[40]), .Z(plane0_2[40]) );
  GTECH_XOR2 C2745 ( .A(INPUT[39]), .B(eshift[39]), .Z(plane0_2[39]) );
  GTECH_XOR2 C2746 ( .A(INPUT[38]), .B(eshift[38]), .Z(plane0_2[38]) );
  GTECH_XOR2 C2747 ( .A(INPUT[37]), .B(eshift[37]), .Z(plane0_2[37]) );
  GTECH_XOR2 C2748 ( .A(INPUT[36]), .B(eshift[36]), .Z(plane0_2[36]) );
  GTECH_XOR2 C2749 ( .A(INPUT[35]), .B(eshift[35]), .Z(plane0_2[35]) );
  GTECH_XOR2 C2750 ( .A(INPUT[34]), .B(eshift[34]), .Z(plane0_2[34]) );
  GTECH_XOR2 C2751 ( .A(INPUT[33]), .B(eshift[33]), .Z(plane0_2[33]) );
  GTECH_XOR2 C2752 ( .A(INPUT[32]), .B(eshift[32]), .Z(plane0_2[32]) );
  GTECH_XOR2 C2753 ( .A(INPUT[31]), .B(eshift[31]), .Z(plane0_2[31]) );
  GTECH_XOR2 C2754 ( .A(INPUT[30]), .B(eshift[30]), .Z(plane0_2[30]) );
  GTECH_XOR2 C2755 ( .A(INPUT[29]), .B(eshift[29]), .Z(plane0_2[29]) );
  GTECH_XOR2 C2756 ( .A(INPUT[28]), .B(eshift[28]), .Z(plane0_2[28]) );
  GTECH_XOR2 C2757 ( .A(INPUT[27]), .B(eshift[27]), .Z(plane0_2[27]) );
  GTECH_XOR2 C2758 ( .A(INPUT[26]), .B(eshift[26]), .Z(plane0_2[26]) );
  GTECH_XOR2 C2759 ( .A(INPUT[25]), .B(eshift[25]), .Z(plane0_2[25]) );
  GTECH_XOR2 C2760 ( .A(INPUT[24]), .B(eshift[24]), .Z(plane0_2[24]) );
  GTECH_XOR2 C2761 ( .A(INPUT[23]), .B(eshift[23]), .Z(plane0_2[23]) );
  GTECH_XOR2 C2762 ( .A(INPUT[22]), .B(eshift[22]), .Z(plane0_2[22]) );
  GTECH_XOR2 C2763 ( .A(INPUT[21]), .B(eshift[21]), .Z(plane0_2[21]) );
  GTECH_XOR2 C2764 ( .A(INPUT[20]), .B(eshift[20]), .Z(plane0_2[20]) );
  GTECH_XOR2 C2765 ( .A(INPUT[19]), .B(eshift[19]), .Z(plane0_2[19]) );
  GTECH_XOR2 C2766 ( .A(INPUT[18]), .B(eshift[18]), .Z(plane0_2[18]) );
  GTECH_XOR2 C2767 ( .A(INPUT[17]), .B(eshift[17]), .Z(plane0_2[17]) );
  GTECH_XOR2 C2768 ( .A(INPUT[16]), .B(eshift[16]), .Z(plane0_2[16]) );
  GTECH_XOR2 C2769 ( .A(INPUT[15]), .B(eshift[15]), .Z(plane0_2[15]) );
  GTECH_XOR2 C2770 ( .A(INPUT[14]), .B(eshift[14]), .Z(plane0_2[14]) );
  GTECH_XOR2 C2771 ( .A(INPUT[13]), .B(eshift[13]), .Z(plane0_2[13]) );
  GTECH_XOR2 C2772 ( .A(INPUT[12]), .B(eshift[12]), .Z(plane0_2[12]) );
  GTECH_XOR2 C2773 ( .A(INPUT[11]), .B(eshift[11]), .Z(plane0_2[11]) );
  GTECH_XOR2 C2774 ( .A(INPUT[10]), .B(eshift[10]), .Z(plane0_2[10]) );
  GTECH_XOR2 C2775 ( .A(INPUT[9]), .B(eshift[9]), .Z(plane0_2[9]) );
  GTECH_XOR2 C2776 ( .A(INPUT[8]), .B(eshift[8]), .Z(plane0_2[8]) );
  GTECH_XOR2 C2777 ( .A(INPUT[7]), .B(eshift[7]), .Z(plane0_2[7]) );
  GTECH_XOR2 C2778 ( .A(INPUT[6]), .B(eshift[6]), .Z(plane0_2[6]) );
  GTECH_XOR2 C2779 ( .A(INPUT[5]), .B(eshift[5]), .Z(plane0_2[5]) );
  GTECH_XOR2 C2780 ( .A(INPUT[4]), .B(eshift[4]), .Z(plane0_2[4]) );
  GTECH_XOR2 C2781 ( .A(INPUT[3]), .B(eshift[3]), .Z(plane0_2[3]) );
  GTECH_XOR2 C2782 ( .A(INPUT[2]), .B(eshift[2]), .Z(plane0_2[2]) );
  GTECH_XOR2 C2783 ( .A(INPUT[1]), .B(eshift[1]), .Z(plane0_2[1]) );
  GTECH_XOR2 C2784 ( .A(INPUT[0]), .B(eshift[0]), .Z(plane0_2[0]) );
  GTECH_XOR2 C2785 ( .A(plane0_2[107]), .B(1'b0), .Z(add_rnd_const_small[11])
         );
  GTECH_XOR2 C2786 ( .A(plane0_2[106]), .B(1'b0), .Z(add_rnd_const_small[10])
         );
  GTECH_XOR2 C2787 ( .A(plane0_2[105]), .B(N172), .Z(add_rnd_const_small[9])
         );
  GTECH_XOR2 C2788 ( .A(plane0_2[104]), .B(N173), .Z(add_rnd_const_small[8])
         );
  GTECH_XOR2 C2789 ( .A(plane0_2[103]), .B(N174), .Z(add_rnd_const_small[7])
         );
  GTECH_XOR2 C2790 ( .A(plane0_2[102]), .B(N175), .Z(add_rnd_const_small[6])
         );
  GTECH_XOR2 C2791 ( .A(plane0_2[101]), .B(N176), .Z(add_rnd_const_small[5])
         );
  GTECH_XOR2 C2792 ( .A(plane0_2[100]), .B(N177), .Z(add_rnd_const_small[4])
         );
  GTECH_XOR2 C2793 ( .A(plane0_2[99]), .B(N178), .Z(add_rnd_const_small[3]) );
  GTECH_XOR2 C2794 ( .A(plane0_2[98]), .B(N179), .Z(add_rnd_const_small[2]) );
  GTECH_XOR2 C2795 ( .A(plane0_2[97]), .B(N180), .Z(add_rnd_const_small[1]) );
  GTECH_XOR2 C2796 ( .A(plane0_2[96]), .B(1'b0), .Z(add_rnd_const_small[0]) );
  GTECH_NOT I_20 ( .A(plane1_2[31]), .Z(N181) );
  GTECH_NOT I_21 ( .A(plane1_2[30]), .Z(N182) );
  GTECH_NOT I_22 ( .A(plane1_2[29]), .Z(N183) );
  GTECH_NOT I_23 ( .A(plane1_2[28]), .Z(N184) );
  GTECH_NOT I_24 ( .A(plane1_2[27]), .Z(N185) );
  GTECH_NOT I_25 ( .A(plane1_2[26]), .Z(N186) );
  GTECH_NOT I_26 ( .A(plane1_2[25]), .Z(N187) );
  GTECH_NOT I_27 ( .A(plane1_2[24]), .Z(N188) );
  GTECH_NOT I_28 ( .A(plane1_2[23]), .Z(N189) );
  GTECH_NOT I_29 ( .A(plane1_2[22]), .Z(N190) );
  GTECH_NOT I_30 ( .A(plane1_2[21]), .Z(N191) );
  GTECH_NOT I_31 ( .A(plane1_2[20]), .Z(N192) );
  GTECH_NOT I_32 ( .A(plane1_2[19]), .Z(N193) );
  GTECH_NOT I_33 ( .A(plane1_2[18]), .Z(N194) );
  GTECH_NOT I_34 ( .A(plane1_2[17]), .Z(N195) );
  GTECH_NOT I_35 ( .A(plane1_2[16]), .Z(N196) );
  GTECH_NOT I_36 ( .A(plane1_2[15]), .Z(N197) );
  GTECH_NOT I_37 ( .A(plane1_2[14]), .Z(N198) );
  GTECH_NOT I_38 ( .A(plane1_2[13]), .Z(N199) );
  GTECH_NOT I_39 ( .A(plane1_2[12]), .Z(N200) );
  GTECH_NOT I_40 ( .A(plane1_2[11]), .Z(N201) );
  GTECH_NOT I_41 ( .A(plane1_2[10]), .Z(N202) );
  GTECH_NOT I_42 ( .A(plane1_2[9]), .Z(N203) );
  GTECH_NOT I_43 ( .A(plane1_2[8]), .Z(N204) );
  GTECH_NOT I_44 ( .A(plane1_2[7]), .Z(N205) );
  GTECH_NOT I_45 ( .A(plane1_2[6]), .Z(N206) );
  GTECH_NOT I_46 ( .A(plane1_2[5]), .Z(N207) );
  GTECH_NOT I_47 ( .A(plane1_2[4]), .Z(N208) );
  GTECH_NOT I_48 ( .A(plane1_2[3]), .Z(N209) );
  GTECH_NOT I_49 ( .A(plane1_2[2]), .Z(N210) );
  GTECH_NOT I_50 ( .A(plane1_2[1]), .Z(N211) );
  GTECH_NOT I_51 ( .A(plane1_2[0]), .Z(N212) );
  GTECH_NOT I_52 ( .A(plane1_2[127]), .Z(N213) );
  GTECH_NOT I_53 ( .A(plane1_2[126]), .Z(N214) );
  GTECH_NOT I_54 ( .A(plane1_2[125]), .Z(N215) );
  GTECH_NOT I_55 ( .A(plane1_2[124]), .Z(N216) );
  GTECH_NOT I_56 ( .A(plane1_2[123]), .Z(N217) );
  GTECH_NOT I_57 ( .A(plane1_2[122]), .Z(N218) );
  GTECH_NOT I_58 ( .A(plane1_2[121]), .Z(N219) );
  GTECH_NOT I_59 ( .A(plane1_2[120]), .Z(N220) );
  GTECH_NOT I_60 ( .A(plane1_2[119]), .Z(N221) );
  GTECH_NOT I_61 ( .A(plane1_2[118]), .Z(N222) );
  GTECH_NOT I_62 ( .A(plane1_2[117]), .Z(N223) );
  GTECH_NOT I_63 ( .A(plane1_2[116]), .Z(N224) );
  GTECH_NOT I_64 ( .A(plane1_2[115]), .Z(N225) );
  GTECH_NOT I_65 ( .A(plane1_2[114]), .Z(N226) );
  GTECH_NOT I_66 ( .A(plane1_2[113]), .Z(N227) );
  GTECH_NOT I_67 ( .A(plane1_2[112]), .Z(N228) );
  GTECH_NOT I_68 ( .A(plane1_2[111]), .Z(N229) );
  GTECH_NOT I_69 ( .A(plane1_2[110]), .Z(N230) );
  GTECH_NOT I_70 ( .A(plane1_2[109]), .Z(N231) );
  GTECH_NOT I_71 ( .A(plane1_2[108]), .Z(N232) );
  GTECH_NOT I_72 ( .A(plane1_2[107]), .Z(N233) );
  GTECH_NOT I_73 ( .A(plane1_2[106]), .Z(N234) );
  GTECH_NOT I_74 ( .A(plane1_2[105]), .Z(N235) );
  GTECH_NOT I_75 ( .A(plane1_2[104]), .Z(N236) );
  GTECH_NOT I_76 ( .A(plane1_2[103]), .Z(N237) );
  GTECH_NOT I_77 ( .A(plane1_2[102]), .Z(N238) );
  GTECH_NOT I_78 ( .A(plane1_2[101]), .Z(N239) );
  GTECH_NOT I_79 ( .A(plane1_2[100]), .Z(N240) );
  GTECH_NOT I_80 ( .A(plane1_2[99]), .Z(N241) );
  GTECH_NOT I_81 ( .A(plane1_2[98]), .Z(N242) );
  GTECH_NOT I_82 ( .A(plane1_2[97]), .Z(N243) );
  GTECH_NOT I_83 ( .A(plane1_2[96]), .Z(N244) );
  GTECH_NOT I_84 ( .A(plane1_2[95]), .Z(N245) );
  GTECH_NOT I_85 ( .A(plane1_2[94]), .Z(N246) );
  GTECH_NOT I_86 ( .A(plane1_2[93]), .Z(N247) );
  GTECH_NOT I_87 ( .A(plane1_2[92]), .Z(N248) );
  GTECH_NOT I_88 ( .A(plane1_2[91]), .Z(N249) );
  GTECH_NOT I_89 ( .A(plane1_2[90]), .Z(N250) );
  GTECH_NOT I_90 ( .A(plane1_2[89]), .Z(N251) );
  GTECH_NOT I_91 ( .A(plane1_2[88]), .Z(N252) );
  GTECH_NOT I_92 ( .A(plane1_2[87]), .Z(N253) );
  GTECH_NOT I_93 ( .A(plane1_2[86]), .Z(N254) );
  GTECH_NOT I_94 ( .A(plane1_2[85]), .Z(N255) );
  GTECH_NOT I_95 ( .A(plane1_2[84]), .Z(N256) );
  GTECH_NOT I_96 ( .A(plane1_2[83]), .Z(N257) );
  GTECH_NOT I_97 ( .A(plane1_2[82]), .Z(N258) );
  GTECH_NOT I_98 ( .A(plane1_2[81]), .Z(N259) );
  GTECH_NOT I_99 ( .A(plane1_2[80]), .Z(N260) );
  GTECH_NOT I_100 ( .A(plane1_2[79]), .Z(N261) );
  GTECH_NOT I_101 ( .A(plane1_2[78]), .Z(N262) );
  GTECH_NOT I_102 ( .A(plane1_2[77]), .Z(N263) );
  GTECH_NOT I_103 ( .A(plane1_2[76]), .Z(N264) );
  GTECH_NOT I_104 ( .A(plane1_2[75]), .Z(N265) );
  GTECH_NOT I_105 ( .A(plane1_2[74]), .Z(N266) );
  GTECH_NOT I_106 ( .A(plane1_2[73]), .Z(N267) );
  GTECH_NOT I_107 ( .A(plane1_2[72]), .Z(N268) );
  GTECH_NOT I_108 ( .A(plane1_2[71]), .Z(N269) );
  GTECH_NOT I_109 ( .A(plane1_2[70]), .Z(N270) );
  GTECH_NOT I_110 ( .A(plane1_2[69]), .Z(N271) );
  GTECH_NOT I_111 ( .A(plane1_2[68]), .Z(N272) );
  GTECH_NOT I_112 ( .A(plane1_2[67]), .Z(N273) );
  GTECH_NOT I_113 ( .A(plane1_2[66]), .Z(N274) );
  GTECH_NOT I_114 ( .A(plane1_2[65]), .Z(N275) );
  GTECH_NOT I_115 ( .A(plane1_2[64]), .Z(N276) );
  GTECH_NOT I_116 ( .A(plane1_2[63]), .Z(N277) );
  GTECH_NOT I_117 ( .A(plane1_2[62]), .Z(N278) );
  GTECH_NOT I_118 ( .A(plane1_2[61]), .Z(N279) );
  GTECH_NOT I_119 ( .A(plane1_2[60]), .Z(N280) );
  GTECH_NOT I_120 ( .A(plane1_2[59]), .Z(N281) );
  GTECH_NOT I_121 ( .A(plane1_2[58]), .Z(N282) );
  GTECH_NOT I_122 ( .A(plane1_2[57]), .Z(N283) );
  GTECH_NOT I_123 ( .A(plane1_2[56]), .Z(N284) );
  GTECH_NOT I_124 ( .A(plane1_2[55]), .Z(N285) );
  GTECH_NOT I_125 ( .A(plane1_2[54]), .Z(N286) );
  GTECH_NOT I_126 ( .A(plane1_2[53]), .Z(N287) );
  GTECH_NOT I_127 ( .A(plane1_2[52]), .Z(N288) );
  GTECH_NOT I_128 ( .A(plane1_2[51]), .Z(N289) );
  GTECH_NOT I_129 ( .A(plane1_2[50]), .Z(N290) );
  GTECH_NOT I_130 ( .A(plane1_2[49]), .Z(N291) );
  GTECH_NOT I_131 ( .A(plane1_2[48]), .Z(N292) );
  GTECH_NOT I_132 ( .A(plane1_2[47]), .Z(N293) );
  GTECH_NOT I_133 ( .A(plane1_2[46]), .Z(N294) );
  GTECH_NOT I_134 ( .A(plane1_2[45]), .Z(N295) );
  GTECH_NOT I_135 ( .A(plane1_2[44]), .Z(N296) );
  GTECH_NOT I_136 ( .A(plane1_2[43]), .Z(N297) );
  GTECH_NOT I_137 ( .A(plane1_2[42]), .Z(N298) );
  GTECH_NOT I_138 ( .A(plane1_2[41]), .Z(N299) );
  GTECH_NOT I_139 ( .A(plane1_2[40]), .Z(N300) );
  GTECH_NOT I_140 ( .A(plane1_2[39]), .Z(N301) );
  GTECH_NOT I_141 ( .A(plane1_2[38]), .Z(N302) );
  GTECH_NOT I_142 ( .A(plane1_2[37]), .Z(N303) );
  GTECH_NOT I_143 ( .A(plane1_2[36]), .Z(N304) );
  GTECH_NOT I_144 ( .A(plane1_2[35]), .Z(N305) );
  GTECH_NOT I_145 ( .A(plane1_2[34]), .Z(N306) );
  GTECH_NOT I_146 ( .A(plane1_2[33]), .Z(N307) );
  GTECH_NOT I_147 ( .A(plane1_2[32]), .Z(N308) );
  GTECH_AND2 C2925 ( .A(N181), .B(plane2_2[116]), .Z(N309) );
  GTECH_AND2 C2926 ( .A(N182), .B(plane2_2[115]), .Z(N310) );
  GTECH_AND2 C2927 ( .A(N183), .B(plane2_2[114]), .Z(N311) );
  GTECH_AND2 C2928 ( .A(N184), .B(plane2_2[113]), .Z(N312) );
  GTECH_AND2 C2929 ( .A(N185), .B(plane2_2[112]), .Z(N313) );
  GTECH_AND2 C2930 ( .A(N186), .B(plane2_2[111]), .Z(N314) );
  GTECH_AND2 C2931 ( .A(N187), .B(plane2_2[110]), .Z(N315) );
  GTECH_AND2 C2932 ( .A(N188), .B(plane2_2[109]), .Z(N316) );
  GTECH_AND2 C2933 ( .A(N189), .B(plane2_2[108]), .Z(N317) );
  GTECH_AND2 C2934 ( .A(N190), .B(plane2_2[107]), .Z(N318) );
  GTECH_AND2 C2935 ( .A(N191), .B(plane2_2[106]), .Z(N319) );
  GTECH_AND2 C2936 ( .A(N192), .B(plane2_2[105]), .Z(N320) );
  GTECH_AND2 C2937 ( .A(N193), .B(plane2_2[104]), .Z(N321) );
  GTECH_AND2 C2938 ( .A(N194), .B(plane2_2[103]), .Z(N322) );
  GTECH_AND2 C2939 ( .A(N195), .B(plane2_2[102]), .Z(N323) );
  GTECH_AND2 C2940 ( .A(N196), .B(plane2_2[101]), .Z(N324) );
  GTECH_AND2 C2941 ( .A(N197), .B(plane2_2[100]), .Z(N325) );
  GTECH_AND2 C2942 ( .A(N198), .B(plane2_2[99]), .Z(N326) );
  GTECH_AND2 C2943 ( .A(N199), .B(plane2_2[98]), .Z(N327) );
  GTECH_AND2 C2944 ( .A(N200), .B(plane2_2[97]), .Z(N328) );
  GTECH_AND2 C2945 ( .A(N201), .B(plane2_2[96]), .Z(N329) );
  GTECH_AND2 C2946 ( .A(N202), .B(plane2_2[127]), .Z(N330) );
  GTECH_AND2 C2947 ( .A(N203), .B(plane2_2[126]), .Z(N331) );
  GTECH_AND2 C2948 ( .A(N204), .B(plane2_2[125]), .Z(N332) );
  GTECH_AND2 C2949 ( .A(N205), .B(plane2_2[124]), .Z(N333) );
  GTECH_AND2 C2950 ( .A(N206), .B(plane2_2[123]), .Z(N334) );
  GTECH_AND2 C2951 ( .A(N207), .B(plane2_2[122]), .Z(N335) );
  GTECH_AND2 C2952 ( .A(N208), .B(plane2_2[121]), .Z(N336) );
  GTECH_AND2 C2953 ( .A(N209), .B(plane2_2[120]), .Z(N337) );
  GTECH_AND2 C2954 ( .A(N210), .B(plane2_2[119]), .Z(N338) );
  GTECH_AND2 C2955 ( .A(N211), .B(plane2_2[118]), .Z(N339) );
  GTECH_AND2 C2956 ( .A(N212), .B(plane2_2[117]), .Z(N340) );
  GTECH_AND2 C2957 ( .A(N213), .B(plane2_2[84]), .Z(N341) );
  GTECH_AND2 C2958 ( .A(N214), .B(plane2_2[83]), .Z(N342) );
  GTECH_AND2 C2959 ( .A(N215), .B(plane2_2[82]), .Z(N343) );
  GTECH_AND2 C2960 ( .A(N216), .B(plane2_2[81]), .Z(N344) );
  GTECH_AND2 C2961 ( .A(N217), .B(plane2_2[80]), .Z(N345) );
  GTECH_AND2 C2962 ( .A(N218), .B(plane2_2[79]), .Z(N346) );
  GTECH_AND2 C2963 ( .A(N219), .B(plane2_2[78]), .Z(N347) );
  GTECH_AND2 C2964 ( .A(N220), .B(plane2_2[77]), .Z(N348) );
  GTECH_AND2 C2965 ( .A(N221), .B(plane2_2[76]), .Z(N349) );
  GTECH_AND2 C2966 ( .A(N222), .B(plane2_2[75]), .Z(N350) );
  GTECH_AND2 C2967 ( .A(N223), .B(plane2_2[74]), .Z(N351) );
  GTECH_AND2 C2968 ( .A(N224), .B(plane2_2[73]), .Z(N352) );
  GTECH_AND2 C2969 ( .A(N225), .B(plane2_2[72]), .Z(N353) );
  GTECH_AND2 C2970 ( .A(N226), .B(plane2_2[71]), .Z(N354) );
  GTECH_AND2 C2971 ( .A(N227), .B(plane2_2[70]), .Z(N355) );
  GTECH_AND2 C2972 ( .A(N228), .B(plane2_2[69]), .Z(N356) );
  GTECH_AND2 C2973 ( .A(N229), .B(plane2_2[68]), .Z(N357) );
  GTECH_AND2 C2974 ( .A(N230), .B(plane2_2[67]), .Z(N358) );
  GTECH_AND2 C2975 ( .A(N231), .B(plane2_2[66]), .Z(N359) );
  GTECH_AND2 C2976 ( .A(N232), .B(plane2_2[65]), .Z(N360) );
  GTECH_AND2 C2977 ( .A(N233), .B(plane2_2[64]), .Z(N361) );
  GTECH_AND2 C2978 ( .A(N234), .B(plane2_2[95]), .Z(N362) );
  GTECH_AND2 C2979 ( .A(N235), .B(plane2_2[94]), .Z(N363) );
  GTECH_AND2 C2980 ( .A(N236), .B(plane2_2[93]), .Z(N364) );
  GTECH_AND2 C2981 ( .A(N237), .B(plane2_2[92]), .Z(N365) );
  GTECH_AND2 C2982 ( .A(N238), .B(plane2_2[91]), .Z(N366) );
  GTECH_AND2 C2983 ( .A(N239), .B(plane2_2[90]), .Z(N367) );
  GTECH_AND2 C2984 ( .A(N240), .B(plane2_2[89]), .Z(N368) );
  GTECH_AND2 C2985 ( .A(N241), .B(plane2_2[88]), .Z(N369) );
  GTECH_AND2 C2986 ( .A(N242), .B(plane2_2[87]), .Z(N370) );
  GTECH_AND2 C2987 ( .A(N243), .B(plane2_2[86]), .Z(N371) );
  GTECH_AND2 C2988 ( .A(N244), .B(plane2_2[85]), .Z(N372) );
  GTECH_AND2 C2989 ( .A(N245), .B(plane2_2[52]), .Z(N373) );
  GTECH_AND2 C2990 ( .A(N246), .B(plane2_2[51]), .Z(N374) );
  GTECH_AND2 C2991 ( .A(N247), .B(plane2_2[50]), .Z(N375) );
  GTECH_AND2 C2992 ( .A(N248), .B(plane2_2[49]), .Z(N376) );
  GTECH_AND2 C2993 ( .A(N249), .B(plane2_2[48]), .Z(N377) );
  GTECH_AND2 C2994 ( .A(N250), .B(plane2_2[47]), .Z(N378) );
  GTECH_AND2 C2995 ( .A(N251), .B(plane2_2[46]), .Z(N379) );
  GTECH_AND2 C2996 ( .A(N252), .B(plane2_2[45]), .Z(N380) );
  GTECH_AND2 C2997 ( .A(N253), .B(plane2_2[44]), .Z(N381) );
  GTECH_AND2 C2998 ( .A(N254), .B(plane2_2[43]), .Z(N382) );
  GTECH_AND2 C2999 ( .A(N255), .B(plane2_2[42]), .Z(N383) );
  GTECH_AND2 C3000 ( .A(N256), .B(plane2_2[41]), .Z(N384) );
  GTECH_AND2 C3001 ( .A(N257), .B(plane2_2[40]), .Z(N385) );
  GTECH_AND2 C3002 ( .A(N258), .B(plane2_2[39]), .Z(N386) );
  GTECH_AND2 C3003 ( .A(N259), .B(plane2_2[38]), .Z(N387) );
  GTECH_AND2 C3004 ( .A(N260), .B(plane2_2[37]), .Z(N388) );
  GTECH_AND2 C3005 ( .A(N261), .B(plane2_2[36]), .Z(N389) );
  GTECH_AND2 C3006 ( .A(N262), .B(plane2_2[35]), .Z(N390) );
  GTECH_AND2 C3007 ( .A(N263), .B(plane2_2[34]), .Z(N391) );
  GTECH_AND2 C3008 ( .A(N264), .B(plane2_2[33]), .Z(N392) );
  GTECH_AND2 C3009 ( .A(N265), .B(plane2_2[32]), .Z(N393) );
  GTECH_AND2 C3010 ( .A(N266), .B(plane2_2[63]), .Z(N394) );
  GTECH_AND2 C3011 ( .A(N267), .B(plane2_2[62]), .Z(N395) );
  GTECH_AND2 C3012 ( .A(N268), .B(plane2_2[61]), .Z(N396) );
  GTECH_AND2 C3013 ( .A(N269), .B(plane2_2[60]), .Z(N397) );
  GTECH_AND2 C3014 ( .A(N270), .B(plane2_2[59]), .Z(N398) );
  GTECH_AND2 C3015 ( .A(N271), .B(plane2_2[58]), .Z(N399) );
  GTECH_AND2 C3016 ( .A(N272), .B(plane2_2[57]), .Z(N400) );
  GTECH_AND2 C3017 ( .A(N273), .B(plane2_2[56]), .Z(N401) );
  GTECH_AND2 C3018 ( .A(N274), .B(plane2_2[55]), .Z(N402) );
  GTECH_AND2 C3019 ( .A(N275), .B(plane2_2[54]), .Z(N403) );
  GTECH_AND2 C3020 ( .A(N276), .B(plane2_2[53]), .Z(N404) );
  GTECH_AND2 C3021 ( .A(N277), .B(plane2_2[20]), .Z(N405) );
  GTECH_AND2 C3022 ( .A(N278), .B(plane2_2[19]), .Z(N406) );
  GTECH_AND2 C3023 ( .A(N279), .B(plane2_2[18]), .Z(N407) );
  GTECH_AND2 C3024 ( .A(N280), .B(plane2_2[17]), .Z(N408) );
  GTECH_AND2 C3025 ( .A(N281), .B(plane2_2[16]), .Z(N409) );
  GTECH_AND2 C3026 ( .A(N282), .B(plane2_2[15]), .Z(N410) );
  GTECH_AND2 C3027 ( .A(N283), .B(plane2_2[14]), .Z(N411) );
  GTECH_AND2 C3028 ( .A(N284), .B(plane2_2[13]), .Z(N412) );
  GTECH_AND2 C3029 ( .A(N285), .B(plane2_2[12]), .Z(N413) );
  GTECH_AND2 C3030 ( .A(N286), .B(plane2_2[11]), .Z(N414) );
  GTECH_AND2 C3031 ( .A(N287), .B(plane2_2[10]), .Z(N415) );
  GTECH_AND2 C3032 ( .A(N288), .B(plane2_2[9]), .Z(N416) );
  GTECH_AND2 C3033 ( .A(N289), .B(plane2_2[8]), .Z(N417) );
  GTECH_AND2 C3034 ( .A(N290), .B(plane2_2[7]), .Z(N418) );
  GTECH_AND2 C3035 ( .A(N291), .B(plane2_2[6]), .Z(N419) );
  GTECH_AND2 C3036 ( .A(N292), .B(plane2_2[5]), .Z(N420) );
  GTECH_AND2 C3037 ( .A(N293), .B(plane2_2[4]), .Z(N421) );
  GTECH_AND2 C3038 ( .A(N294), .B(plane2_2[3]), .Z(N422) );
  GTECH_AND2 C3039 ( .A(N295), .B(plane2_2[2]), .Z(N423) );
  GTECH_AND2 C3040 ( .A(N296), .B(plane2_2[1]), .Z(N424) );
  GTECH_AND2 C3041 ( .A(N297), .B(plane2_2[0]), .Z(N425) );
  GTECH_AND2 C3042 ( .A(N298), .B(plane2_2[31]), .Z(N426) );
  GTECH_AND2 C3043 ( .A(N299), .B(plane2_2[30]), .Z(N427) );
  GTECH_AND2 C3044 ( .A(N300), .B(plane2_2[29]), .Z(N428) );
  GTECH_AND2 C3045 ( .A(N301), .B(plane2_2[28]), .Z(N429) );
  GTECH_AND2 C3046 ( .A(N302), .B(plane2_2[27]), .Z(N430) );
  GTECH_AND2 C3047 ( .A(N303), .B(plane2_2[26]), .Z(N431) );
  GTECH_AND2 C3048 ( .A(N304), .B(plane2_2[25]), .Z(N432) );
  GTECH_AND2 C3049 ( .A(N305), .B(plane2_2[24]), .Z(N433) );
  GTECH_AND2 C3050 ( .A(N306), .B(plane2_2[23]), .Z(N434) );
  GTECH_AND2 C3051 ( .A(N307), .B(plane2_2[22]), .Z(N435) );
  GTECH_AND2 C3052 ( .A(N308), .B(plane2_2[21]), .Z(N436) );
  GTECH_XOR2 C3053 ( .A(plane0_2[127]), .B(N309), .Z(perm_output[127]) );
  GTECH_XOR2 C3054 ( .A(plane0_2[126]), .B(N310), .Z(perm_output[126]) );
  GTECH_XOR2 C3055 ( .A(plane0_2[125]), .B(N311), .Z(perm_output[125]) );
  GTECH_XOR2 C3056 ( .A(plane0_2[124]), .B(N312), .Z(perm_output[124]) );
  GTECH_XOR2 C3057 ( .A(plane0_2[123]), .B(N313), .Z(perm_output[123]) );
  GTECH_XOR2 C3058 ( .A(plane0_2[122]), .B(N314), .Z(perm_output[122]) );
  GTECH_XOR2 C3059 ( .A(plane0_2[121]), .B(N315), .Z(perm_output[121]) );
  GTECH_XOR2 C3060 ( .A(plane0_2[120]), .B(N316), .Z(perm_output[120]) );
  GTECH_XOR2 C3061 ( .A(plane0_2[119]), .B(N317), .Z(perm_output[119]) );
  GTECH_XOR2 C3062 ( .A(plane0_2[118]), .B(N318), .Z(perm_output[118]) );
  GTECH_XOR2 C3063 ( .A(plane0_2[117]), .B(N319), .Z(perm_output[117]) );
  GTECH_XOR2 C3064 ( .A(plane0_2[116]), .B(N320), .Z(perm_output[116]) );
  GTECH_XOR2 C3065 ( .A(plane0_2[115]), .B(N321), .Z(perm_output[115]) );
  GTECH_XOR2 C3066 ( .A(plane0_2[114]), .B(N322), .Z(perm_output[114]) );
  GTECH_XOR2 C3067 ( .A(plane0_2[113]), .B(N323), .Z(perm_output[113]) );
  GTECH_XOR2 C3068 ( .A(plane0_2[112]), .B(N324), .Z(perm_output[112]) );
  GTECH_XOR2 C3069 ( .A(plane0_2[111]), .B(N325), .Z(perm_output[111]) );
  GTECH_XOR2 C3070 ( .A(plane0_2[110]), .B(N326), .Z(perm_output[110]) );
  GTECH_XOR2 C3071 ( .A(plane0_2[109]), .B(N327), .Z(perm_output[109]) );
  GTECH_XOR2 C3072 ( .A(plane0_2[108]), .B(N328), .Z(perm_output[108]) );
  GTECH_XOR2 C3073 ( .A(add_rnd_const_small[11]), .B(N329), .Z(
        perm_output[107]) );
  GTECH_XOR2 C3074 ( .A(add_rnd_const_small[10]), .B(N330), .Z(
        perm_output[106]) );
  GTECH_XOR2 C3075 ( .A(add_rnd_const_small[9]), .B(N331), .Z(perm_output[105]) );
  GTECH_XOR2 C3076 ( .A(add_rnd_const_small[8]), .B(N332), .Z(perm_output[104]) );
  GTECH_XOR2 C3077 ( .A(add_rnd_const_small[7]), .B(N333), .Z(perm_output[103]) );
  GTECH_XOR2 C3078 ( .A(add_rnd_const_small[6]), .B(N334), .Z(perm_output[102]) );
  GTECH_XOR2 C3079 ( .A(add_rnd_const_small[5]), .B(N335), .Z(perm_output[101]) );
  GTECH_XOR2 C3080 ( .A(add_rnd_const_small[4]), .B(N336), .Z(perm_output[100]) );
  GTECH_XOR2 C3081 ( .A(add_rnd_const_small[3]), .B(N337), .Z(perm_output[99])
         );
  GTECH_XOR2 C3082 ( .A(add_rnd_const_small[2]), .B(N338), .Z(perm_output[98])
         );
  GTECH_XOR2 C3083 ( .A(add_rnd_const_small[1]), .B(N339), .Z(perm_output[97])
         );
  GTECH_XOR2 C3084 ( .A(add_rnd_const_small[0]), .B(N340), .Z(perm_output[96])
         );
  GTECH_XOR2 C3085 ( .A(plane0_2[95]), .B(N341), .Z(perm_output[95]) );
  GTECH_XOR2 C3086 ( .A(plane0_2[94]), .B(N342), .Z(perm_output[94]) );
  GTECH_XOR2 C3087 ( .A(plane0_2[93]), .B(N343), .Z(perm_output[93]) );
  GTECH_XOR2 C3088 ( .A(plane0_2[92]), .B(N344), .Z(perm_output[92]) );
  GTECH_XOR2 C3089 ( .A(plane0_2[91]), .B(N345), .Z(perm_output[91]) );
  GTECH_XOR2 C3090 ( .A(plane0_2[90]), .B(N346), .Z(perm_output[90]) );
  GTECH_XOR2 C3091 ( .A(plane0_2[89]), .B(N347), .Z(perm_output[89]) );
  GTECH_XOR2 C3092 ( .A(plane0_2[88]), .B(N348), .Z(perm_output[88]) );
  GTECH_XOR2 C3093 ( .A(plane0_2[87]), .B(N349), .Z(perm_output[87]) );
  GTECH_XOR2 C3094 ( .A(plane0_2[86]), .B(N350), .Z(perm_output[86]) );
  GTECH_XOR2 C3095 ( .A(plane0_2[85]), .B(N351), .Z(perm_output[85]) );
  GTECH_XOR2 C3096 ( .A(plane0_2[84]), .B(N352), .Z(perm_output[84]) );
  GTECH_XOR2 C3097 ( .A(plane0_2[83]), .B(N353), .Z(perm_output[83]) );
  GTECH_XOR2 C3098 ( .A(plane0_2[82]), .B(N354), .Z(perm_output[82]) );
  GTECH_XOR2 C3099 ( .A(plane0_2[81]), .B(N355), .Z(perm_output[81]) );
  GTECH_XOR2 C3100 ( .A(plane0_2[80]), .B(N356), .Z(perm_output[80]) );
  GTECH_XOR2 C3101 ( .A(plane0_2[79]), .B(N357), .Z(perm_output[79]) );
  GTECH_XOR2 C3102 ( .A(plane0_2[78]), .B(N358), .Z(perm_output[78]) );
  GTECH_XOR2 C3103 ( .A(plane0_2[77]), .B(N359), .Z(perm_output[77]) );
  GTECH_XOR2 C3104 ( .A(plane0_2[76]), .B(N360), .Z(perm_output[76]) );
  GTECH_XOR2 C3105 ( .A(plane0_2[75]), .B(N361), .Z(perm_output[75]) );
  GTECH_XOR2 C3106 ( .A(plane0_2[74]), .B(N362), .Z(perm_output[74]) );
  GTECH_XOR2 C3107 ( .A(plane0_2[73]), .B(N363), .Z(perm_output[73]) );
  GTECH_XOR2 C3108 ( .A(plane0_2[72]), .B(N364), .Z(perm_output[72]) );
  GTECH_XOR2 C3109 ( .A(plane0_2[71]), .B(N365), .Z(perm_output[71]) );
  GTECH_XOR2 C3110 ( .A(plane0_2[70]), .B(N366), .Z(perm_output[70]) );
  GTECH_XOR2 C3111 ( .A(plane0_2[69]), .B(N367), .Z(perm_output[69]) );
  GTECH_XOR2 C3112 ( .A(plane0_2[68]), .B(N368), .Z(perm_output[68]) );
  GTECH_XOR2 C3113 ( .A(plane0_2[67]), .B(N369), .Z(perm_output[67]) );
  GTECH_XOR2 C3114 ( .A(plane0_2[66]), .B(N370), .Z(perm_output[66]) );
  GTECH_XOR2 C3115 ( .A(plane0_2[65]), .B(N371), .Z(perm_output[65]) );
  GTECH_XOR2 C3116 ( .A(plane0_2[64]), .B(N372), .Z(perm_output[64]) );
  GTECH_XOR2 C3117 ( .A(plane0_2[63]), .B(N373), .Z(perm_output[63]) );
  GTECH_XOR2 C3118 ( .A(plane0_2[62]), .B(N374), .Z(perm_output[62]) );
  GTECH_XOR2 C3119 ( .A(plane0_2[61]), .B(N375), .Z(perm_output[61]) );
  GTECH_XOR2 C3120 ( .A(plane0_2[60]), .B(N376), .Z(perm_output[60]) );
  GTECH_XOR2 C3121 ( .A(plane0_2[59]), .B(N377), .Z(perm_output[59]) );
  GTECH_XOR2 C3122 ( .A(plane0_2[58]), .B(N378), .Z(perm_output[58]) );
  GTECH_XOR2 C3123 ( .A(plane0_2[57]), .B(N379), .Z(perm_output[57]) );
  GTECH_XOR2 C3124 ( .A(plane0_2[56]), .B(N380), .Z(perm_output[56]) );
  GTECH_XOR2 C3125 ( .A(plane0_2[55]), .B(N381), .Z(perm_output[55]) );
  GTECH_XOR2 C3126 ( .A(plane0_2[54]), .B(N382), .Z(perm_output[54]) );
  GTECH_XOR2 C3127 ( .A(plane0_2[53]), .B(N383), .Z(perm_output[53]) );
  GTECH_XOR2 C3128 ( .A(plane0_2[52]), .B(N384), .Z(perm_output[52]) );
  GTECH_XOR2 C3129 ( .A(plane0_2[51]), .B(N385), .Z(perm_output[51]) );
  GTECH_XOR2 C3130 ( .A(plane0_2[50]), .B(N386), .Z(perm_output[50]) );
  GTECH_XOR2 C3131 ( .A(plane0_2[49]), .B(N387), .Z(perm_output[49]) );
  GTECH_XOR2 C3132 ( .A(plane0_2[48]), .B(N388), .Z(perm_output[48]) );
  GTECH_XOR2 C3133 ( .A(plane0_2[47]), .B(N389), .Z(perm_output[47]) );
  GTECH_XOR2 C3134 ( .A(plane0_2[46]), .B(N390), .Z(perm_output[46]) );
  GTECH_XOR2 C3135 ( .A(plane0_2[45]), .B(N391), .Z(perm_output[45]) );
  GTECH_XOR2 C3136 ( .A(plane0_2[44]), .B(N392), .Z(perm_output[44]) );
  GTECH_XOR2 C3137 ( .A(plane0_2[43]), .B(N393), .Z(perm_output[43]) );
  GTECH_XOR2 C3138 ( .A(plane0_2[42]), .B(N394), .Z(perm_output[42]) );
  GTECH_XOR2 C3139 ( .A(plane0_2[41]), .B(N395), .Z(perm_output[41]) );
  GTECH_XOR2 C3140 ( .A(plane0_2[40]), .B(N396), .Z(perm_output[40]) );
  GTECH_XOR2 C3141 ( .A(plane0_2[39]), .B(N397), .Z(perm_output[39]) );
  GTECH_XOR2 C3142 ( .A(plane0_2[38]), .B(N398), .Z(perm_output[38]) );
  GTECH_XOR2 C3143 ( .A(plane0_2[37]), .B(N399), .Z(perm_output[37]) );
  GTECH_XOR2 C3144 ( .A(plane0_2[36]), .B(N400), .Z(perm_output[36]) );
  GTECH_XOR2 C3145 ( .A(plane0_2[35]), .B(N401), .Z(perm_output[35]) );
  GTECH_XOR2 C3146 ( .A(plane0_2[34]), .B(N402), .Z(perm_output[34]) );
  GTECH_XOR2 C3147 ( .A(plane0_2[33]), .B(N403), .Z(perm_output[33]) );
  GTECH_XOR2 C3148 ( .A(plane0_2[32]), .B(N404), .Z(perm_output[32]) );
  GTECH_XOR2 C3149 ( .A(plane0_2[31]), .B(N405), .Z(perm_output[31]) );
  GTECH_XOR2 C3150 ( .A(plane0_2[30]), .B(N406), .Z(perm_output[30]) );
  GTECH_XOR2 C3151 ( .A(plane0_2[29]), .B(N407), .Z(perm_output[29]) );
  GTECH_XOR2 C3152 ( .A(plane0_2[28]), .B(N408), .Z(perm_output[28]) );
  GTECH_XOR2 C3153 ( .A(plane0_2[27]), .B(N409), .Z(perm_output[27]) );
  GTECH_XOR2 C3154 ( .A(plane0_2[26]), .B(N410), .Z(perm_output[26]) );
  GTECH_XOR2 C3155 ( .A(plane0_2[25]), .B(N411), .Z(perm_output[25]) );
  GTECH_XOR2 C3156 ( .A(plane0_2[24]), .B(N412), .Z(perm_output[24]) );
  GTECH_XOR2 C3157 ( .A(plane0_2[23]), .B(N413), .Z(perm_output[23]) );
  GTECH_XOR2 C3158 ( .A(plane0_2[22]), .B(N414), .Z(perm_output[22]) );
  GTECH_XOR2 C3159 ( .A(plane0_2[21]), .B(N415), .Z(perm_output[21]) );
  GTECH_XOR2 C3160 ( .A(plane0_2[20]), .B(N416), .Z(perm_output[20]) );
  GTECH_XOR2 C3161 ( .A(plane0_2[19]), .B(N417), .Z(perm_output[19]) );
  GTECH_XOR2 C3162 ( .A(plane0_2[18]), .B(N418), .Z(perm_output[18]) );
  GTECH_XOR2 C3163 ( .A(plane0_2[17]), .B(N419), .Z(perm_output[17]) );
  GTECH_XOR2 C3164 ( .A(plane0_2[16]), .B(N420), .Z(perm_output[16]) );
  GTECH_XOR2 C3165 ( .A(plane0_2[15]), .B(N421), .Z(perm_output[15]) );
  GTECH_XOR2 C3166 ( .A(plane0_2[14]), .B(N422), .Z(perm_output[14]) );
  GTECH_XOR2 C3167 ( .A(plane0_2[13]), .B(N423), .Z(perm_output[13]) );
  GTECH_XOR2 C3168 ( .A(plane0_2[12]), .B(N424), .Z(perm_output[12]) );
  GTECH_XOR2 C3169 ( .A(plane0_2[11]), .B(N425), .Z(perm_output[11]) );
  GTECH_XOR2 C3170 ( .A(plane0_2[10]), .B(N426), .Z(perm_output[10]) );
  GTECH_XOR2 C3171 ( .A(plane0_2[9]), .B(N427), .Z(perm_output[9]) );
  GTECH_XOR2 C3172 ( .A(plane0_2[8]), .B(N428), .Z(perm_output[8]) );
  GTECH_XOR2 C3173 ( .A(plane0_2[7]), .B(N429), .Z(perm_output[7]) );
  GTECH_XOR2 C3174 ( .A(plane0_2[6]), .B(N430), .Z(perm_output[6]) );
  GTECH_XOR2 C3175 ( .A(plane0_2[5]), .B(N431), .Z(perm_output[5]) );
  GTECH_XOR2 C3176 ( .A(plane0_2[4]), .B(N432), .Z(perm_output[4]) );
  GTECH_XOR2 C3177 ( .A(plane0_2[3]), .B(N433), .Z(perm_output[3]) );
  GTECH_XOR2 C3178 ( .A(plane0_2[2]), .B(N434), .Z(perm_output[2]) );
  GTECH_XOR2 C3179 ( .A(plane0_2[1]), .B(N435), .Z(perm_output[1]) );
  GTECH_XOR2 C3180 ( .A(plane0_2[0]), .B(N436), .Z(perm_output[0]) );
  GTECH_NOT I_148 ( .A(plane2_2[116]), .Z(N437) );
  GTECH_NOT I_149 ( .A(plane2_2[115]), .Z(N438) );
  GTECH_NOT I_150 ( .A(plane2_2[114]), .Z(N439) );
  GTECH_NOT I_151 ( .A(plane2_2[113]), .Z(N440) );
  GTECH_NOT I_152 ( .A(plane2_2[112]), .Z(N441) );
  GTECH_NOT I_153 ( .A(plane2_2[111]), .Z(N442) );
  GTECH_NOT I_154 ( .A(plane2_2[110]), .Z(N443) );
  GTECH_NOT I_155 ( .A(plane2_2[109]), .Z(N444) );
  GTECH_NOT I_156 ( .A(plane2_2[108]), .Z(N445) );
  GTECH_NOT I_157 ( .A(plane2_2[107]), .Z(N446) );
  GTECH_NOT I_158 ( .A(plane2_2[106]), .Z(N447) );
  GTECH_NOT I_159 ( .A(plane2_2[105]), .Z(N448) );
  GTECH_NOT I_160 ( .A(plane2_2[104]), .Z(N449) );
  GTECH_NOT I_161 ( .A(plane2_2[103]), .Z(N450) );
  GTECH_NOT I_162 ( .A(plane2_2[102]), .Z(N451) );
  GTECH_NOT I_163 ( .A(plane2_2[101]), .Z(N452) );
  GTECH_NOT I_164 ( .A(plane2_2[100]), .Z(N453) );
  GTECH_NOT I_165 ( .A(plane2_2[99]), .Z(N454) );
  GTECH_NOT I_166 ( .A(plane2_2[98]), .Z(N455) );
  GTECH_NOT I_167 ( .A(plane2_2[97]), .Z(N456) );
  GTECH_NOT I_168 ( .A(plane2_2[96]), .Z(N457) );
  GTECH_NOT I_169 ( .A(plane2_2[127]), .Z(N458) );
  GTECH_NOT I_170 ( .A(plane2_2[126]), .Z(N459) );
  GTECH_NOT I_171 ( .A(plane2_2[125]), .Z(N460) );
  GTECH_NOT I_172 ( .A(plane2_2[124]), .Z(N461) );
  GTECH_NOT I_173 ( .A(plane2_2[123]), .Z(N462) );
  GTECH_NOT I_174 ( .A(plane2_2[122]), .Z(N463) );
  GTECH_NOT I_175 ( .A(plane2_2[121]), .Z(N464) );
  GTECH_NOT I_176 ( .A(plane2_2[120]), .Z(N465) );
  GTECH_NOT I_177 ( .A(plane2_2[119]), .Z(N466) );
  GTECH_NOT I_178 ( .A(plane2_2[118]), .Z(N467) );
  GTECH_NOT I_179 ( .A(plane2_2[117]), .Z(N468) );
  GTECH_NOT I_180 ( .A(plane2_2[84]), .Z(N469) );
  GTECH_NOT I_181 ( .A(plane2_2[83]), .Z(N470) );
  GTECH_NOT I_182 ( .A(plane2_2[82]), .Z(N471) );
  GTECH_NOT I_183 ( .A(plane2_2[81]), .Z(N472) );
  GTECH_NOT I_184 ( .A(plane2_2[80]), .Z(N473) );
  GTECH_NOT I_185 ( .A(plane2_2[79]), .Z(N474) );
  GTECH_NOT I_186 ( .A(plane2_2[78]), .Z(N475) );
  GTECH_NOT I_187 ( .A(plane2_2[77]), .Z(N476) );
  GTECH_NOT I_188 ( .A(plane2_2[76]), .Z(N477) );
  GTECH_NOT I_189 ( .A(plane2_2[75]), .Z(N478) );
  GTECH_NOT I_190 ( .A(plane2_2[74]), .Z(N479) );
  GTECH_NOT I_191 ( .A(plane2_2[73]), .Z(N480) );
  GTECH_NOT I_192 ( .A(plane2_2[72]), .Z(N481) );
  GTECH_NOT I_193 ( .A(plane2_2[71]), .Z(N482) );
  GTECH_NOT I_194 ( .A(plane2_2[70]), .Z(N483) );
  GTECH_NOT I_195 ( .A(plane2_2[69]), .Z(N484) );
  GTECH_NOT I_196 ( .A(plane2_2[68]), .Z(N485) );
  GTECH_NOT I_197 ( .A(plane2_2[67]), .Z(N486) );
  GTECH_NOT I_198 ( .A(plane2_2[66]), .Z(N487) );
  GTECH_NOT I_199 ( .A(plane2_2[65]), .Z(N488) );
  GTECH_NOT I_200 ( .A(plane2_2[64]), .Z(N489) );
  GTECH_NOT I_201 ( .A(plane2_2[95]), .Z(N490) );
  GTECH_NOT I_202 ( .A(plane2_2[94]), .Z(N491) );
  GTECH_NOT I_203 ( .A(plane2_2[93]), .Z(N492) );
  GTECH_NOT I_204 ( .A(plane2_2[92]), .Z(N493) );
  GTECH_NOT I_205 ( .A(plane2_2[91]), .Z(N494) );
  GTECH_NOT I_206 ( .A(plane2_2[90]), .Z(N495) );
  GTECH_NOT I_207 ( .A(plane2_2[89]), .Z(N496) );
  GTECH_NOT I_208 ( .A(plane2_2[88]), .Z(N497) );
  GTECH_NOT I_209 ( .A(plane2_2[87]), .Z(N498) );
  GTECH_NOT I_210 ( .A(plane2_2[86]), .Z(N499) );
  GTECH_NOT I_211 ( .A(plane2_2[85]), .Z(N500) );
  GTECH_NOT I_212 ( .A(plane2_2[52]), .Z(N501) );
  GTECH_NOT I_213 ( .A(plane2_2[51]), .Z(N502) );
  GTECH_NOT I_214 ( .A(plane2_2[50]), .Z(N503) );
  GTECH_NOT I_215 ( .A(plane2_2[49]), .Z(N504) );
  GTECH_NOT I_216 ( .A(plane2_2[48]), .Z(N505) );
  GTECH_NOT I_217 ( .A(plane2_2[47]), .Z(N506) );
  GTECH_NOT I_218 ( .A(plane2_2[46]), .Z(N507) );
  GTECH_NOT I_219 ( .A(plane2_2[45]), .Z(N508) );
  GTECH_NOT I_220 ( .A(plane2_2[44]), .Z(N509) );
  GTECH_NOT I_221 ( .A(plane2_2[43]), .Z(N510) );
  GTECH_NOT I_222 ( .A(plane2_2[42]), .Z(N511) );
  GTECH_NOT I_223 ( .A(plane2_2[41]), .Z(N512) );
  GTECH_NOT I_224 ( .A(plane2_2[40]), .Z(N513) );
  GTECH_NOT I_225 ( .A(plane2_2[39]), .Z(N514) );
  GTECH_NOT I_226 ( .A(plane2_2[38]), .Z(N515) );
  GTECH_NOT I_227 ( .A(plane2_2[37]), .Z(N516) );
  GTECH_NOT I_228 ( .A(plane2_2[36]), .Z(N517) );
  GTECH_NOT I_229 ( .A(plane2_2[35]), .Z(N518) );
  GTECH_NOT I_230 ( .A(plane2_2[34]), .Z(N519) );
  GTECH_NOT I_231 ( .A(plane2_2[33]), .Z(N520) );
  GTECH_NOT I_232 ( .A(plane2_2[32]), .Z(N521) );
  GTECH_NOT I_233 ( .A(plane2_2[63]), .Z(N522) );
  GTECH_NOT I_234 ( .A(plane2_2[62]), .Z(N523) );
  GTECH_NOT I_235 ( .A(plane2_2[61]), .Z(N524) );
  GTECH_NOT I_236 ( .A(plane2_2[60]), .Z(N525) );
  GTECH_NOT I_237 ( .A(plane2_2[59]), .Z(N526) );
  GTECH_NOT I_238 ( .A(plane2_2[58]), .Z(N527) );
  GTECH_NOT I_239 ( .A(plane2_2[57]), .Z(N528) );
  GTECH_NOT I_240 ( .A(plane2_2[56]), .Z(N529) );
  GTECH_NOT I_241 ( .A(plane2_2[55]), .Z(N530) );
  GTECH_NOT I_242 ( .A(plane2_2[54]), .Z(N531) );
  GTECH_NOT I_243 ( .A(plane2_2[53]), .Z(N532) );
  GTECH_NOT I_244 ( .A(plane2_2[20]), .Z(N533) );
  GTECH_NOT I_245 ( .A(plane2_2[19]), .Z(N534) );
  GTECH_NOT I_246 ( .A(plane2_2[18]), .Z(N535) );
  GTECH_NOT I_247 ( .A(plane2_2[17]), .Z(N536) );
  GTECH_NOT I_248 ( .A(plane2_2[16]), .Z(N537) );
  GTECH_NOT I_249 ( .A(plane2_2[15]), .Z(N538) );
  GTECH_NOT I_250 ( .A(plane2_2[14]), .Z(N539) );
  GTECH_NOT I_251 ( .A(plane2_2[13]), .Z(N540) );
  GTECH_NOT I_252 ( .A(plane2_2[12]), .Z(N541) );
  GTECH_NOT I_253 ( .A(plane2_2[11]), .Z(N542) );
  GTECH_NOT I_254 ( .A(plane2_2[10]), .Z(N543) );
  GTECH_NOT I_255 ( .A(plane2_2[9]), .Z(N544) );
  GTECH_NOT I_256 ( .A(plane2_2[8]), .Z(N545) );
  GTECH_NOT I_257 ( .A(plane2_2[7]), .Z(N546) );
  GTECH_NOT I_258 ( .A(plane2_2[6]), .Z(N547) );
  GTECH_NOT I_259 ( .A(plane2_2[5]), .Z(N548) );
  GTECH_NOT I_260 ( .A(plane2_2[4]), .Z(N549) );
  GTECH_NOT I_261 ( .A(plane2_2[3]), .Z(N550) );
  GTECH_NOT I_262 ( .A(plane2_2[2]), .Z(N551) );
  GTECH_NOT I_263 ( .A(plane2_2[1]), .Z(N552) );
  GTECH_NOT I_264 ( .A(plane2_2[0]), .Z(N553) );
  GTECH_NOT I_265 ( .A(plane2_2[31]), .Z(N554) );
  GTECH_NOT I_266 ( .A(plane2_2[30]), .Z(N555) );
  GTECH_NOT I_267 ( .A(plane2_2[29]), .Z(N556) );
  GTECH_NOT I_268 ( .A(plane2_2[28]), .Z(N557) );
  GTECH_NOT I_269 ( .A(plane2_2[27]), .Z(N558) );
  GTECH_NOT I_270 ( .A(plane2_2[26]), .Z(N559) );
  GTECH_NOT I_271 ( .A(plane2_2[25]), .Z(N560) );
  GTECH_NOT I_272 ( .A(plane2_2[24]), .Z(N561) );
  GTECH_NOT I_273 ( .A(plane2_2[23]), .Z(N562) );
  GTECH_NOT I_274 ( .A(plane2_2[22]), .Z(N563) );
  GTECH_NOT I_275 ( .A(plane2_2[21]), .Z(N564) );
  GTECH_AND2 C3309 ( .A(N437), .B(plane0_2[127]), .Z(N565) );
  GTECH_AND2 C3310 ( .A(N438), .B(plane0_2[126]), .Z(N566) );
  GTECH_AND2 C3311 ( .A(N439), .B(plane0_2[125]), .Z(N567) );
  GTECH_AND2 C3312 ( .A(N440), .B(plane0_2[124]), .Z(N568) );
  GTECH_AND2 C3313 ( .A(N441), .B(plane0_2[123]), .Z(N569) );
  GTECH_AND2 C3314 ( .A(N442), .B(plane0_2[122]), .Z(N570) );
  GTECH_AND2 C3315 ( .A(N443), .B(plane0_2[121]), .Z(N571) );
  GTECH_AND2 C3316 ( .A(N444), .B(plane0_2[120]), .Z(N572) );
  GTECH_AND2 C3317 ( .A(N445), .B(plane0_2[119]), .Z(N573) );
  GTECH_AND2 C3318 ( .A(N446), .B(plane0_2[118]), .Z(N574) );
  GTECH_AND2 C3319 ( .A(N447), .B(plane0_2[117]), .Z(N575) );
  GTECH_AND2 C3320 ( .A(N448), .B(plane0_2[116]), .Z(N576) );
  GTECH_AND2 C3321 ( .A(N449), .B(plane0_2[115]), .Z(N577) );
  GTECH_AND2 C3322 ( .A(N450), .B(plane0_2[114]), .Z(N578) );
  GTECH_AND2 C3323 ( .A(N451), .B(plane0_2[113]), .Z(N579) );
  GTECH_AND2 C3324 ( .A(N452), .B(plane0_2[112]), .Z(N580) );
  GTECH_AND2 C3325 ( .A(N453), .B(plane0_2[111]), .Z(N581) );
  GTECH_AND2 C3326 ( .A(N454), .B(plane0_2[110]), .Z(N582) );
  GTECH_AND2 C3327 ( .A(N455), .B(plane0_2[109]), .Z(N583) );
  GTECH_AND2 C3328 ( .A(N456), .B(plane0_2[108]), .Z(N584) );
  GTECH_AND2 C3329 ( .A(N457), .B(add_rnd_const_small[11]), .Z(N585) );
  GTECH_AND2 C3330 ( .A(N458), .B(add_rnd_const_small[10]), .Z(N586) );
  GTECH_AND2 C3331 ( .A(N459), .B(add_rnd_const_small[9]), .Z(N587) );
  GTECH_AND2 C3332 ( .A(N460), .B(add_rnd_const_small[8]), .Z(N588) );
  GTECH_AND2 C3333 ( .A(N461), .B(add_rnd_const_small[7]), .Z(N589) );
  GTECH_AND2 C3334 ( .A(N462), .B(add_rnd_const_small[6]), .Z(N590) );
  GTECH_AND2 C3335 ( .A(N463), .B(add_rnd_const_small[5]), .Z(N591) );
  GTECH_AND2 C3336 ( .A(N464), .B(add_rnd_const_small[4]), .Z(N592) );
  GTECH_AND2 C3337 ( .A(N465), .B(add_rnd_const_small[3]), .Z(N593) );
  GTECH_AND2 C3338 ( .A(N466), .B(add_rnd_const_small[2]), .Z(N594) );
  GTECH_AND2 C3339 ( .A(N467), .B(add_rnd_const_small[1]), .Z(N595) );
  GTECH_AND2 C3340 ( .A(N468), .B(add_rnd_const_small[0]), .Z(N596) );
  GTECH_AND2 C3341 ( .A(N469), .B(plane0_2[95]), .Z(N597) );
  GTECH_AND2 C3342 ( .A(N470), .B(plane0_2[94]), .Z(N598) );
  GTECH_AND2 C3343 ( .A(N471), .B(plane0_2[93]), .Z(N599) );
  GTECH_AND2 C3344 ( .A(N472), .B(plane0_2[92]), .Z(N600) );
  GTECH_AND2 C3345 ( .A(N473), .B(plane0_2[91]), .Z(N601) );
  GTECH_AND2 C3346 ( .A(N474), .B(plane0_2[90]), .Z(N602) );
  GTECH_AND2 C3347 ( .A(N475), .B(plane0_2[89]), .Z(N603) );
  GTECH_AND2 C3348 ( .A(N476), .B(plane0_2[88]), .Z(N604) );
  GTECH_AND2 C3349 ( .A(N477), .B(plane0_2[87]), .Z(N605) );
  GTECH_AND2 C3350 ( .A(N478), .B(plane0_2[86]), .Z(N606) );
  GTECH_AND2 C3351 ( .A(N479), .B(plane0_2[85]), .Z(N607) );
  GTECH_AND2 C3352 ( .A(N480), .B(plane0_2[84]), .Z(N608) );
  GTECH_AND2 C3353 ( .A(N481), .B(plane0_2[83]), .Z(N609) );
  GTECH_AND2 C3354 ( .A(N482), .B(plane0_2[82]), .Z(N610) );
  GTECH_AND2 C3355 ( .A(N483), .B(plane0_2[81]), .Z(N611) );
  GTECH_AND2 C3356 ( .A(N484), .B(plane0_2[80]), .Z(N612) );
  GTECH_AND2 C3357 ( .A(N485), .B(plane0_2[79]), .Z(N613) );
  GTECH_AND2 C3358 ( .A(N486), .B(plane0_2[78]), .Z(N614) );
  GTECH_AND2 C3359 ( .A(N487), .B(plane0_2[77]), .Z(N615) );
  GTECH_AND2 C3360 ( .A(N488), .B(plane0_2[76]), .Z(N616) );
  GTECH_AND2 C3361 ( .A(N489), .B(plane0_2[75]), .Z(N617) );
  GTECH_AND2 C3362 ( .A(N490), .B(plane0_2[74]), .Z(N618) );
  GTECH_AND2 C3363 ( .A(N491), .B(plane0_2[73]), .Z(N619) );
  GTECH_AND2 C3364 ( .A(N492), .B(plane0_2[72]), .Z(N620) );
  GTECH_AND2 C3365 ( .A(N493), .B(plane0_2[71]), .Z(N621) );
  GTECH_AND2 C3366 ( .A(N494), .B(plane0_2[70]), .Z(N622) );
  GTECH_AND2 C3367 ( .A(N495), .B(plane0_2[69]), .Z(N623) );
  GTECH_AND2 C3368 ( .A(N496), .B(plane0_2[68]), .Z(N624) );
  GTECH_AND2 C3369 ( .A(N497), .B(plane0_2[67]), .Z(N625) );
  GTECH_AND2 C3370 ( .A(N498), .B(plane0_2[66]), .Z(N626) );
  GTECH_AND2 C3371 ( .A(N499), .B(plane0_2[65]), .Z(N627) );
  GTECH_AND2 C3372 ( .A(N500), .B(plane0_2[64]), .Z(N628) );
  GTECH_AND2 C3373 ( .A(N501), .B(plane0_2[63]), .Z(N629) );
  GTECH_AND2 C3374 ( .A(N502), .B(plane0_2[62]), .Z(N630) );
  GTECH_AND2 C3375 ( .A(N503), .B(plane0_2[61]), .Z(N631) );
  GTECH_AND2 C3376 ( .A(N504), .B(plane0_2[60]), .Z(N632) );
  GTECH_AND2 C3377 ( .A(N505), .B(plane0_2[59]), .Z(N633) );
  GTECH_AND2 C3378 ( .A(N506), .B(plane0_2[58]), .Z(N634) );
  GTECH_AND2 C3379 ( .A(N507), .B(plane0_2[57]), .Z(N635) );
  GTECH_AND2 C3380 ( .A(N508), .B(plane0_2[56]), .Z(N636) );
  GTECH_AND2 C3381 ( .A(N509), .B(plane0_2[55]), .Z(N637) );
  GTECH_AND2 C3382 ( .A(N510), .B(plane0_2[54]), .Z(N638) );
  GTECH_AND2 C3383 ( .A(N511), .B(plane0_2[53]), .Z(N639) );
  GTECH_AND2 C3384 ( .A(N512), .B(plane0_2[52]), .Z(N640) );
  GTECH_AND2 C3385 ( .A(N513), .B(plane0_2[51]), .Z(N641) );
  GTECH_AND2 C3386 ( .A(N514), .B(plane0_2[50]), .Z(N642) );
  GTECH_AND2 C3387 ( .A(N515), .B(plane0_2[49]), .Z(N643) );
  GTECH_AND2 C3388 ( .A(N516), .B(plane0_2[48]), .Z(N644) );
  GTECH_AND2 C3389 ( .A(N517), .B(plane0_2[47]), .Z(N645) );
  GTECH_AND2 C3390 ( .A(N518), .B(plane0_2[46]), .Z(N646) );
  GTECH_AND2 C3391 ( .A(N519), .B(plane0_2[45]), .Z(N647) );
  GTECH_AND2 C3392 ( .A(N520), .B(plane0_2[44]), .Z(N648) );
  GTECH_AND2 C3393 ( .A(N521), .B(plane0_2[43]), .Z(N649) );
  GTECH_AND2 C3394 ( .A(N522), .B(plane0_2[42]), .Z(N650) );
  GTECH_AND2 C3395 ( .A(N523), .B(plane0_2[41]), .Z(N651) );
  GTECH_AND2 C3396 ( .A(N524), .B(plane0_2[40]), .Z(N652) );
  GTECH_AND2 C3397 ( .A(N525), .B(plane0_2[39]), .Z(N653) );
  GTECH_AND2 C3398 ( .A(N526), .B(plane0_2[38]), .Z(N654) );
  GTECH_AND2 C3399 ( .A(N527), .B(plane0_2[37]), .Z(N655) );
  GTECH_AND2 C3400 ( .A(N528), .B(plane0_2[36]), .Z(N656) );
  GTECH_AND2 C3401 ( .A(N529), .B(plane0_2[35]), .Z(N657) );
  GTECH_AND2 C3402 ( .A(N530), .B(plane0_2[34]), .Z(N658) );
  GTECH_AND2 C3403 ( .A(N531), .B(plane0_2[33]), .Z(N659) );
  GTECH_AND2 C3404 ( .A(N532), .B(plane0_2[32]), .Z(N660) );
  GTECH_AND2 C3405 ( .A(N533), .B(plane0_2[31]), .Z(N661) );
  GTECH_AND2 C3406 ( .A(N534), .B(plane0_2[30]), .Z(N662) );
  GTECH_AND2 C3407 ( .A(N535), .B(plane0_2[29]), .Z(N663) );
  GTECH_AND2 C3408 ( .A(N536), .B(plane0_2[28]), .Z(N664) );
  GTECH_AND2 C3409 ( .A(N537), .B(plane0_2[27]), .Z(N665) );
  GTECH_AND2 C3410 ( .A(N538), .B(plane0_2[26]), .Z(N666) );
  GTECH_AND2 C3411 ( .A(N539), .B(plane0_2[25]), .Z(N667) );
  GTECH_AND2 C3412 ( .A(N540), .B(plane0_2[24]), .Z(N668) );
  GTECH_AND2 C3413 ( .A(N541), .B(plane0_2[23]), .Z(N669) );
  GTECH_AND2 C3414 ( .A(N542), .B(plane0_2[22]), .Z(N670) );
  GTECH_AND2 C3415 ( .A(N543), .B(plane0_2[21]), .Z(N671) );
  GTECH_AND2 C3416 ( .A(N544), .B(plane0_2[20]), .Z(N672) );
  GTECH_AND2 C3417 ( .A(N545), .B(plane0_2[19]), .Z(N673) );
  GTECH_AND2 C3418 ( .A(N546), .B(plane0_2[18]), .Z(N674) );
  GTECH_AND2 C3419 ( .A(N547), .B(plane0_2[17]), .Z(N675) );
  GTECH_AND2 C3420 ( .A(N548), .B(plane0_2[16]), .Z(N676) );
  GTECH_AND2 C3421 ( .A(N549), .B(plane0_2[15]), .Z(N677) );
  GTECH_AND2 C3422 ( .A(N550), .B(plane0_2[14]), .Z(N678) );
  GTECH_AND2 C3423 ( .A(N551), .B(plane0_2[13]), .Z(N679) );
  GTECH_AND2 C3424 ( .A(N552), .B(plane0_2[12]), .Z(N680) );
  GTECH_AND2 C3425 ( .A(N553), .B(plane0_2[11]), .Z(N681) );
  GTECH_AND2 C3426 ( .A(N554), .B(plane0_2[10]), .Z(N682) );
  GTECH_AND2 C3427 ( .A(N555), .B(plane0_2[9]), .Z(N683) );
  GTECH_AND2 C3428 ( .A(N556), .B(plane0_2[8]), .Z(N684) );
  GTECH_AND2 C3429 ( .A(N557), .B(plane0_2[7]), .Z(N685) );
  GTECH_AND2 C3430 ( .A(N558), .B(plane0_2[6]), .Z(N686) );
  GTECH_AND2 C3431 ( .A(N559), .B(plane0_2[5]), .Z(N687) );
  GTECH_AND2 C3432 ( .A(N560), .B(plane0_2[4]), .Z(N688) );
  GTECH_AND2 C3433 ( .A(N561), .B(plane0_2[3]), .Z(N689) );
  GTECH_AND2 C3434 ( .A(N562), .B(plane0_2[2]), .Z(N690) );
  GTECH_AND2 C3435 ( .A(N563), .B(plane0_2[1]), .Z(N691) );
  GTECH_AND2 C3436 ( .A(N564), .B(plane0_2[0]), .Z(N692) );
  GTECH_XOR2 C3437 ( .A(plane1_2[31]), .B(N565), .Z(perm_output[224]) );
  GTECH_XOR2 C3438 ( .A(plane1_2[30]), .B(N566), .Z(perm_output[255]) );
  GTECH_XOR2 C3439 ( .A(plane1_2[29]), .B(N567), .Z(perm_output[254]) );
  GTECH_XOR2 C3440 ( .A(plane1_2[28]), .B(N568), .Z(perm_output[253]) );
  GTECH_XOR2 C3441 ( .A(plane1_2[27]), .B(N569), .Z(perm_output[252]) );
  GTECH_XOR2 C3442 ( .A(plane1_2[26]), .B(N570), .Z(perm_output[251]) );
  GTECH_XOR2 C3443 ( .A(plane1_2[25]), .B(N571), .Z(perm_output[250]) );
  GTECH_XOR2 C3444 ( .A(plane1_2[24]), .B(N572), .Z(perm_output[249]) );
  GTECH_XOR2 C3445 ( .A(plane1_2[23]), .B(N573), .Z(perm_output[248]) );
  GTECH_XOR2 C3446 ( .A(plane1_2[22]), .B(N574), .Z(perm_output[247]) );
  GTECH_XOR2 C3447 ( .A(plane1_2[21]), .B(N575), .Z(perm_output[246]) );
  GTECH_XOR2 C3448 ( .A(plane1_2[20]), .B(N576), .Z(perm_output[245]) );
  GTECH_XOR2 C3449 ( .A(plane1_2[19]), .B(N577), .Z(perm_output[244]) );
  GTECH_XOR2 C3450 ( .A(plane1_2[18]), .B(N578), .Z(perm_output[243]) );
  GTECH_XOR2 C3451 ( .A(plane1_2[17]), .B(N579), .Z(perm_output[242]) );
  GTECH_XOR2 C3452 ( .A(plane1_2[16]), .B(N580), .Z(perm_output[241]) );
  GTECH_XOR2 C3453 ( .A(plane1_2[15]), .B(N581), .Z(perm_output[240]) );
  GTECH_XOR2 C3454 ( .A(plane1_2[14]), .B(N582), .Z(perm_output[239]) );
  GTECH_XOR2 C3455 ( .A(plane1_2[13]), .B(N583), .Z(perm_output[238]) );
  GTECH_XOR2 C3456 ( .A(plane1_2[12]), .B(N584), .Z(perm_output[237]) );
  GTECH_XOR2 C3457 ( .A(plane1_2[11]), .B(N585), .Z(perm_output[236]) );
  GTECH_XOR2 C3458 ( .A(plane1_2[10]), .B(N586), .Z(perm_output[235]) );
  GTECH_XOR2 C3459 ( .A(plane1_2[9]), .B(N587), .Z(perm_output[234]) );
  GTECH_XOR2 C3460 ( .A(plane1_2[8]), .B(N588), .Z(perm_output[233]) );
  GTECH_XOR2 C3461 ( .A(plane1_2[7]), .B(N589), .Z(perm_output[232]) );
  GTECH_XOR2 C3462 ( .A(plane1_2[6]), .B(N590), .Z(perm_output[231]) );
  GTECH_XOR2 C3463 ( .A(plane1_2[5]), .B(N591), .Z(perm_output[230]) );
  GTECH_XOR2 C3464 ( .A(plane1_2[4]), .B(N592), .Z(perm_output[229]) );
  GTECH_XOR2 C3465 ( .A(plane1_2[3]), .B(N593), .Z(perm_output[228]) );
  GTECH_XOR2 C3466 ( .A(plane1_2[2]), .B(N594), .Z(perm_output[227]) );
  GTECH_XOR2 C3467 ( .A(plane1_2[1]), .B(N595), .Z(perm_output[226]) );
  GTECH_XOR2 C3468 ( .A(plane1_2[0]), .B(N596), .Z(perm_output[225]) );
  GTECH_XOR2 C3469 ( .A(plane1_2[127]), .B(N597), .Z(perm_output[192]) );
  GTECH_XOR2 C3470 ( .A(plane1_2[126]), .B(N598), .Z(perm_output[223]) );
  GTECH_XOR2 C3471 ( .A(plane1_2[125]), .B(N599), .Z(perm_output[222]) );
  GTECH_XOR2 C3472 ( .A(plane1_2[124]), .B(N600), .Z(perm_output[221]) );
  GTECH_XOR2 C3473 ( .A(plane1_2[123]), .B(N601), .Z(perm_output[220]) );
  GTECH_XOR2 C3474 ( .A(plane1_2[122]), .B(N602), .Z(perm_output[219]) );
  GTECH_XOR2 C3475 ( .A(plane1_2[121]), .B(N603), .Z(perm_output[218]) );
  GTECH_XOR2 C3476 ( .A(plane1_2[120]), .B(N604), .Z(perm_output[217]) );
  GTECH_XOR2 C3477 ( .A(plane1_2[119]), .B(N605), .Z(perm_output[216]) );
  GTECH_XOR2 C3478 ( .A(plane1_2[118]), .B(N606), .Z(perm_output[215]) );
  GTECH_XOR2 C3479 ( .A(plane1_2[117]), .B(N607), .Z(perm_output[214]) );
  GTECH_XOR2 C3480 ( .A(plane1_2[116]), .B(N608), .Z(perm_output[213]) );
  GTECH_XOR2 C3481 ( .A(plane1_2[115]), .B(N609), .Z(perm_output[212]) );
  GTECH_XOR2 C3482 ( .A(plane1_2[114]), .B(N610), .Z(perm_output[211]) );
  GTECH_XOR2 C3483 ( .A(plane1_2[113]), .B(N611), .Z(perm_output[210]) );
  GTECH_XOR2 C3484 ( .A(plane1_2[112]), .B(N612), .Z(perm_output[209]) );
  GTECH_XOR2 C3485 ( .A(plane1_2[111]), .B(N613), .Z(perm_output[208]) );
  GTECH_XOR2 C3486 ( .A(plane1_2[110]), .B(N614), .Z(perm_output[207]) );
  GTECH_XOR2 C3487 ( .A(plane1_2[109]), .B(N615), .Z(perm_output[206]) );
  GTECH_XOR2 C3488 ( .A(plane1_2[108]), .B(N616), .Z(perm_output[205]) );
  GTECH_XOR2 C3489 ( .A(plane1_2[107]), .B(N617), .Z(perm_output[204]) );
  GTECH_XOR2 C3490 ( .A(plane1_2[106]), .B(N618), .Z(perm_output[203]) );
  GTECH_XOR2 C3491 ( .A(plane1_2[105]), .B(N619), .Z(perm_output[202]) );
  GTECH_XOR2 C3492 ( .A(plane1_2[104]), .B(N620), .Z(perm_output[201]) );
  GTECH_XOR2 C3493 ( .A(plane1_2[103]), .B(N621), .Z(perm_output[200]) );
  GTECH_XOR2 C3494 ( .A(plane1_2[102]), .B(N622), .Z(perm_output[199]) );
  GTECH_XOR2 C3495 ( .A(plane1_2[101]), .B(N623), .Z(perm_output[198]) );
  GTECH_XOR2 C3496 ( .A(plane1_2[100]), .B(N624), .Z(perm_output[197]) );
  GTECH_XOR2 C3497 ( .A(plane1_2[99]), .B(N625), .Z(perm_output[196]) );
  GTECH_XOR2 C3498 ( .A(plane1_2[98]), .B(N626), .Z(perm_output[195]) );
  GTECH_XOR2 C3499 ( .A(plane1_2[97]), .B(N627), .Z(perm_output[194]) );
  GTECH_XOR2 C3500 ( .A(plane1_2[96]), .B(N628), .Z(perm_output[193]) );
  GTECH_XOR2 C3501 ( .A(plane1_2[95]), .B(N629), .Z(perm_output[160]) );
  GTECH_XOR2 C3502 ( .A(plane1_2[94]), .B(N630), .Z(perm_output[191]) );
  GTECH_XOR2 C3503 ( .A(plane1_2[93]), .B(N631), .Z(perm_output[190]) );
  GTECH_XOR2 C3504 ( .A(plane1_2[92]), .B(N632), .Z(perm_output[189]) );
  GTECH_XOR2 C3505 ( .A(plane1_2[91]), .B(N633), .Z(perm_output[188]) );
  GTECH_XOR2 C3506 ( .A(plane1_2[90]), .B(N634), .Z(perm_output[187]) );
  GTECH_XOR2 C3507 ( .A(plane1_2[89]), .B(N635), .Z(perm_output[186]) );
  GTECH_XOR2 C3508 ( .A(plane1_2[88]), .B(N636), .Z(perm_output[185]) );
  GTECH_XOR2 C3509 ( .A(plane1_2[87]), .B(N637), .Z(perm_output[184]) );
  GTECH_XOR2 C3510 ( .A(plane1_2[86]), .B(N638), .Z(perm_output[183]) );
  GTECH_XOR2 C3511 ( .A(plane1_2[85]), .B(N639), .Z(perm_output[182]) );
  GTECH_XOR2 C3512 ( .A(plane1_2[84]), .B(N640), .Z(perm_output[181]) );
  GTECH_XOR2 C3513 ( .A(plane1_2[83]), .B(N641), .Z(perm_output[180]) );
  GTECH_XOR2 C3514 ( .A(plane1_2[82]), .B(N642), .Z(perm_output[179]) );
  GTECH_XOR2 C3515 ( .A(plane1_2[81]), .B(N643), .Z(perm_output[178]) );
  GTECH_XOR2 C3516 ( .A(plane1_2[80]), .B(N644), .Z(perm_output[177]) );
  GTECH_XOR2 C3517 ( .A(plane1_2[79]), .B(N645), .Z(perm_output[176]) );
  GTECH_XOR2 C3518 ( .A(plane1_2[78]), .B(N646), .Z(perm_output[175]) );
  GTECH_XOR2 C3519 ( .A(plane1_2[77]), .B(N647), .Z(perm_output[174]) );
  GTECH_XOR2 C3520 ( .A(plane1_2[76]), .B(N648), .Z(perm_output[173]) );
  GTECH_XOR2 C3521 ( .A(plane1_2[75]), .B(N649), .Z(perm_output[172]) );
  GTECH_XOR2 C3522 ( .A(plane1_2[74]), .B(N650), .Z(perm_output[171]) );
  GTECH_XOR2 C3523 ( .A(plane1_2[73]), .B(N651), .Z(perm_output[170]) );
  GTECH_XOR2 C3524 ( .A(plane1_2[72]), .B(N652), .Z(perm_output[169]) );
  GTECH_XOR2 C3525 ( .A(plane1_2[71]), .B(N653), .Z(perm_output[168]) );
  GTECH_XOR2 C3526 ( .A(plane1_2[70]), .B(N654), .Z(perm_output[167]) );
  GTECH_XOR2 C3527 ( .A(plane1_2[69]), .B(N655), .Z(perm_output[166]) );
  GTECH_XOR2 C3528 ( .A(plane1_2[68]), .B(N656), .Z(perm_output[165]) );
  GTECH_XOR2 C3529 ( .A(plane1_2[67]), .B(N657), .Z(perm_output[164]) );
  GTECH_XOR2 C3530 ( .A(plane1_2[66]), .B(N658), .Z(perm_output[163]) );
  GTECH_XOR2 C3531 ( .A(plane1_2[65]), .B(N659), .Z(perm_output[162]) );
  GTECH_XOR2 C3532 ( .A(plane1_2[64]), .B(N660), .Z(perm_output[161]) );
  GTECH_XOR2 C3533 ( .A(plane1_2[63]), .B(N661), .Z(perm_output[128]) );
  GTECH_XOR2 C3534 ( .A(plane1_2[62]), .B(N662), .Z(perm_output[159]) );
  GTECH_XOR2 C3535 ( .A(plane1_2[61]), .B(N663), .Z(perm_output[158]) );
  GTECH_XOR2 C3536 ( .A(plane1_2[60]), .B(N664), .Z(perm_output[157]) );
  GTECH_XOR2 C3537 ( .A(plane1_2[59]), .B(N665), .Z(perm_output[156]) );
  GTECH_XOR2 C3538 ( .A(plane1_2[58]), .B(N666), .Z(perm_output[155]) );
  GTECH_XOR2 C3539 ( .A(plane1_2[57]), .B(N667), .Z(perm_output[154]) );
  GTECH_XOR2 C3540 ( .A(plane1_2[56]), .B(N668), .Z(perm_output[153]) );
  GTECH_XOR2 C3541 ( .A(plane1_2[55]), .B(N669), .Z(perm_output[152]) );
  GTECH_XOR2 C3542 ( .A(plane1_2[54]), .B(N670), .Z(perm_output[151]) );
  GTECH_XOR2 C3543 ( .A(plane1_2[53]), .B(N671), .Z(perm_output[150]) );
  GTECH_XOR2 C3544 ( .A(plane1_2[52]), .B(N672), .Z(perm_output[149]) );
  GTECH_XOR2 C3545 ( .A(plane1_2[51]), .B(N673), .Z(perm_output[148]) );
  GTECH_XOR2 C3546 ( .A(plane1_2[50]), .B(N674), .Z(perm_output[147]) );
  GTECH_XOR2 C3547 ( .A(plane1_2[49]), .B(N675), .Z(perm_output[146]) );
  GTECH_XOR2 C3548 ( .A(plane1_2[48]), .B(N676), .Z(perm_output[145]) );
  GTECH_XOR2 C3549 ( .A(plane1_2[47]), .B(N677), .Z(perm_output[144]) );
  GTECH_XOR2 C3550 ( .A(plane1_2[46]), .B(N678), .Z(perm_output[143]) );
  GTECH_XOR2 C3551 ( .A(plane1_2[45]), .B(N679), .Z(perm_output[142]) );
  GTECH_XOR2 C3552 ( .A(plane1_2[44]), .B(N680), .Z(perm_output[141]) );
  GTECH_XOR2 C3553 ( .A(plane1_2[43]), .B(N681), .Z(perm_output[140]) );
  GTECH_XOR2 C3554 ( .A(plane1_2[42]), .B(N682), .Z(perm_output[139]) );
  GTECH_XOR2 C3555 ( .A(plane1_2[41]), .B(N683), .Z(perm_output[138]) );
  GTECH_XOR2 C3556 ( .A(plane1_2[40]), .B(N684), .Z(perm_output[137]) );
  GTECH_XOR2 C3557 ( .A(plane1_2[39]), .B(N685), .Z(perm_output[136]) );
  GTECH_XOR2 C3558 ( .A(plane1_2[38]), .B(N686), .Z(perm_output[135]) );
  GTECH_XOR2 C3559 ( .A(plane1_2[37]), .B(N687), .Z(perm_output[134]) );
  GTECH_XOR2 C3560 ( .A(plane1_2[36]), .B(N688), .Z(perm_output[133]) );
  GTECH_XOR2 C3561 ( .A(plane1_2[35]), .B(N689), .Z(perm_output[132]) );
  GTECH_XOR2 C3562 ( .A(plane1_2[34]), .B(N690), .Z(perm_output[131]) );
  GTECH_XOR2 C3563 ( .A(plane1_2[33]), .B(N691), .Z(perm_output[130]) );
  GTECH_XOR2 C3564 ( .A(plane1_2[32]), .B(N692), .Z(perm_output[129]) );
  GTECH_NOT I_276 ( .A(plane0_2[127]), .Z(N693) );
  GTECH_NOT I_277 ( .A(plane0_2[126]), .Z(N694) );
  GTECH_NOT I_278 ( .A(plane0_2[125]), .Z(N695) );
  GTECH_NOT I_279 ( .A(plane0_2[124]), .Z(N696) );
  GTECH_NOT I_280 ( .A(plane0_2[123]), .Z(N697) );
  GTECH_NOT I_281 ( .A(plane0_2[122]), .Z(N698) );
  GTECH_NOT I_282 ( .A(plane0_2[121]), .Z(N699) );
  GTECH_NOT I_283 ( .A(plane0_2[120]), .Z(N700) );
  GTECH_NOT I_284 ( .A(plane0_2[119]), .Z(N701) );
  GTECH_NOT I_285 ( .A(plane0_2[118]), .Z(N702) );
  GTECH_NOT I_286 ( .A(plane0_2[117]), .Z(N703) );
  GTECH_NOT I_287 ( .A(plane0_2[116]), .Z(N704) );
  GTECH_NOT I_288 ( .A(plane0_2[115]), .Z(N705) );
  GTECH_NOT I_289 ( .A(plane0_2[114]), .Z(N706) );
  GTECH_NOT I_290 ( .A(plane0_2[113]), .Z(N707) );
  GTECH_NOT I_291 ( .A(plane0_2[112]), .Z(N708) );
  GTECH_NOT I_292 ( .A(plane0_2[111]), .Z(N709) );
  GTECH_NOT I_293 ( .A(plane0_2[110]), .Z(N710) );
  GTECH_NOT I_294 ( .A(plane0_2[109]), .Z(N711) );
  GTECH_NOT I_295 ( .A(plane0_2[108]), .Z(N712) );
  GTECH_NOT I_296 ( .A(add_rnd_const_small[11]), .Z(N713) );
  GTECH_NOT I_297 ( .A(add_rnd_const_small[10]), .Z(N714) );
  GTECH_NOT I_298 ( .A(add_rnd_const_small[9]), .Z(N715) );
  GTECH_NOT I_299 ( .A(add_rnd_const_small[8]), .Z(N716) );
  GTECH_NOT I_300 ( .A(add_rnd_const_small[7]), .Z(N717) );
  GTECH_NOT I_301 ( .A(add_rnd_const_small[6]), .Z(N718) );
  GTECH_NOT I_302 ( .A(add_rnd_const_small[5]), .Z(N719) );
  GTECH_NOT I_303 ( .A(add_rnd_const_small[4]), .Z(N720) );
  GTECH_NOT I_304 ( .A(add_rnd_const_small[3]), .Z(N721) );
  GTECH_NOT I_305 ( .A(add_rnd_const_small[2]), .Z(N722) );
  GTECH_NOT I_306 ( .A(add_rnd_const_small[1]), .Z(N723) );
  GTECH_NOT I_307 ( .A(add_rnd_const_small[0]), .Z(N724) );
  GTECH_NOT I_308 ( .A(plane0_2[95]), .Z(N725) );
  GTECH_NOT I_309 ( .A(plane0_2[94]), .Z(N726) );
  GTECH_NOT I_310 ( .A(plane0_2[93]), .Z(N727) );
  GTECH_NOT I_311 ( .A(plane0_2[92]), .Z(N728) );
  GTECH_NOT I_312 ( .A(plane0_2[91]), .Z(N729) );
  GTECH_NOT I_313 ( .A(plane0_2[90]), .Z(N730) );
  GTECH_NOT I_314 ( .A(plane0_2[89]), .Z(N731) );
  GTECH_NOT I_315 ( .A(plane0_2[88]), .Z(N732) );
  GTECH_NOT I_316 ( .A(plane0_2[87]), .Z(N733) );
  GTECH_NOT I_317 ( .A(plane0_2[86]), .Z(N734) );
  GTECH_NOT I_318 ( .A(plane0_2[85]), .Z(N735) );
  GTECH_NOT I_319 ( .A(plane0_2[84]), .Z(N736) );
  GTECH_NOT I_320 ( .A(plane0_2[83]), .Z(N737) );
  GTECH_NOT I_321 ( .A(plane0_2[82]), .Z(N738) );
  GTECH_NOT I_322 ( .A(plane0_2[81]), .Z(N739) );
  GTECH_NOT I_323 ( .A(plane0_2[80]), .Z(N740) );
  GTECH_NOT I_324 ( .A(plane0_2[79]), .Z(N741) );
  GTECH_NOT I_325 ( .A(plane0_2[78]), .Z(N742) );
  GTECH_NOT I_326 ( .A(plane0_2[77]), .Z(N743) );
  GTECH_NOT I_327 ( .A(plane0_2[76]), .Z(N744) );
  GTECH_NOT I_328 ( .A(plane0_2[75]), .Z(N745) );
  GTECH_NOT I_329 ( .A(plane0_2[74]), .Z(N746) );
  GTECH_NOT I_330 ( .A(plane0_2[73]), .Z(N747) );
  GTECH_NOT I_331 ( .A(plane0_2[72]), .Z(N748) );
  GTECH_NOT I_332 ( .A(plane0_2[71]), .Z(N749) );
  GTECH_NOT I_333 ( .A(plane0_2[70]), .Z(N750) );
  GTECH_NOT I_334 ( .A(plane0_2[69]), .Z(N751) );
  GTECH_NOT I_335 ( .A(plane0_2[68]), .Z(N752) );
  GTECH_NOT I_336 ( .A(plane0_2[67]), .Z(N753) );
  GTECH_NOT I_337 ( .A(plane0_2[66]), .Z(N754) );
  GTECH_NOT I_338 ( .A(plane0_2[65]), .Z(N755) );
  GTECH_NOT I_339 ( .A(plane0_2[64]), .Z(N756) );
  GTECH_NOT I_340 ( .A(plane0_2[63]), .Z(N757) );
  GTECH_NOT I_341 ( .A(plane0_2[62]), .Z(N758) );
  GTECH_NOT I_342 ( .A(plane0_2[61]), .Z(N759) );
  GTECH_NOT I_343 ( .A(plane0_2[60]), .Z(N760) );
  GTECH_NOT I_344 ( .A(plane0_2[59]), .Z(N761) );
  GTECH_NOT I_345 ( .A(plane0_2[58]), .Z(N762) );
  GTECH_NOT I_346 ( .A(plane0_2[57]), .Z(N763) );
  GTECH_NOT I_347 ( .A(plane0_2[56]), .Z(N764) );
  GTECH_NOT I_348 ( .A(plane0_2[55]), .Z(N765) );
  GTECH_NOT I_349 ( .A(plane0_2[54]), .Z(N766) );
  GTECH_NOT I_350 ( .A(plane0_2[53]), .Z(N767) );
  GTECH_NOT I_351 ( .A(plane0_2[52]), .Z(N768) );
  GTECH_NOT I_352 ( .A(plane0_2[51]), .Z(N769) );
  GTECH_NOT I_353 ( .A(plane0_2[50]), .Z(N770) );
  GTECH_NOT I_354 ( .A(plane0_2[49]), .Z(N771) );
  GTECH_NOT I_355 ( .A(plane0_2[48]), .Z(N772) );
  GTECH_NOT I_356 ( .A(plane0_2[47]), .Z(N773) );
  GTECH_NOT I_357 ( .A(plane0_2[46]), .Z(N774) );
  GTECH_NOT I_358 ( .A(plane0_2[45]), .Z(N775) );
  GTECH_NOT I_359 ( .A(plane0_2[44]), .Z(N776) );
  GTECH_NOT I_360 ( .A(plane0_2[43]), .Z(N777) );
  GTECH_NOT I_361 ( .A(plane0_2[42]), .Z(N778) );
  GTECH_NOT I_362 ( .A(plane0_2[41]), .Z(N779) );
  GTECH_NOT I_363 ( .A(plane0_2[40]), .Z(N780) );
  GTECH_NOT I_364 ( .A(plane0_2[39]), .Z(N781) );
  GTECH_NOT I_365 ( .A(plane0_2[38]), .Z(N782) );
  GTECH_NOT I_366 ( .A(plane0_2[37]), .Z(N783) );
  GTECH_NOT I_367 ( .A(plane0_2[36]), .Z(N784) );
  GTECH_NOT I_368 ( .A(plane0_2[35]), .Z(N785) );
  GTECH_NOT I_369 ( .A(plane0_2[34]), .Z(N786) );
  GTECH_NOT I_370 ( .A(plane0_2[33]), .Z(N787) );
  GTECH_NOT I_371 ( .A(plane0_2[32]), .Z(N788) );
  GTECH_NOT I_372 ( .A(plane0_2[31]), .Z(N789) );
  GTECH_NOT I_373 ( .A(plane0_2[30]), .Z(N790) );
  GTECH_NOT I_374 ( .A(plane0_2[29]), .Z(N791) );
  GTECH_NOT I_375 ( .A(plane0_2[28]), .Z(N792) );
  GTECH_NOT I_376 ( .A(plane0_2[27]), .Z(N793) );
  GTECH_NOT I_377 ( .A(plane0_2[26]), .Z(N794) );
  GTECH_NOT I_378 ( .A(plane0_2[25]), .Z(N795) );
  GTECH_NOT I_379 ( .A(plane0_2[24]), .Z(N796) );
  GTECH_NOT I_380 ( .A(plane0_2[23]), .Z(N797) );
  GTECH_NOT I_381 ( .A(plane0_2[22]), .Z(N798) );
  GTECH_NOT I_382 ( .A(plane0_2[21]), .Z(N799) );
  GTECH_NOT I_383 ( .A(plane0_2[20]), .Z(N800) );
  GTECH_NOT I_384 ( .A(plane0_2[19]), .Z(N801) );
  GTECH_NOT I_385 ( .A(plane0_2[18]), .Z(N802) );
  GTECH_NOT I_386 ( .A(plane0_2[17]), .Z(N803) );
  GTECH_NOT I_387 ( .A(plane0_2[16]), .Z(N804) );
  GTECH_NOT I_388 ( .A(plane0_2[15]), .Z(N805) );
  GTECH_NOT I_389 ( .A(plane0_2[14]), .Z(N806) );
  GTECH_NOT I_390 ( .A(plane0_2[13]), .Z(N807) );
  GTECH_NOT I_391 ( .A(plane0_2[12]), .Z(N808) );
  GTECH_NOT I_392 ( .A(plane0_2[11]), .Z(N809) );
  GTECH_NOT I_393 ( .A(plane0_2[10]), .Z(N810) );
  GTECH_NOT I_394 ( .A(plane0_2[9]), .Z(N811) );
  GTECH_NOT I_395 ( .A(plane0_2[8]), .Z(N812) );
  GTECH_NOT I_396 ( .A(plane0_2[7]), .Z(N813) );
  GTECH_NOT I_397 ( .A(plane0_2[6]), .Z(N814) );
  GTECH_NOT I_398 ( .A(plane0_2[5]), .Z(N815) );
  GTECH_NOT I_399 ( .A(plane0_2[4]), .Z(N816) );
  GTECH_NOT I_400 ( .A(plane0_2[3]), .Z(N817) );
  GTECH_NOT I_401 ( .A(plane0_2[2]), .Z(N818) );
  GTECH_NOT I_402 ( .A(plane0_2[1]), .Z(N819) );
  GTECH_NOT I_403 ( .A(plane0_2[0]), .Z(N820) );
  GTECH_AND2 C3693 ( .A(N693), .B(plane1_2[31]), .Z(N821) );
  GTECH_AND2 C3694 ( .A(N694), .B(plane1_2[30]), .Z(N822) );
  GTECH_AND2 C3695 ( .A(N695), .B(plane1_2[29]), .Z(N823) );
  GTECH_AND2 C3696 ( .A(N696), .B(plane1_2[28]), .Z(N824) );
  GTECH_AND2 C3697 ( .A(N697), .B(plane1_2[27]), .Z(N825) );
  GTECH_AND2 C3698 ( .A(N698), .B(plane1_2[26]), .Z(N826) );
  GTECH_AND2 C3699 ( .A(N699), .B(plane1_2[25]), .Z(N827) );
  GTECH_AND2 C3700 ( .A(N700), .B(plane1_2[24]), .Z(N828) );
  GTECH_AND2 C3701 ( .A(N701), .B(plane1_2[23]), .Z(N829) );
  GTECH_AND2 C3702 ( .A(N702), .B(plane1_2[22]), .Z(N830) );
  GTECH_AND2 C3703 ( .A(N703), .B(plane1_2[21]), .Z(N831) );
  GTECH_AND2 C3704 ( .A(N704), .B(plane1_2[20]), .Z(N832) );
  GTECH_AND2 C3705 ( .A(N705), .B(plane1_2[19]), .Z(N833) );
  GTECH_AND2 C3706 ( .A(N706), .B(plane1_2[18]), .Z(N834) );
  GTECH_AND2 C3707 ( .A(N707), .B(plane1_2[17]), .Z(N835) );
  GTECH_AND2 C3708 ( .A(N708), .B(plane1_2[16]), .Z(N836) );
  GTECH_AND2 C3709 ( .A(N709), .B(plane1_2[15]), .Z(N837) );
  GTECH_AND2 C3710 ( .A(N710), .B(plane1_2[14]), .Z(N838) );
  GTECH_AND2 C3711 ( .A(N711), .B(plane1_2[13]), .Z(N839) );
  GTECH_AND2 C3712 ( .A(N712), .B(plane1_2[12]), .Z(N840) );
  GTECH_AND2 C3713 ( .A(N713), .B(plane1_2[11]), .Z(N841) );
  GTECH_AND2 C3714 ( .A(N714), .B(plane1_2[10]), .Z(N842) );
  GTECH_AND2 C3715 ( .A(N715), .B(plane1_2[9]), .Z(N843) );
  GTECH_AND2 C3716 ( .A(N716), .B(plane1_2[8]), .Z(N844) );
  GTECH_AND2 C3717 ( .A(N717), .B(plane1_2[7]), .Z(N845) );
  GTECH_AND2 C3718 ( .A(N718), .B(plane1_2[6]), .Z(N846) );
  GTECH_AND2 C3719 ( .A(N719), .B(plane1_2[5]), .Z(N847) );
  GTECH_AND2 C3720 ( .A(N720), .B(plane1_2[4]), .Z(N848) );
  GTECH_AND2 C3721 ( .A(N721), .B(plane1_2[3]), .Z(N849) );
  GTECH_AND2 C3722 ( .A(N722), .B(plane1_2[2]), .Z(N850) );
  GTECH_AND2 C3723 ( .A(N723), .B(plane1_2[1]), .Z(N851) );
  GTECH_AND2 C3724 ( .A(N724), .B(plane1_2[0]), .Z(N852) );
  GTECH_AND2 C3725 ( .A(N725), .B(plane1_2[127]), .Z(N853) );
  GTECH_AND2 C3726 ( .A(N726), .B(plane1_2[126]), .Z(N854) );
  GTECH_AND2 C3727 ( .A(N727), .B(plane1_2[125]), .Z(N855) );
  GTECH_AND2 C3728 ( .A(N728), .B(plane1_2[124]), .Z(N856) );
  GTECH_AND2 C3729 ( .A(N729), .B(plane1_2[123]), .Z(N857) );
  GTECH_AND2 C3730 ( .A(N730), .B(plane1_2[122]), .Z(N858) );
  GTECH_AND2 C3731 ( .A(N731), .B(plane1_2[121]), .Z(N859) );
  GTECH_AND2 C3732 ( .A(N732), .B(plane1_2[120]), .Z(N860) );
  GTECH_AND2 C3733 ( .A(N733), .B(plane1_2[119]), .Z(N861) );
  GTECH_AND2 C3734 ( .A(N734), .B(plane1_2[118]), .Z(N862) );
  GTECH_AND2 C3735 ( .A(N735), .B(plane1_2[117]), .Z(N863) );
  GTECH_AND2 C3736 ( .A(N736), .B(plane1_2[116]), .Z(N864) );
  GTECH_AND2 C3737 ( .A(N737), .B(plane1_2[115]), .Z(N865) );
  GTECH_AND2 C3738 ( .A(N738), .B(plane1_2[114]), .Z(N866) );
  GTECH_AND2 C3739 ( .A(N739), .B(plane1_2[113]), .Z(N867) );
  GTECH_AND2 C3740 ( .A(N740), .B(plane1_2[112]), .Z(N868) );
  GTECH_AND2 C3741 ( .A(N741), .B(plane1_2[111]), .Z(N869) );
  GTECH_AND2 C3742 ( .A(N742), .B(plane1_2[110]), .Z(N870) );
  GTECH_AND2 C3743 ( .A(N743), .B(plane1_2[109]), .Z(N871) );
  GTECH_AND2 C3744 ( .A(N744), .B(plane1_2[108]), .Z(N872) );
  GTECH_AND2 C3745 ( .A(N745), .B(plane1_2[107]), .Z(N873) );
  GTECH_AND2 C3746 ( .A(N746), .B(plane1_2[106]), .Z(N874) );
  GTECH_AND2 C3747 ( .A(N747), .B(plane1_2[105]), .Z(N875) );
  GTECH_AND2 C3748 ( .A(N748), .B(plane1_2[104]), .Z(N876) );
  GTECH_AND2 C3749 ( .A(N749), .B(plane1_2[103]), .Z(N877) );
  GTECH_AND2 C3750 ( .A(N750), .B(plane1_2[102]), .Z(N878) );
  GTECH_AND2 C3751 ( .A(N751), .B(plane1_2[101]), .Z(N879) );
  GTECH_AND2 C3752 ( .A(N752), .B(plane1_2[100]), .Z(N880) );
  GTECH_AND2 C3753 ( .A(N753), .B(plane1_2[99]), .Z(N881) );
  GTECH_AND2 C3754 ( .A(N754), .B(plane1_2[98]), .Z(N882) );
  GTECH_AND2 C3755 ( .A(N755), .B(plane1_2[97]), .Z(N883) );
  GTECH_AND2 C3756 ( .A(N756), .B(plane1_2[96]), .Z(N884) );
  GTECH_AND2 C3757 ( .A(N757), .B(plane1_2[95]), .Z(N885) );
  GTECH_AND2 C3758 ( .A(N758), .B(plane1_2[94]), .Z(N886) );
  GTECH_AND2 C3759 ( .A(N759), .B(plane1_2[93]), .Z(N887) );
  GTECH_AND2 C3760 ( .A(N760), .B(plane1_2[92]), .Z(N888) );
  GTECH_AND2 C3761 ( .A(N761), .B(plane1_2[91]), .Z(N889) );
  GTECH_AND2 C3762 ( .A(N762), .B(plane1_2[90]), .Z(N890) );
  GTECH_AND2 C3763 ( .A(N763), .B(plane1_2[89]), .Z(N891) );
  GTECH_AND2 C3764 ( .A(N764), .B(plane1_2[88]), .Z(N892) );
  GTECH_AND2 C3765 ( .A(N765), .B(plane1_2[87]), .Z(N893) );
  GTECH_AND2 C3766 ( .A(N766), .B(plane1_2[86]), .Z(N894) );
  GTECH_AND2 C3767 ( .A(N767), .B(plane1_2[85]), .Z(N895) );
  GTECH_AND2 C3768 ( .A(N768), .B(plane1_2[84]), .Z(N896) );
  GTECH_AND2 C3769 ( .A(N769), .B(plane1_2[83]), .Z(N897) );
  GTECH_AND2 C3770 ( .A(N770), .B(plane1_2[82]), .Z(N898) );
  GTECH_AND2 C3771 ( .A(N771), .B(plane1_2[81]), .Z(N899) );
  GTECH_AND2 C3772 ( .A(N772), .B(plane1_2[80]), .Z(N900) );
  GTECH_AND2 C3773 ( .A(N773), .B(plane1_2[79]), .Z(N901) );
  GTECH_AND2 C3774 ( .A(N774), .B(plane1_2[78]), .Z(N902) );
  GTECH_AND2 C3775 ( .A(N775), .B(plane1_2[77]), .Z(N903) );
  GTECH_AND2 C3776 ( .A(N776), .B(plane1_2[76]), .Z(N904) );
  GTECH_AND2 C3777 ( .A(N777), .B(plane1_2[75]), .Z(N905) );
  GTECH_AND2 C3778 ( .A(N778), .B(plane1_2[74]), .Z(N906) );
  GTECH_AND2 C3779 ( .A(N779), .B(plane1_2[73]), .Z(N907) );
  GTECH_AND2 C3780 ( .A(N780), .B(plane1_2[72]), .Z(N908) );
  GTECH_AND2 C3781 ( .A(N781), .B(plane1_2[71]), .Z(N909) );
  GTECH_AND2 C3782 ( .A(N782), .B(plane1_2[70]), .Z(N910) );
  GTECH_AND2 C3783 ( .A(N783), .B(plane1_2[69]), .Z(N911) );
  GTECH_AND2 C3784 ( .A(N784), .B(plane1_2[68]), .Z(N912) );
  GTECH_AND2 C3785 ( .A(N785), .B(plane1_2[67]), .Z(N913) );
  GTECH_AND2 C3786 ( .A(N786), .B(plane1_2[66]), .Z(N914) );
  GTECH_AND2 C3787 ( .A(N787), .B(plane1_2[65]), .Z(N915) );
  GTECH_AND2 C3788 ( .A(N788), .B(plane1_2[64]), .Z(N916) );
  GTECH_AND2 C3789 ( .A(N789), .B(plane1_2[63]), .Z(N917) );
  GTECH_AND2 C3790 ( .A(N790), .B(plane1_2[62]), .Z(N918) );
  GTECH_AND2 C3791 ( .A(N791), .B(plane1_2[61]), .Z(N919) );
  GTECH_AND2 C3792 ( .A(N792), .B(plane1_2[60]), .Z(N920) );
  GTECH_AND2 C3793 ( .A(N793), .B(plane1_2[59]), .Z(N921) );
  GTECH_AND2 C3794 ( .A(N794), .B(plane1_2[58]), .Z(N922) );
  GTECH_AND2 C3795 ( .A(N795), .B(plane1_2[57]), .Z(N923) );
  GTECH_AND2 C3796 ( .A(N796), .B(plane1_2[56]), .Z(N924) );
  GTECH_AND2 C3797 ( .A(N797), .B(plane1_2[55]), .Z(N925) );
  GTECH_AND2 C3798 ( .A(N798), .B(plane1_2[54]), .Z(N926) );
  GTECH_AND2 C3799 ( .A(N799), .B(plane1_2[53]), .Z(N927) );
  GTECH_AND2 C3800 ( .A(N800), .B(plane1_2[52]), .Z(N928) );
  GTECH_AND2 C3801 ( .A(N801), .B(plane1_2[51]), .Z(N929) );
  GTECH_AND2 C3802 ( .A(N802), .B(plane1_2[50]), .Z(N930) );
  GTECH_AND2 C3803 ( .A(N803), .B(plane1_2[49]), .Z(N931) );
  GTECH_AND2 C3804 ( .A(N804), .B(plane1_2[48]), .Z(N932) );
  GTECH_AND2 C3805 ( .A(N805), .B(plane1_2[47]), .Z(N933) );
  GTECH_AND2 C3806 ( .A(N806), .B(plane1_2[46]), .Z(N934) );
  GTECH_AND2 C3807 ( .A(N807), .B(plane1_2[45]), .Z(N935) );
  GTECH_AND2 C3808 ( .A(N808), .B(plane1_2[44]), .Z(N936) );
  GTECH_AND2 C3809 ( .A(N809), .B(plane1_2[43]), .Z(N937) );
  GTECH_AND2 C3810 ( .A(N810), .B(plane1_2[42]), .Z(N938) );
  GTECH_AND2 C3811 ( .A(N811), .B(plane1_2[41]), .Z(N939) );
  GTECH_AND2 C3812 ( .A(N812), .B(plane1_2[40]), .Z(N940) );
  GTECH_AND2 C3813 ( .A(N813), .B(plane1_2[39]), .Z(N941) );
  GTECH_AND2 C3814 ( .A(N814), .B(plane1_2[38]), .Z(N942) );
  GTECH_AND2 C3815 ( .A(N815), .B(plane1_2[37]), .Z(N943) );
  GTECH_AND2 C3816 ( .A(N816), .B(plane1_2[36]), .Z(N944) );
  GTECH_AND2 C3817 ( .A(N817), .B(plane1_2[35]), .Z(N945) );
  GTECH_AND2 C3818 ( .A(N818), .B(plane1_2[34]), .Z(N946) );
  GTECH_AND2 C3819 ( .A(N819), .B(plane1_2[33]), .Z(N947) );
  GTECH_AND2 C3820 ( .A(N820), .B(plane1_2[32]), .Z(N948) );
  GTECH_XOR2 C3821 ( .A(plane2_2[116]), .B(N821), .Z(perm_output[295]) );
  GTECH_XOR2 C3822 ( .A(plane2_2[115]), .B(N822), .Z(perm_output[294]) );
  GTECH_XOR2 C3823 ( .A(plane2_2[114]), .B(N823), .Z(perm_output[293]) );
  GTECH_XOR2 C3824 ( .A(plane2_2[113]), .B(N824), .Z(perm_output[292]) );
  GTECH_XOR2 C3825 ( .A(plane2_2[112]), .B(N825), .Z(perm_output[291]) );
  GTECH_XOR2 C3826 ( .A(plane2_2[111]), .B(N826), .Z(perm_output[290]) );
  GTECH_XOR2 C3827 ( .A(plane2_2[110]), .B(N827), .Z(perm_output[289]) );
  GTECH_XOR2 C3828 ( .A(plane2_2[109]), .B(N828), .Z(perm_output[288]) );
  GTECH_XOR2 C3829 ( .A(plane2_2[108]), .B(N829), .Z(perm_output[319]) );
  GTECH_XOR2 C3830 ( .A(plane2_2[107]), .B(N830), .Z(perm_output[318]) );
  GTECH_XOR2 C3831 ( .A(plane2_2[106]), .B(N831), .Z(perm_output[317]) );
  GTECH_XOR2 C3832 ( .A(plane2_2[105]), .B(N832), .Z(perm_output[316]) );
  GTECH_XOR2 C3833 ( .A(plane2_2[104]), .B(N833), .Z(perm_output[315]) );
  GTECH_XOR2 C3834 ( .A(plane2_2[103]), .B(N834), .Z(perm_output[314]) );
  GTECH_XOR2 C3835 ( .A(plane2_2[102]), .B(N835), .Z(perm_output[313]) );
  GTECH_XOR2 C3836 ( .A(plane2_2[101]), .B(N836), .Z(perm_output[312]) );
  GTECH_XOR2 C3837 ( .A(plane2_2[100]), .B(N837), .Z(perm_output[311]) );
  GTECH_XOR2 C3838 ( .A(plane2_2[99]), .B(N838), .Z(perm_output[310]) );
  GTECH_XOR2 C3839 ( .A(plane2_2[98]), .B(N839), .Z(perm_output[309]) );
  GTECH_XOR2 C3840 ( .A(plane2_2[97]), .B(N840), .Z(perm_output[308]) );
  GTECH_XOR2 C3841 ( .A(plane2_2[96]), .B(N841), .Z(perm_output[307]) );
  GTECH_XOR2 C3842 ( .A(plane2_2[127]), .B(N842), .Z(perm_output[306]) );
  GTECH_XOR2 C3843 ( .A(plane2_2[126]), .B(N843), .Z(perm_output[305]) );
  GTECH_XOR2 C3844 ( .A(plane2_2[125]), .B(N844), .Z(perm_output[304]) );
  GTECH_XOR2 C3845 ( .A(plane2_2[124]), .B(N845), .Z(perm_output[303]) );
  GTECH_XOR2 C3846 ( .A(plane2_2[123]), .B(N846), .Z(perm_output[302]) );
  GTECH_XOR2 C3847 ( .A(plane2_2[122]), .B(N847), .Z(perm_output[301]) );
  GTECH_XOR2 C3848 ( .A(plane2_2[121]), .B(N848), .Z(perm_output[300]) );
  GTECH_XOR2 C3849 ( .A(plane2_2[120]), .B(N849), .Z(perm_output[299]) );
  GTECH_XOR2 C3850 ( .A(plane2_2[119]), .B(N850), .Z(perm_output[298]) );
  GTECH_XOR2 C3851 ( .A(plane2_2[118]), .B(N851), .Z(perm_output[297]) );
  GTECH_XOR2 C3852 ( .A(plane2_2[117]), .B(N852), .Z(perm_output[296]) );
  GTECH_XOR2 C3853 ( .A(plane2_2[84]), .B(N853), .Z(perm_output[263]) );
  GTECH_XOR2 C3854 ( .A(plane2_2[83]), .B(N854), .Z(perm_output[262]) );
  GTECH_XOR2 C3855 ( .A(plane2_2[82]), .B(N855), .Z(perm_output[261]) );
  GTECH_XOR2 C3856 ( .A(plane2_2[81]), .B(N856), .Z(perm_output[260]) );
  GTECH_XOR2 C3857 ( .A(plane2_2[80]), .B(N857), .Z(perm_output[259]) );
  GTECH_XOR2 C3858 ( .A(plane2_2[79]), .B(N858), .Z(perm_output[258]) );
  GTECH_XOR2 C3859 ( .A(plane2_2[78]), .B(N859), .Z(perm_output[257]) );
  GTECH_XOR2 C3860 ( .A(plane2_2[77]), .B(N860), .Z(perm_output[256]) );
  GTECH_XOR2 C3861 ( .A(plane2_2[76]), .B(N861), .Z(perm_output[287]) );
  GTECH_XOR2 C3862 ( .A(plane2_2[75]), .B(N862), .Z(perm_output[286]) );
  GTECH_XOR2 C3863 ( .A(plane2_2[74]), .B(N863), .Z(perm_output[285]) );
  GTECH_XOR2 C3864 ( .A(plane2_2[73]), .B(N864), .Z(perm_output[284]) );
  GTECH_XOR2 C3865 ( .A(plane2_2[72]), .B(N865), .Z(perm_output[283]) );
  GTECH_XOR2 C3866 ( .A(plane2_2[71]), .B(N866), .Z(perm_output[282]) );
  GTECH_XOR2 C3867 ( .A(plane2_2[70]), .B(N867), .Z(perm_output[281]) );
  GTECH_XOR2 C3868 ( .A(plane2_2[69]), .B(N868), .Z(perm_output[280]) );
  GTECH_XOR2 C3869 ( .A(plane2_2[68]), .B(N869), .Z(perm_output[279]) );
  GTECH_XOR2 C3870 ( .A(plane2_2[67]), .B(N870), .Z(perm_output[278]) );
  GTECH_XOR2 C3871 ( .A(plane2_2[66]), .B(N871), .Z(perm_output[277]) );
  GTECH_XOR2 C3872 ( .A(plane2_2[65]), .B(N872), .Z(perm_output[276]) );
  GTECH_XOR2 C3873 ( .A(plane2_2[64]), .B(N873), .Z(perm_output[275]) );
  GTECH_XOR2 C3874 ( .A(plane2_2[95]), .B(N874), .Z(perm_output[274]) );
  GTECH_XOR2 C3875 ( .A(plane2_2[94]), .B(N875), .Z(perm_output[273]) );
  GTECH_XOR2 C3876 ( .A(plane2_2[93]), .B(N876), .Z(perm_output[272]) );
  GTECH_XOR2 C3877 ( .A(plane2_2[92]), .B(N877), .Z(perm_output[271]) );
  GTECH_XOR2 C3878 ( .A(plane2_2[91]), .B(N878), .Z(perm_output[270]) );
  GTECH_XOR2 C3879 ( .A(plane2_2[90]), .B(N879), .Z(perm_output[269]) );
  GTECH_XOR2 C3880 ( .A(plane2_2[89]), .B(N880), .Z(perm_output[268]) );
  GTECH_XOR2 C3881 ( .A(plane2_2[88]), .B(N881), .Z(perm_output[267]) );
  GTECH_XOR2 C3882 ( .A(plane2_2[87]), .B(N882), .Z(perm_output[266]) );
  GTECH_XOR2 C3883 ( .A(plane2_2[86]), .B(N883), .Z(perm_output[265]) );
  GTECH_XOR2 C3884 ( .A(plane2_2[85]), .B(N884), .Z(perm_output[264]) );
  GTECH_XOR2 C3885 ( .A(plane2_2[52]), .B(N885), .Z(perm_output[359]) );
  GTECH_XOR2 C3886 ( .A(plane2_2[51]), .B(N886), .Z(perm_output[358]) );
  GTECH_XOR2 C3887 ( .A(plane2_2[50]), .B(N887), .Z(perm_output[357]) );
  GTECH_XOR2 C3888 ( .A(plane2_2[49]), .B(N888), .Z(perm_output[356]) );
  GTECH_XOR2 C3889 ( .A(plane2_2[48]), .B(N889), .Z(perm_output[355]) );
  GTECH_XOR2 C3890 ( .A(plane2_2[47]), .B(N890), .Z(perm_output[354]) );
  GTECH_XOR2 C3891 ( .A(plane2_2[46]), .B(N891), .Z(perm_output[353]) );
  GTECH_XOR2 C3892 ( .A(plane2_2[45]), .B(N892), .Z(perm_output[352]) );
  GTECH_XOR2 C3893 ( .A(plane2_2[44]), .B(N893), .Z(perm_output[383]) );
  GTECH_XOR2 C3894 ( .A(plane2_2[43]), .B(N894), .Z(perm_output[382]) );
  GTECH_XOR2 C3895 ( .A(plane2_2[42]), .B(N895), .Z(perm_output[381]) );
  GTECH_XOR2 C3896 ( .A(plane2_2[41]), .B(N896), .Z(perm_output[380]) );
  GTECH_XOR2 C3897 ( .A(plane2_2[40]), .B(N897), .Z(perm_output[379]) );
  GTECH_XOR2 C3898 ( .A(plane2_2[39]), .B(N898), .Z(perm_output[378]) );
  GTECH_XOR2 C3899 ( .A(plane2_2[38]), .B(N899), .Z(perm_output[377]) );
  GTECH_XOR2 C3900 ( .A(plane2_2[37]), .B(N900), .Z(perm_output[376]) );
  GTECH_XOR2 C3901 ( .A(plane2_2[36]), .B(N901), .Z(perm_output[375]) );
  GTECH_XOR2 C3902 ( .A(plane2_2[35]), .B(N902), .Z(perm_output[374]) );
  GTECH_XOR2 C3903 ( .A(plane2_2[34]), .B(N903), .Z(perm_output[373]) );
  GTECH_XOR2 C3904 ( .A(plane2_2[33]), .B(N904), .Z(perm_output[372]) );
  GTECH_XOR2 C3905 ( .A(plane2_2[32]), .B(N905), .Z(perm_output[371]) );
  GTECH_XOR2 C3906 ( .A(plane2_2[63]), .B(N906), .Z(perm_output[370]) );
  GTECH_XOR2 C3907 ( .A(plane2_2[62]), .B(N907), .Z(perm_output[369]) );
  GTECH_XOR2 C3908 ( .A(plane2_2[61]), .B(N908), .Z(perm_output[368]) );
  GTECH_XOR2 C3909 ( .A(plane2_2[60]), .B(N909), .Z(perm_output[367]) );
  GTECH_XOR2 C3910 ( .A(plane2_2[59]), .B(N910), .Z(perm_output[366]) );
  GTECH_XOR2 C3911 ( .A(plane2_2[58]), .B(N911), .Z(perm_output[365]) );
  GTECH_XOR2 C3912 ( .A(plane2_2[57]), .B(N912), .Z(perm_output[364]) );
  GTECH_XOR2 C3913 ( .A(plane2_2[56]), .B(N913), .Z(perm_output[363]) );
  GTECH_XOR2 C3914 ( .A(plane2_2[55]), .B(N914), .Z(perm_output[362]) );
  GTECH_XOR2 C3915 ( .A(plane2_2[54]), .B(N915), .Z(perm_output[361]) );
  GTECH_XOR2 C3916 ( .A(plane2_2[53]), .B(N916), .Z(perm_output[360]) );
  GTECH_XOR2 C3917 ( .A(plane2_2[20]), .B(N917), .Z(perm_output[327]) );
  GTECH_XOR2 C3918 ( .A(plane2_2[19]), .B(N918), .Z(perm_output[326]) );
  GTECH_XOR2 C3919 ( .A(plane2_2[18]), .B(N919), .Z(perm_output[325]) );
  GTECH_XOR2 C3920 ( .A(plane2_2[17]), .B(N920), .Z(perm_output[324]) );
  GTECH_XOR2 C3921 ( .A(plane2_2[16]), .B(N921), .Z(perm_output[323]) );
  GTECH_XOR2 C3922 ( .A(plane2_2[15]), .B(N922), .Z(perm_output[322]) );
  GTECH_XOR2 C3923 ( .A(plane2_2[14]), .B(N923), .Z(perm_output[321]) );
  GTECH_XOR2 C3924 ( .A(plane2_2[13]), .B(N924), .Z(perm_output[320]) );
  GTECH_XOR2 C3925 ( .A(plane2_2[12]), .B(N925), .Z(perm_output[351]) );
  GTECH_XOR2 C3926 ( .A(plane2_2[11]), .B(N926), .Z(perm_output[350]) );
  GTECH_XOR2 C3927 ( .A(plane2_2[10]), .B(N927), .Z(perm_output[349]) );
  GTECH_XOR2 C3928 ( .A(plane2_2[9]), .B(N928), .Z(perm_output[348]) );
  GTECH_XOR2 C3929 ( .A(plane2_2[8]), .B(N929), .Z(perm_output[347]) );
  GTECH_XOR2 C3930 ( .A(plane2_2[7]), .B(N930), .Z(perm_output[346]) );
  GTECH_XOR2 C3931 ( .A(plane2_2[6]), .B(N931), .Z(perm_output[345]) );
  GTECH_XOR2 C3932 ( .A(plane2_2[5]), .B(N932), .Z(perm_output[344]) );
  GTECH_XOR2 C3933 ( .A(plane2_2[4]), .B(N933), .Z(perm_output[343]) );
  GTECH_XOR2 C3934 ( .A(plane2_2[3]), .B(N934), .Z(perm_output[342]) );
  GTECH_XOR2 C3935 ( .A(plane2_2[2]), .B(N935), .Z(perm_output[341]) );
  GTECH_XOR2 C3936 ( .A(plane2_2[1]), .B(N936), .Z(perm_output[340]) );
  GTECH_XOR2 C3937 ( .A(plane2_2[0]), .B(N937), .Z(perm_output[339]) );
  GTECH_XOR2 C3938 ( .A(plane2_2[31]), .B(N938), .Z(perm_output[338]) );
  GTECH_XOR2 C3939 ( .A(plane2_2[30]), .B(N939), .Z(perm_output[337]) );
  GTECH_XOR2 C3940 ( .A(plane2_2[29]), .B(N940), .Z(perm_output[336]) );
  GTECH_XOR2 C3941 ( .A(plane2_2[28]), .B(N941), .Z(perm_output[335]) );
  GTECH_XOR2 C3942 ( .A(plane2_2[27]), .B(N942), .Z(perm_output[334]) );
  GTECH_XOR2 C3943 ( .A(plane2_2[26]), .B(N943), .Z(perm_output[333]) );
  GTECH_XOR2 C3944 ( .A(plane2_2[25]), .B(N944), .Z(perm_output[332]) );
  GTECH_XOR2 C3945 ( .A(plane2_2[24]), .B(N945), .Z(perm_output[331]) );
  GTECH_XOR2 C3946 ( .A(plane2_2[23]), .B(N946), .Z(perm_output[330]) );
  GTECH_XOR2 C3947 ( .A(plane2_2[22]), .B(N947), .Z(perm_output[329]) );
  GTECH_XOR2 C3948 ( .A(plane2_2[21]), .B(N948), .Z(perm_output[328]) );
endmodule


module cyclist_ops_DATA_LEN32_1 ( clk, key_en, state_main_en, state_main_sel, 
        cyc_state_update_sel, xor_sel, cycd_sel, extract_sel, bdi_key, cu_cd, 
        dcount_in, rnd_counter, bdo_out );
  input [2:0] state_main_en;
  input [6:0] state_main_sel;
  input [1:0] cycd_sel;
  input [31:0] bdi_key;
  input [7:0] cu_cd;
  input [3:0] dcount_in;
  input [3:0] rnd_counter;
  output [31:0] bdo_out;
  input clk, key_en, cyc_state_update_sel, xor_sel, extract_sel;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71,
         N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143,
         N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176,
         N177, N178, N179, N180, plane_2_input_23, plane_2_input_22,
         plane_2_input_21, plane_2_input_20, plane_2_input_19,
         plane_2_input_18, plane_2_input_17, plane_2_input_16,
         plane_2_input_15, plane_2_input_14, plane_2_input_13,
         plane_2_input_12, plane_2_input_11, plane_2_input_10, plane_2_input_9,
         plane_2_input_8, plane_2_input_7, plane_2_input_6, plane_2_input_5,
         plane_2_input_4, plane_2_input_3, plane_2_input_2, plane_2_input_1,
         plane_2_input_0, N181, N182, N183, N184, N185, N186, N187, N188, N189,
         N190, N191, N192, N193, N194, N195, N196, N197, N198, N199, N200,
         N201, N202, N203, N204, N205, N206, N207, N208, N209, N210, N211,
         N212, N213, N214, N215, N216, N217, N218, N219, N220, N221, N222,
         N223, N224, N225, N226, N227, N228, N229, N230, N231, N232, N233,
         N234, N235, N236, N237, N238, N239, N240, N241, N242, N243, N244,
         N245, N246, N247, N248, N249, N250, N251, N252, N253, N254, N255,
         N256, N257, N258, N259, N260, N261, N262, N263, N264, N265, N266,
         N267, N268, N269, N270, N271, N272, N273, N274, N275, N276, N277,
         N278, N279, N280, N281, N282, N283, N284, N285, N286, N287, N288,
         N289, N290, N291, N292, N293, N294, N295, N296, N297, N298, N299,
         N300, N301, N302, N303, N304, N305, N306, N307, N308, N309, N310,
         N311, N312, N313, N314, N315, N316, N317, N318, N319, N320, N321,
         N322, N323, N324, N325, N326, N327, N328, N329, N330, N331, N332,
         N333, N334, N335, N336, N337, N338, N339, N340, N341, N342, N343,
         N344, N345, N346, N347, N348, N349, N350, N351, N352, N353, N354,
         N355, N356, N357, N358, N359, N360, N361, N362, N363, N364, N365,
         N366, N367, N368, N369, N370, N371, N372, N373, N374, N375, N376,
         N377, N378, N379, N380, N381, N382, N383, N384, N385, N386, N387,
         N388, N389, N390, N391, N392, N393, N394, N395, N396, N397, N398,
         N399, N400, N401, N402, N403, N404, N405, N406, N407, N408, N409,
         N410, N411, N412, N413, N414, N415, N416, N417, N418, N419, N420,
         N421, N422, N423, N424, N425, N426, N427, N428, N429, N430, N431,
         N432, N433, N434, N435, N436, N437, N438, N439, N440, N441, N442,
         N443, N444, N445, N446, N447, N448, N449, N450, N451, N452, N453,
         N454, N455, N456, N457, N458, N459, N460, N461, N462, N463, N464,
         N465, N466, N467, N468, N469, N470, N471, N472, N473, N474, N475,
         N476, N477, N478, N479, N480, N481, N482, N483, N484, N485, N486,
         N487, N488, N489, N490, N491, N492, N493, N494, N495, N496, N497,
         N498, N499, N500, N501, N502, N503, N504, N505, N506, N507, N508,
         N509, N510, N511, N512, N513, N514, N515, N516, N517, N518, N519,
         N520, N521, N522, N523, N524, N525, N526, N527, N528, N529, N530,
         N531, N532, N533, N534, N535, N536, N537, N538, N539, N540, N541,
         N542, N543, N544, N545, N546, N547, N548, N549, N550, N551, N552,
         N553, N554, N555, N556, N557, N558, N559, N560, N561, N562, N563,
         N564, N565, N566, N567, N568, N569, N570, N571, N572, N573, N574;
  wire   [127:0] plane_x;
  wire   [127:0] state_main_out_plane0;
  wire   [127:0] state_main_out_plane1;
  wire   [127:0] state_main_out_plane2;
  wire   [24:0] cycd_add;
  wire   [31:0] xor_mux_o;
  wire   [31:0] temp_ram;
  wire   [31:0] temp_xor_out;
  wire   [31:8] decrypt_mux;
  wire   [31:0] temp_cyc_state;
  wire   [127:0] cyc_state_update;
  wire   [7:0] fb_prime;
  wire   [127:32] plane_2_input;
  wire   [127:0] state_main_in_p0;
  wire   [383:0] perm_output;
  wire   [127:0] state_main_in_p1;
  wire   [127:0] state_main_in_p2;

  GTECH_OR2 C271 ( .A(cycd_sel[1]), .B(N168), .Z(N162) );
  GTECH_OR2 C274 ( .A(N167), .B(cycd_sel[0]), .Z(N164) );
  GTECH_AND2 C276 ( .A(cycd_sel[1]), .B(cycd_sel[0]), .Z(N166) );
  GTECH_AND2 C279 ( .A(N167), .B(N168), .Z(N169) );
  GTECH_AND2 C421 ( .A(N170), .B(N171), .Z(N172) );
  GTECH_OR2 C423 ( .A(dcount_in[1]), .B(N171), .Z(N173) );
  GTECH_OR2 C426 ( .A(N170), .B(dcount_in[0]), .Z(N175) );
  GTECH_AND2 C428 ( .A(dcount_in[1]), .B(dcount_in[0]), .Z(N177) );
  reg_custom_LEN128_1 state_main_p0 ( .clk(clk), .en(state_main_en[0]), .din(
        state_main_in_p0), .qout(state_main_out_plane0) );
  reg_custom_LEN128_1 state_main_p1 ( .clk(clk), .en(state_main_en[1]), .din(
        state_main_in_p1), .qout(state_main_out_plane1) );
  reg_custom_LEN128_1 state_main_p2 ( .clk(clk), .en(state_main_en[2]), .din(
        state_main_in_p2), .qout(state_main_out_plane2) );
  xoodoo_round_ADDRESS_LEN384_1 XOODOO_PERM ( .INPUT({state_main_out_plane2, 
        state_main_out_plane1, state_main_out_plane0}), .perm_output(
        perm_output), .RNDCTR(rnd_counter) );
  GTECH_NOT I_0 ( .A(extract_sel), .Z(N571) );
  GTECH_NOT I_1 ( .A(xor_sel), .Z(N572) );
  GTECH_NOT I_2 ( .A(cyc_state_update_sel), .Z(N573) );
  GTECH_NOT I_3 ( .A(state_main_sel[6]), .Z(N574) );
  SELECT_OP C1634 ( .DATA1(state_main_out_plane0), .DATA2(
        state_main_out_plane1), .CONTROL1(N0), .CONTROL2(N1), .Z({N161, N160, 
        N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, 
        N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, 
        N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, 
        N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, 
        N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, 
        N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, 
        N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, 
        N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, 
        N43, N42, N41, N40, N39, N38, N37, N36, N35, N34}) );
  GTECH_BUF B_0 ( .A(N33), .Z(N0) );
  GTECH_BUF B_1 ( .A(dcount_in[2]), .Z(N1) );
  SELECT_OP C1635 ( .DATA1({N161, N160, N159, N158, N157, N156, N155, N154, 
        N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, 
        N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, 
        N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, 
        N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, 
        N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, 
        N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, 
        N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, 
        N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, 
        N36, N35, N34}), .DATA2(state_main_out_plane2), .CONTROL1(N2), 
        .CONTROL2(N3), .Z(plane_x) );
  GTECH_BUF B_2 ( .A(N32), .Z(N2) );
  GTECH_BUF B_3 ( .A(dcount_in[3]), .Z(N3) );
  SELECT_OP C1636 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, bdi_key[31:24]}), 
        .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 
        bdi_key[23:16], bdi_key[31:24]}), .DATA3({1'b1, bdi_key[15:8], 
        bdi_key[23:16], bdi_key[31:24]}), .DATA4({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .CONTROL1(N4), 
        .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .Z(cycd_add) );
  GTECH_BUF B_4 ( .A(N163), .Z(N4) );
  GTECH_BUF B_5 ( .A(N165), .Z(N5) );
  GTECH_BUF B_6 ( .A(N166), .Z(N6) );
  GTECH_BUF B_7 ( .A(N169), .Z(N7) );
  SELECT_OP C1637 ( .DATA1({bdi_key[7:0], bdi_key[15:8], bdi_key[23:16], 
        bdi_key[31:24]}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        cycd_add}), .CONTROL1(N8), .CONTROL2(N9), .Z(xor_mux_o) );
  GTECH_BUF B_8 ( .A(N572), .Z(N8) );
  GTECH_BUF B_9 ( .A(xor_sel), .Z(N9) );
  SELECT_OP C1638 ( .DATA1(temp_ram), .DATA2(temp_xor_out), .CONTROL1(N10), 
        .CONTROL2(N11), .Z({bdo_out[7:0], bdo_out[15:8], bdo_out[23:16], 
        bdo_out[31:24]}) );
  GTECH_BUF B_10 ( .A(N571), .Z(N10) );
  GTECH_BUF B_11 ( .A(extract_sel), .Z(N11) );
  SELECT_OP C1639 ( .DATA1(plane_x[127:96]), .DATA2(plane_x[95:64]), .DATA3(
        plane_x[63:32]), .DATA4(plane_x[31:0]), .CONTROL1(N12), .CONTROL2(N13), 
        .CONTROL3(N14), .CONTROL4(N15), .Z(temp_ram) );
  GTECH_BUF B_12 ( .A(N172), .Z(N12) );
  GTECH_BUF B_13 ( .A(N174), .Z(N13) );
  GTECH_BUF B_14 ( .A(N176), .Z(N14) );
  GTECH_BUF B_15 ( .A(N177), .Z(N15) );
  SELECT_OP C1640 ( .DATA1({temp_ram[31:9], N178}), .DATA2({temp_ram[31:17], 
        N179, bdi_key[23:16]}), .DATA3({temp_ram[31:25], N180, bdi_key[15:8], 
        bdi_key[23:16]}), .DATA4({bdi_key[7:0], bdi_key[15:8], bdi_key[23:16]}), .CONTROL1(N4), .CONTROL2(N5), .CONTROL3(N6), .CONTROL4(N7), .Z(decrypt_mux)
         );
  SELECT_OP C1641 ( .DATA1(temp_xor_out), .DATA2({decrypt_mux, bdi_key[31:24]}), .CONTROL1(N16), .CONTROL2(N17), .Z(temp_cyc_state) );
  GTECH_BUF B_16 ( .A(N573), .Z(N16) );
  GTECH_BUF B_17 ( .A(cyc_state_update_sel), .Z(N17) );
  SELECT_OP C1642 ( .DATA1({temp_cyc_state, plane_x[95:0]}), .DATA2({
        plane_x[127:96], temp_cyc_state, plane_x[63:0]}), .DATA3({
        plane_x[127:64], temp_cyc_state, plane_x[31:0]}), .DATA4({
        plane_x[127:32], temp_cyc_state}), .CONTROL1(N12), .CONTROL2(N13), 
        .CONTROL3(N14), .CONTROL4(N15), .Z(cyc_state_update) );
  SELECT_OP C1643 ( .DATA1({state_main_out_plane2[127:32], 
        state_main_out_plane2[23:0]}), .DATA2({cyc_state_update[127:32], 
        cyc_state_update[23:0]}), .CONTROL1(N18), .CONTROL2(N19), .Z({
        plane_2_input, plane_2_input_23, plane_2_input_22, plane_2_input_21, 
        plane_2_input_20, plane_2_input_19, plane_2_input_18, plane_2_input_17, 
        plane_2_input_16, plane_2_input_15, plane_2_input_14, plane_2_input_13, 
        plane_2_input_12, plane_2_input_11, plane_2_input_10, plane_2_input_9, 
        plane_2_input_8, plane_2_input_7, plane_2_input_6, plane_2_input_5, 
        plane_2_input_4, plane_2_input_3, plane_2_input_2, plane_2_input_1, 
        plane_2_input_0}) );
  GTECH_BUF B_18 ( .A(N574), .Z(N18) );
  GTECH_BUF B_19 ( .A(state_main_sel[6]), .Z(N19) );
  SELECT_OP C1644 ( .DATA1(cyc_state_update), .DATA2(perm_output[127:0]), 
        .CONTROL1(N20), .CONTROL2(N21), .Z({N310, N309, N308, N307, N306, N305, 
        N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, 
        N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, 
        N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, 
        N268, N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, 
        N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, 
        N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, 
        N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, 
        N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, 
        N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, 
        N184, N183}) );
  GTECH_BUF B_20 ( .A(N182), .Z(N20) );
  GTECH_BUF B_21 ( .A(state_main_sel[0]), .Z(N21) );
  SELECT_OP C1645 ( .DATA1({N310, N309, N308, N307, N306, N305, N304, N303, 
        N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N291, 
        N290, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, 
        N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, 
        N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, 
        N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231, 
        N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, 
        N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, 
        N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N22), 
        .CONTROL2(N23), .Z(state_main_in_p0) );
  GTECH_BUF B_22 ( .A(N181), .Z(N22) );
  GTECH_BUF B_23 ( .A(state_main_sel[1]), .Z(N23) );
  SELECT_OP C1646 ( .DATA1(cyc_state_update), .DATA2(perm_output[255:128]), 
        .CONTROL1(N24), .CONTROL2(N25), .Z({N440, N439, N438, N437, N436, N435, 
        N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, 
        N422, N421, N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, 
        N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, 
        N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, 
        N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, 
        N374, N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, 
        N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, 
        N350, N349, N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, 
        N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, 
        N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, 
        N314, N313}) );
  GTECH_BUF B_24 ( .A(N312), .Z(N24) );
  GTECH_BUF B_25 ( .A(state_main_sel[2]), .Z(N25) );
  SELECT_OP C1647 ( .DATA1({N440, N439, N438, N437, N436, N435, N434, N433, 
        N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, 
        N420, N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, 
        N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398, N397, 
        N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, 
        N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, 
        N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, 
        N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, 
        N348, N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337, 
        N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, 
        N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N26), 
        .CONTROL2(N27), .Z(state_main_in_p1) );
  GTECH_BUF B_26 ( .A(N311), .Z(N26) );
  GTECH_BUF B_27 ( .A(state_main_sel[3]), .Z(N27) );
  SELECT_OP C1648 ( .DATA1({plane_2_input, fb_prime, plane_2_input_23, 
        plane_2_input_22, plane_2_input_21, plane_2_input_20, plane_2_input_19, 
        plane_2_input_18, plane_2_input_17, plane_2_input_16, plane_2_input_15, 
        plane_2_input_14, plane_2_input_13, plane_2_input_12, plane_2_input_11, 
        plane_2_input_10, plane_2_input_9, plane_2_input_8, plane_2_input_7, 
        plane_2_input_6, plane_2_input_5, plane_2_input_4, plane_2_input_3, 
        plane_2_input_2, plane_2_input_1, plane_2_input_0}), .DATA2(
        perm_output[383:256]), .CONTROL1(N28), .CONTROL2(N29), .Z({N570, N569, 
        N568, N567, N566, N565, N564, N563, N562, N561, N560, N559, N558, N557, 
        N556, N555, N554, N553, N552, N551, N550, N549, N548, N547, N546, N545, 
        N544, N543, N542, N541, N540, N539, N538, N537, N536, N535, N534, N533, 
        N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, N521, 
        N520, N519, N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, 
        N508, N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, 
        N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, 
        N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, 
        N472, N471, N470, N469, N468, N467, N466, N465, N464, N463, N462, N461, 
        N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450, N449, 
        N448, N447, N446, N445, N444, N443}) );
  GTECH_BUF B_28 ( .A(N442), .Z(N28) );
  GTECH_BUF B_29 ( .A(state_main_sel[4]), .Z(N29) );
  SELECT_OP C1649 ( .DATA1({N570, N569, N568, N567, N566, N565, N564, N563, 
        N562, N561, N560, N559, N558, N557, N556, N555, N554, N553, N552, N551, 
        N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, 
        N538, N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527, 
        N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, 
        N514, N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, 
        N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491, 
        N490, N489, N488, N487, N486, N485, N484, N483, N482, N481, N480, N479, 
        N478, N477, N476, N475, N474, N473, N472, N471, N470, N469, N468, N467, 
        N466, N465, N464, N463, N462, N461, N460, N459, N458, N457, N456, N455, 
        N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443}), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N30), 
        .CONTROL2(N31), .Z(state_main_in_p2) );
  GTECH_BUF B_30 ( .A(N441), .Z(N30) );
  GTECH_BUF B_31 ( .A(state_main_sel[5]), .Z(N31) );
  GTECH_NOT I_4 ( .A(dcount_in[3]), .Z(N32) );
  GTECH_NOT I_5 ( .A(dcount_in[2]), .Z(N33) );
  GTECH_NOT I_6 ( .A(N162), .Z(N163) );
  GTECH_NOT I_7 ( .A(N164), .Z(N165) );
  GTECH_NOT I_8 ( .A(cycd_sel[1]), .Z(N167) );
  GTECH_NOT I_9 ( .A(cycd_sel[0]), .Z(N168) );
  GTECH_XOR2 C1668 ( .A(temp_ram[31]), .B(xor_mux_o[31]), .Z(temp_xor_out[31])
         );
  GTECH_XOR2 C1669 ( .A(temp_ram[30]), .B(xor_mux_o[30]), .Z(temp_xor_out[30])
         );
  GTECH_XOR2 C1670 ( .A(temp_ram[29]), .B(xor_mux_o[29]), .Z(temp_xor_out[29])
         );
  GTECH_XOR2 C1671 ( .A(temp_ram[28]), .B(xor_mux_o[28]), .Z(temp_xor_out[28])
         );
  GTECH_XOR2 C1672 ( .A(temp_ram[27]), .B(xor_mux_o[27]), .Z(temp_xor_out[27])
         );
  GTECH_XOR2 C1673 ( .A(temp_ram[26]), .B(xor_mux_o[26]), .Z(temp_xor_out[26])
         );
  GTECH_XOR2 C1674 ( .A(temp_ram[25]), .B(xor_mux_o[25]), .Z(temp_xor_out[25])
         );
  GTECH_XOR2 C1675 ( .A(temp_ram[24]), .B(xor_mux_o[24]), .Z(temp_xor_out[24])
         );
  GTECH_XOR2 C1676 ( .A(temp_ram[23]), .B(xor_mux_o[23]), .Z(temp_xor_out[23])
         );
  GTECH_XOR2 C1677 ( .A(temp_ram[22]), .B(xor_mux_o[22]), .Z(temp_xor_out[22])
         );
  GTECH_XOR2 C1678 ( .A(temp_ram[21]), .B(xor_mux_o[21]), .Z(temp_xor_out[21])
         );
  GTECH_XOR2 C1679 ( .A(temp_ram[20]), .B(xor_mux_o[20]), .Z(temp_xor_out[20])
         );
  GTECH_XOR2 C1680 ( .A(temp_ram[19]), .B(xor_mux_o[19]), .Z(temp_xor_out[19])
         );
  GTECH_XOR2 C1681 ( .A(temp_ram[18]), .B(xor_mux_o[18]), .Z(temp_xor_out[18])
         );
  GTECH_XOR2 C1682 ( .A(temp_ram[17]), .B(xor_mux_o[17]), .Z(temp_xor_out[17])
         );
  GTECH_XOR2 C1683 ( .A(temp_ram[16]), .B(xor_mux_o[16]), .Z(temp_xor_out[16])
         );
  GTECH_XOR2 C1684 ( .A(temp_ram[15]), .B(xor_mux_o[15]), .Z(temp_xor_out[15])
         );
  GTECH_XOR2 C1685 ( .A(temp_ram[14]), .B(xor_mux_o[14]), .Z(temp_xor_out[14])
         );
  GTECH_XOR2 C1686 ( .A(temp_ram[13]), .B(xor_mux_o[13]), .Z(temp_xor_out[13])
         );
  GTECH_XOR2 C1687 ( .A(temp_ram[12]), .B(xor_mux_o[12]), .Z(temp_xor_out[12])
         );
  GTECH_XOR2 C1688 ( .A(temp_ram[11]), .B(xor_mux_o[11]), .Z(temp_xor_out[11])
         );
  GTECH_XOR2 C1689 ( .A(temp_ram[10]), .B(xor_mux_o[10]), .Z(temp_xor_out[10])
         );
  GTECH_XOR2 C1690 ( .A(temp_ram[9]), .B(xor_mux_o[9]), .Z(temp_xor_out[9]) );
  GTECH_XOR2 C1691 ( .A(temp_ram[8]), .B(xor_mux_o[8]), .Z(temp_xor_out[8]) );
  GTECH_XOR2 C1692 ( .A(temp_ram[7]), .B(xor_mux_o[7]), .Z(temp_xor_out[7]) );
  GTECH_XOR2 C1693 ( .A(temp_ram[6]), .B(xor_mux_o[6]), .Z(temp_xor_out[6]) );
  GTECH_XOR2 C1694 ( .A(temp_ram[5]), .B(xor_mux_o[5]), .Z(temp_xor_out[5]) );
  GTECH_XOR2 C1695 ( .A(temp_ram[4]), .B(xor_mux_o[4]), .Z(temp_xor_out[4]) );
  GTECH_XOR2 C1696 ( .A(temp_ram[3]), .B(xor_mux_o[3]), .Z(temp_xor_out[3]) );
  GTECH_XOR2 C1697 ( .A(temp_ram[2]), .B(xor_mux_o[2]), .Z(temp_xor_out[2]) );
  GTECH_XOR2 C1698 ( .A(temp_ram[1]), .B(xor_mux_o[1]), .Z(temp_xor_out[1]) );
  GTECH_XOR2 C1699 ( .A(temp_ram[0]), .B(xor_mux_o[0]), .Z(temp_xor_out[0]) );
  GTECH_NOT I_10 ( .A(dcount_in[1]), .Z(N170) );
  GTECH_NOT I_11 ( .A(dcount_in[0]), .Z(N171) );
  GTECH_NOT I_12 ( .A(N173), .Z(N174) );
  GTECH_NOT I_13 ( .A(N175), .Z(N176) );
  GTECH_NOT I_14 ( .A(temp_ram[8]), .Z(N178) );
  GTECH_NOT I_15 ( .A(temp_ram[16]), .Z(N179) );
  GTECH_NOT I_16 ( .A(temp_ram[24]), .Z(N180) );
  GTECH_XOR2 C1719 ( .A(state_main_out_plane2[31]), .B(cu_cd[7]), .Z(
        fb_prime[7]) );
  GTECH_XOR2 C1720 ( .A(state_main_out_plane2[30]), .B(cu_cd[6]), .Z(
        fb_prime[6]) );
  GTECH_XOR2 C1721 ( .A(state_main_out_plane2[29]), .B(cu_cd[5]), .Z(
        fb_prime[5]) );
  GTECH_XOR2 C1722 ( .A(state_main_out_plane2[28]), .B(cu_cd[4]), .Z(
        fb_prime[4]) );
  GTECH_XOR2 C1723 ( .A(state_main_out_plane2[27]), .B(cu_cd[3]), .Z(
        fb_prime[3]) );
  GTECH_XOR2 C1724 ( .A(state_main_out_plane2[26]), .B(cu_cd[2]), .Z(
        fb_prime[2]) );
  GTECH_XOR2 C1725 ( .A(state_main_out_plane2[25]), .B(cu_cd[1]), .Z(
        fb_prime[1]) );
  GTECH_XOR2 C1726 ( .A(state_main_out_plane2[24]), .B(cu_cd[0]), .Z(
        fb_prime[0]) );
  GTECH_NOT I_17 ( .A(state_main_sel[1]), .Z(N181) );
  GTECH_NOT I_18 ( .A(state_main_sel[0]), .Z(N182) );
  GTECH_NOT I_19 ( .A(state_main_sel[3]), .Z(N311) );
  GTECH_NOT I_20 ( .A(state_main_sel[2]), .Z(N312) );
  GTECH_NOT I_21 ( .A(state_main_sel[5]), .Z(N441) );
  GTECH_NOT I_22 ( .A(state_main_sel[4]), .Z(N442) );
endmodule


module CryptoCore_2 ( clk, rst, key, key_valid, key_ready, bdi, bdi_valid, 
        bdi_ready, bdi_pad_loc, bdi_valid_bytes, bdi_size, bdi_eot, bdi_eoi, 
        bdi_type, decrypt_in, key_update, hash_in, bdo, bdo_valid, bdo_ready, 
        bdo_type, bdo_valid_bytes, end_of_block, msg_auth_valid, 
        msg_auth_ready, msg_auth );
  input [31:0] key;
  input [31:0] bdi;
  input [3:0] bdi_pad_loc;
  input [3:0] bdi_valid_bytes;
  input [2:0] bdi_size;
  input [3:0] bdi_type;
  output [31:0] bdo;
  output [3:0] bdo_type;
  output [3:0] bdo_valid_bytes;
  input clk, rst, key_valid, bdi_valid, bdi_eot, bdi_eoi, decrypt_in,
         key_update, hash_in, bdo_ready, msg_auth_ready;
  output key_ready, bdi_ready, bdo_valid, end_of_block, msg_auth_valid,
         msg_auth;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71,
         N72, N73, N74, N75, bdo_type_0, load_rnd, en_rnd, load_dcount,
         en_dcount, key_en, state_main_sel_2, state_main_sel_0,
         cyc_state_update_sel, xor_sel, extract_sel, cu_cd_s_1, cu_cd_s_0,
         n_decrypt_op_s, decrypt_op_s, n_tag_verified, n_gtr_one_perm,
         gtr_one_perm, n_bdi_eot_prev, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109,
         N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142,
         N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153,
         N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164,
         N165, N166, N167, N168, N169, N170, N171, N172, N173, N174, N175,
         N176, N177, N178, N179, N180, N181, N182, N183, N184, N185, N186,
         N187, N188, N189, N190, N191, N192, N193, N194, N195, N196, N197,
         N198, N199, N200, N201, N202, N203, N204, N205, N206, N207, N208,
         N209, N210, N211, N212, N213, N214, N215, N216, N217, N218, N219,
         N220, N221, N222, N223, N224, N225, N226, N227, N228, N229, N230,
         N231, N232, N233, N234, N235, N236, N237, N238, N239, N240, N241,
         N242, N243, N244, N245, N246, N247, N248, N249, N250, N251, N252,
         N253, N254, N255, N256, N257, N258, N259, N260, N261, N262, N263,
         N264, N265, N266, N267, N268, N269, N270, N271, N272, N273, N274,
         N275, N276, N277, N278, N279, N280, N281, N282, N283, N284, N285,
         N286, N287, N288, N289, N290, N291, N292, N293, N294, N295, N296,
         N297, N298, N299, N300, N301, N302, N303, N304, N305, N306, N307,
         N308, N309, N310, N311, N312, N313, N314, N315, N316, N317,
         bdi_eot_prev, N318, N319, N320, N321, N322, N323, N324, N325, N326,
         N327, N328, N329, N330, N331, N332, N333, N334, N335, N336, N337,
         N338, N339, N340, N341, N342, N343, N344, N345, N346, N347, N348,
         N349, N350, N351, N352, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N368, N369, N370,
         N371, N372, N373, N374, N375, N376, N377, N378, N379, N380, N381,
         N382, N383, N384, N385, N386, N387, N388, N389, N390, N391, N392,
         N393, N394, N395, N396, N397, N398, N399, N400, N401, N402, N403,
         N404, N405, N406, N407, N408, N409, N410, N411, N412, N413, N414,
         N415, N416, N417, N418, N419, N420, N421, N422, N423, N424, N425,
         N426, N427, N428, N429, N430, N431, N432, N433, N434, N435, N436,
         N437, N438, N439, N440, N441, N442, N443, N444, N445, N446, N447,
         N448, N449, N450, N451, N452, N453, N454, N455, N456, N457, N458,
         N459, N460, N461, N462, N463, N464, N465, N466, N467, N468, N469,
         N470, N471, N472, N473, N474, N475, N476, N477, N478, N479, N480,
         N481, N482, N483, N484, N485, N486, N487, N488, N489, N490, N491,
         N492, N493, N494, N495, N496, N497, N498, N499, N500, N501, N502,
         N503, N504, N505, N506, N507, N508, N509, N510, N511, N512, N513,
         N514, N515, N516, N517, N518, N519, N520, N521, N522, N523, N524,
         N525, N526, N527, N528, N529, N530, N531, N532, N533, N534, N535,
         N536, N537, N538, N539, N540, N541, N542, N543, N544, N545, N546,
         N547, tag_verified, N548, N549, N550, N551, N552, N553, N554, N555,
         N556, N557, N558, N559, N560, N561, N562, N563, N564, N565, N566,
         N567, N568, N569, N570, N571, N572, N573, N574, N575, N576, N577,
         N578, N579, N580, N581, N582, N583, N584, N585, N586, N587, N588,
         N589, N590, N591, N592, N593, N594, N595, N596, N597, N598, N599,
         N600, N601, N602, N603, N604, N605, N606, N607, N608, N609, N610,
         N611, N612, N613, N614, N615, N616, N617, N618, N619, N620, N621,
         N622, N623, N624, N625, N626, N627, N628, N629, N630, N631, N632,
         N633, N634, N635, N636, N637, N638, N639, N640, N641, N642, N643,
         N644, N645, N646, N647, N648, N649, N650, N651, N652, N653, N654,
         N655, N656, N657, N658, N659, N660, N661, N662, N663, N664, N665,
         N666, N667, N668, N669, N670, N671, N672, N673, N674, N675, N676,
         N677, N678, N679, N680, N681, N682, N683, N684, N685, N686, N687,
         N688, N689, N690, N691, N692, N693, N694, N695, N696, N697, N698,
         N699, N700, N701, N702, N703, N704, N705, N706, N707, N708, N709,
         N710, N711, N712, N713, N714, N715, N716, N717, N718, N719, N720,
         N721, N722, N723, N724, N725, N726, N727, N728, N729, N730, N731,
         N732, N733, N734, N735, N736, N737, N738, N739, N740, N741, N742,
         N743, N744, N745, N746, N747, N748, N749, N750, N751, N752, N753,
         N754, N755, N756, N757, N758, N759, N760, N761, N762, N763, N764,
         N765, N766, N767, N768, N769, N770, N771, N772, N773, N774, N775,
         N776, N777, N778, N779, N780, N781, N782, N783, N784, N785, N786,
         N787, N788, N789, N790, N791, N792, N793, N794, N795, N796, N797,
         N798, N799, N800, N801, N802, N803, N804, N805, N806, N807, N808;
  wire   [3:0] rnd_counter;
  wire   [3:0] dcount;
  wire   [2:0] state_main_en;
  wire   [6:4] state_main_sel;
  wire   [1:0] cycd_sel;
  wire   [31:0] bdi_key;
  wire   [7:6] cu_cd_s;
  wire   [2:0] cyc_s;
  wire   [2:0] n_calling_state;
  wire   [2:0] calling_state;
  wire   [2:0] n_cyc_s;
  wire   [1:0] mode;
  assign bdo_type[1] = 1'b0;
  assign bdo_type[0] = bdo_type_0;

  counter_num_bits4_1 round_counter ( .clk(clk), .reset(load_rnd), .enable(
        en_rnd), .q(rnd_counter) );
  counter_num_bits4_1 E_dcount ( .clk(clk), .reset(load_dcount), .enable(
        en_dcount), .q(dcount) );
  cyclist_ops_DATA_LEN32_1 cyc_ops ( .clk(clk), .key_en(key_en), 
        .state_main_en(state_main_en), .state_main_sel({state_main_sel, 
        state_main_sel[5], state_main_sel_2, state_main_sel[5], 
        state_main_sel_0}), .cyc_state_update_sel(cyc_state_update_sel), 
        .xor_sel(xor_sel), .cycd_sel(cycd_sel), .extract_sel(extract_sel), 
        .bdi_key(bdi_key), .cu_cd({cu_cd_s, 1'b0, 1'b0, 1'b0, 1'b0, cu_cd_s_1, 
        cu_cd_s_0}), .dcount_in(dcount), .rnd_counter(rnd_counter), .bdo_out(
        bdo) );
  GTECH_AND2 C30 ( .A(N76), .B(N754), .Z(N77) );
  GTECH_AND2 C31 ( .A(N77), .B(N755), .Z(N78) );
  GTECH_OR2 C33 ( .A(cyc_s[2]), .B(cyc_s[1]), .Z(N79) );
  GTECH_OR2 C34 ( .A(N79), .B(N755), .Z(N80) );
  GTECH_OR2 C37 ( .A(cyc_s[2]), .B(N754), .Z(N82) );
  GTECH_OR2 C38 ( .A(N82), .B(cyc_s[0]), .Z(N83) );
  GTECH_OR2 C42 ( .A(cyc_s[2]), .B(N754), .Z(N85) );
  GTECH_OR2 C43 ( .A(N85), .B(N755), .Z(N86) );
  GTECH_OR2 C46 ( .A(N76), .B(cyc_s[1]), .Z(N88) );
  GTECH_OR2 C47 ( .A(N88), .B(cyc_s[0]), .Z(N89) );
  GTECH_OR2 C51 ( .A(N76), .B(cyc_s[1]), .Z(N91) );
  GTECH_OR2 C52 ( .A(N91), .B(N755), .Z(N92) );
  GT_TC_OP gt_294 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1, 1'b1}), .Z(N196) );
  GT_TC_OP gt_297 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1}), .Z(N198) );
  GT_TC_OP gt_309 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1, 1'b1}), .Z(N216) );
  GT_TC_OP gt_312 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1}), .Z(N218) );
  GT_TC_OP gt_341 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1}), .Z(N256) );
  GT_TC_OP gt_355 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1}), .Z(N263) );
  GT_TC_OP gt_382 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1, 1'b1}), .Z(N323) );
  GT_TC_OP gt_385 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1}), .Z(N325) );
  LT_TC_OP lt_398 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b0, 1'b1, 1'b1}), .Z(N329) );
  GT_TC_OP gt_421 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1}), .Z(N360) );
  LT_TC_OP lt_426 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1, 1'b0}), .Z(N363) );
  GT_TC_OP gt_441 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1}), .Z(N369) );
  GT_TC_OP gt_447 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, dcount}), .B({1'b0, 1'b1, 
        1'b1}), .Z(N371) );
  NE_UNS_OP ne_542 ( .A(bdi), .B(bdo), .Z(N546) );
  NE_UNS_OP ne_552 ( .A(bdi), .B(bdo), .Z(N549) );
  \**SEQGEN**  bdi_eot_prev_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        N584), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        bdi_eot_prev), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \cyc_s_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N576), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cyc_s[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N594) );
  \**SEQGEN**  \cyc_s_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N575), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cyc_s[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N594) );
  \**SEQGEN**  \cyc_s_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N574), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(cyc_s[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N594) );
  \**SEQGEN**  \mode_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mode[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N603) );
  \**SEQGEN**  \mode_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N577), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mode[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N603) );
  \**SEQGEN**  tag_verified_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        N578), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        tag_verified), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \calling_state_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N581), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(calling_state[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N611) );
  \**SEQGEN**  \calling_state_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N580), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(calling_state[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N611) );
  \**SEQGEN**  \calling_state_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N579), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(calling_state[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N611) );
  \**SEQGEN**  gtr_one_perm_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        N582), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        gtr_one_perm), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N615) );
  \**SEQGEN**  decrypt_op_s_reg ( .clear(1'b0), .preset(1'b0), .next_state(
        N583), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        decrypt_op_s), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(N621) );
  GTECH_NOT I_0 ( .A(bdi_type[0]), .Z(N622) );
  GTECH_OR2 C1222 ( .A(N622), .B(N638), .Z(N623) );
  GTECH_NOT I_1 ( .A(N623), .Z(N624) );
  GTECH_NOT I_2 ( .A(dcount[1]), .Z(N625) );
  GTECH_NOT I_3 ( .A(dcount[0]), .Z(N626) );
  GTECH_OR2 C1254 ( .A(dcount[2]), .B(dcount[3]), .Z(N627) );
  GTECH_OR2 C1255 ( .A(N625), .B(N627), .Z(N628) );
  GTECH_OR2 C1256 ( .A(N626), .B(N628), .Z(N629) );
  GTECH_NOT I_4 ( .A(N629), .Z(N630) );
  GTECH_NOT I_5 ( .A(dcount[2]), .Z(N631) );
  GTECH_OR2 C1287 ( .A(N631), .B(dcount[3]), .Z(N632) );
  GTECH_OR2 C1288 ( .A(dcount[1]), .B(N632), .Z(N633) );
  GTECH_OR2 C1289 ( .A(dcount[0]), .B(N633), .Z(N634) );
  GTECH_NOT I_6 ( .A(N634), .Z(N635) );
  GTECH_NOT I_7 ( .A(bdi_type[2]), .Z(N636) );
  GTECH_OR2 C1292 ( .A(N636), .B(bdi_type[3]), .Z(N637) );
  GTECH_OR2 C1293 ( .A(bdi_type[1]), .B(N637), .Z(N638) );
  GTECH_OR2 C1294 ( .A(bdi_type[0]), .B(N638), .Z(N639) );
  GTECH_NOT I_8 ( .A(N639), .Z(N640) );
  GTECH_OR2 C1326 ( .A(dcount[2]), .B(dcount[3]), .Z(N641) );
  GTECH_OR2 C1327 ( .A(N625), .B(N641), .Z(N642) );
  GTECH_OR2 C1328 ( .A(N626), .B(N642), .Z(N643) );
  GTECH_NOT I_9 ( .A(N643), .Z(N644) );
  GTECH_NOT I_10 ( .A(calling_state[2]), .Z(N645) );
  GTECH_NOT I_11 ( .A(calling_state[1]), .Z(N646) );
  GTECH_OR2 C1332 ( .A(N646), .B(N645), .Z(N647) );
  GTECH_OR2 C1333 ( .A(calling_state[0]), .B(N647), .Z(N648) );
  GTECH_NOT I_12 ( .A(N648), .Z(N649) );
  GTECH_NOT I_13 ( .A(mode[0]), .Z(N650) );
  GTECH_OR2 C1336 ( .A(N650), .B(mode[1]), .Z(N651) );
  GTECH_NOT I_14 ( .A(N651), .Z(N652) );
  GTECH_OR2 C1339 ( .A(calling_state[1]), .B(N645), .Z(N653) );
  GTECH_OR2 C1340 ( .A(calling_state[0]), .B(N653), .Z(N654) );
  GTECH_AND2 C1343 ( .A(bdi_valid_bytes[2]), .B(bdi_valid_bytes[3]), .Z(N655)
         );
  GTECH_AND2 C1344 ( .A(bdi_valid_bytes[1]), .B(N655), .Z(N656) );
  GTECH_AND2 C1345 ( .A(bdi_valid_bytes[0]), .B(N656), .Z(N657) );
  GTECH_NOT I_15 ( .A(bdi_size[2]), .Z(N658) );
  GTECH_OR2 C1347 ( .A(bdi_size[1]), .B(N658), .Z(N659) );
  GTECH_OR2 C1348 ( .A(bdi_size[0]), .B(N659), .Z(N660) );
  GTECH_NOT I_16 ( .A(N660), .Z(N661) );
  GTECH_OR2 C1380 ( .A(dcount[2]), .B(dcount[3]), .Z(N662) );
  GTECH_OR2 C1381 ( .A(N625), .B(N662), .Z(N663) );
  GTECH_OR2 C1382 ( .A(N626), .B(N663), .Z(N664) );
  GTECH_NOT I_17 ( .A(N664), .Z(N665) );
  GTECH_NOT I_18 ( .A(dcount[3]), .Z(N666) );
  GTECH_OR2 C1415 ( .A(dcount[2]), .B(N666), .Z(N667) );
  GTECH_OR2 C1416 ( .A(N625), .B(N667), .Z(N668) );
  GTECH_OR2 C1417 ( .A(N626), .B(N668), .Z(N669) );
  GTECH_NOT I_19 ( .A(N669), .Z(N670) );
  GTECH_OR2 C1456 ( .A(N631), .B(dcount[3]), .Z(N671) );
  GTECH_OR2 C1457 ( .A(dcount[1]), .B(N671), .Z(N672) );
  GTECH_OR2 C1458 ( .A(N626), .B(N672), .Z(N673) );
  GTECH_NOT I_20 ( .A(N673), .Z(N674) );
  GTECH_OR2 C1497 ( .A(dcount[2]), .B(dcount[3]), .Z(N675) );
  GTECH_OR2 C1498 ( .A(N625), .B(N675), .Z(N676) );
  GTECH_OR2 C1499 ( .A(N626), .B(N676), .Z(N677) );
  GTECH_NOT I_21 ( .A(N677), .Z(N678) );
  GTECH_OR2 C1531 ( .A(dcount[2]), .B(dcount[3]), .Z(N679) );
  GTECH_OR2 C1532 ( .A(N625), .B(N679), .Z(N680) );
  GTECH_OR2 C1533 ( .A(N626), .B(N680), .Z(N681) );
  GTECH_NOT I_22 ( .A(N681), .Z(N682) );
  GTECH_NOT I_23 ( .A(calling_state[0]), .Z(N683) );
  GTECH_OR2 C1537 ( .A(N646), .B(calling_state[2]), .Z(N684) );
  GTECH_OR2 C1538 ( .A(N683), .B(N684), .Z(N685) );
  GTECH_NOT I_24 ( .A(N685), .Z(N686) );
  GTECH_OR2 C1541 ( .A(calling_state[1]), .B(N645), .Z(N687) );
  GTECH_OR2 C1542 ( .A(calling_state[0]), .B(N687), .Z(N688) );
  GTECH_NOT I_25 ( .A(N688), .Z(N689) );
  GTECH_OR2 C1573 ( .A(N631), .B(dcount[3]), .Z(N690) );
  GTECH_OR2 C1574 ( .A(dcount[1]), .B(N690), .Z(N691) );
  GTECH_OR2 C1575 ( .A(dcount[0]), .B(N691), .Z(N692) );
  GTECH_OR2 C1613 ( .A(dcount[2]), .B(dcount[3]), .Z(N693) );
  GTECH_OR2 C1614 ( .A(N625), .B(N693), .Z(N694) );
  GTECH_OR2 C1615 ( .A(N626), .B(N694), .Z(N695) );
  GTECH_NOT I_26 ( .A(N695), .Z(N696) );
  GTECH_OR2 C1619 ( .A(calling_state[1]), .B(N645), .Z(N697) );
  GTECH_OR2 C1620 ( .A(N683), .B(N697), .Z(N698) );
  GTECH_NOT I_27 ( .A(N698), .Z(N699) );
  GTECH_NOT I_28 ( .A(rnd_counter[3]), .Z(N700) );
  GTECH_NOT I_29 ( .A(rnd_counter[1]), .Z(N701) );
  GTECH_NOT I_30 ( .A(rnd_counter[0]), .Z(N702) );
  GTECH_OR2 C1625 ( .A(rnd_counter[2]), .B(N700), .Z(N703) );
  GTECH_OR2 C1626 ( .A(N701), .B(N703), .Z(N704) );
  GTECH_OR2 C1627 ( .A(N702), .B(N704), .Z(N705) );
  GTECH_NOT I_31 ( .A(N705), .Z(N706) );
  GTECH_OR2 C1629 ( .A(bdi_size[0]), .B(bdi_size[1]), .Z(N707) );
  GTECH_NOT I_32 ( .A(decrypt_op_s), .Z(N708) );
  GTECH_OR2 C1688 ( .A(dcount[2]), .B(N666), .Z(N709) );
  GTECH_OR2 C1689 ( .A(N625), .B(N709), .Z(N710) );
  GTECH_OR2 C1690 ( .A(dcount[0]), .B(N710), .Z(N711) );
  GTECH_NOT I_33 ( .A(N711), .Z(N712) );
  GTECH_OR2 C1693 ( .A(calling_state[1]), .B(calling_state[2]), .Z(N713) );
  GTECH_OR2 C1694 ( .A(N683), .B(N713), .Z(N714) );
  GTECH_NOT I_34 ( .A(N714), .Z(N715) );
  GTECH_OR2 C1698 ( .A(calling_state[1]), .B(N645), .Z(N716) );
  GTECH_OR2 C1699 ( .A(N683), .B(N716), .Z(N717) );
  GTECH_NOT I_35 ( .A(N717), .Z(N718) );
  GTECH_OR2 C1721 ( .A(bdi_type[2]), .B(bdi_type[3]), .Z(N719) );
  GTECH_OR2 C1722 ( .A(bdi_type[1]), .B(N719), .Z(N720) );
  GTECH_OR2 C1723 ( .A(N622), .B(N720), .Z(N721) );
  GTECH_NOT I_36 ( .A(N721), .Z(N722) );
  GTECH_OR2 C1727 ( .A(bdi_type[0]), .B(N720), .Z(N723) );
  GTECH_NOT I_37 ( .A(N723), .Z(N724) );
  GTECH_NOT I_38 ( .A(bdi_type[1]), .Z(N725) );
  GTECH_OR2 C1733 ( .A(N725), .B(N637), .Z(N726) );
  GTECH_OR2 C1734 ( .A(N622), .B(N726), .Z(N727) );
  GTECH_NOT I_39 ( .A(N727), .Z(N728) );
  GTECH_OR2 C1737 ( .A(N646), .B(calling_state[2]), .Z(N729) );
  GTECH_OR2 C1738 ( .A(calling_state[0]), .B(N729), .Z(N730) );
  GTECH_NOT I_40 ( .A(N730), .Z(N731) );
  GTECH_OR2 C1741 ( .A(calling_state[1]), .B(calling_state[2]), .Z(N732) );
  GTECH_OR2 C1742 ( .A(N683), .B(N732), .Z(N733) );
  GTECH_NOT I_41 ( .A(N733), .Z(N734) );
  GTECH_OR2 C1746 ( .A(calling_state[1]), .B(N645), .Z(N735) );
  GTECH_OR2 C1747 ( .A(N683), .B(N735), .Z(N736) );
  GTECH_NOT I_42 ( .A(N736), .Z(N737) );
  GTECH_OR2 C1750 ( .A(calling_state[1]), .B(calling_state[2]), .Z(N738) );
  GTECH_OR2 C1751 ( .A(N683), .B(N738), .Z(N739) );
  GTECH_NOT I_43 ( .A(N739), .Z(N740) );
  GTECH_OR2 C1753 ( .A(calling_state[1]), .B(calling_state[2]), .Z(N741) );
  GTECH_OR2 C1754 ( .A(calling_state[0]), .B(N741), .Z(N742) );
  GTECH_NOT I_44 ( .A(N742), .Z(N743) );
  GTECH_OR2 C1756 ( .A(bdi_valid_bytes[2]), .B(bdi_valid_bytes[3]), .Z(N744)
         );
  GTECH_OR2 C1757 ( .A(bdi_valid_bytes[1]), .B(N744), .Z(N745) );
  GTECH_OR2 C1758 ( .A(bdi_valid_bytes[0]), .B(N745), .Z(N746) );
  GTECH_NOT I_45 ( .A(N746), .Z(N747) );
  GTECH_OR2 C1760 ( .A(calling_state[1]), .B(calling_state[2]), .Z(N748) );
  GTECH_OR2 C1761 ( .A(calling_state[0]), .B(N748), .Z(N749) );
  GTECH_NOT I_46 ( .A(N749), .Z(N750) );
  GTECH_NOT I_47 ( .A(bdi_eot_prev), .Z(N751) );
  GTECH_NOT I_48 ( .A(bdi_eot), .Z(N752) );
  GTECH_NOT I_49 ( .A(gtr_one_perm), .Z(N753) );
  GTECH_NOT I_50 ( .A(cyc_s[1]), .Z(N754) );
  GTECH_NOT I_51 ( .A(cyc_s[0]), .Z(N755) );
  GTECH_OR2 C1784 ( .A(N754), .B(cyc_s[2]), .Z(N756) );
  GTECH_OR2 C1785 ( .A(N755), .B(N756), .Z(N757) );
  GTECH_NOT I_52 ( .A(N757), .Z(N758) );
  GTECH_OR2 C1801 ( .A(1'b0), .B(1'b0), .Z(N759) );
  GTECH_OR2 C1802 ( .A(1'b0), .B(N759), .Z(N760) );
  GTECH_OR2 C1803 ( .A(1'b0), .B(N760), .Z(N761) );
  GTECH_OR2 C1804 ( .A(1'b0), .B(N761), .Z(N762) );
  GTECH_OR2 C1805 ( .A(1'b0), .B(N762), .Z(N763) );
  GTECH_OR2 C1806 ( .A(1'b0), .B(N763), .Z(N764) );
  GTECH_OR2 C1807 ( .A(1'b0), .B(N764), .Z(N765) );
  GTECH_OR2 C1808 ( .A(1'b0), .B(N765), .Z(N766) );
  GTECH_OR2 C1809 ( .A(1'b0), .B(N766), .Z(N767) );
  GTECH_OR2 C1810 ( .A(1'b0), .B(N767), .Z(N768) );
  GTECH_OR2 C1811 ( .A(1'b0), .B(N768), .Z(N769) );
  GTECH_OR2 C1812 ( .A(1'b0), .B(N769), .Z(N770) );
  GTECH_OR2 C1813 ( .A(1'b0), .B(N770), .Z(N771) );
  GTECH_OR2 C1814 ( .A(1'b0), .B(N771), .Z(N772) );
  GTECH_OR2 C1815 ( .A(1'b0), .B(N772), .Z(N773) );
  GTECH_OR2 C1816 ( .A(1'b0), .B(N773), .Z(N774) );
  GTECH_OR2 C1817 ( .A(1'b0), .B(N774), .Z(N775) );
  GTECH_OR2 C1818 ( .A(1'b0), .B(N775), .Z(N776) );
  GTECH_OR2 C1819 ( .A(1'b0), .B(N776), .Z(N777) );
  GTECH_OR2 C1820 ( .A(1'b0), .B(N777), .Z(N778) );
  GTECH_OR2 C1821 ( .A(1'b0), .B(N778), .Z(N779) );
  GTECH_OR2 C1822 ( .A(1'b0), .B(N779), .Z(N780) );
  GTECH_OR2 C1823 ( .A(1'b0), .B(N780), .Z(N781) );
  GTECH_OR2 C1824 ( .A(1'b0), .B(N781), .Z(N782) );
  GTECH_OR2 C1825 ( .A(1'b0), .B(N782), .Z(N783) );
  GTECH_OR2 C1826 ( .A(1'b0), .B(N783), .Z(N784) );
  GTECH_OR2 C1827 ( .A(1'b0), .B(N784), .Z(N785) );
  GTECH_OR2 C1828 ( .A(dcount[3]), .B(N785), .Z(N786) );
  GTECH_OR2 C1829 ( .A(N631), .B(N786), .Z(N787) );
  GTECH_OR2 C1830 ( .A(N625), .B(N787), .Z(N788) );
  GTECH_OR2 C1831 ( .A(dcount[0]), .B(N788), .Z(N789) );
  GTECH_NOT I_53 ( .A(N789), .Z(N790) );
  GTECH_OR2 C1861 ( .A(dcount[3]), .B(N785), .Z(N791) );
  GTECH_OR2 C1862 ( .A(N631), .B(N791), .Z(N792) );
  GTECH_OR2 C1863 ( .A(dcount[1]), .B(N792), .Z(N793) );
  GTECH_OR2 C1864 ( .A(dcount[0]), .B(N793), .Z(N794) );
  GTECH_OR2 C1895 ( .A(dcount[3]), .B(N785), .Z(N795) );
  GTECH_OR2 C1896 ( .A(N631), .B(N795), .Z(N796) );
  GTECH_OR2 C1897 ( .A(dcount[1]), .B(N796), .Z(N797) );
  GTECH_OR2 C1898 ( .A(dcount[0]), .B(N797), .Z(N798) );
  GTECH_OR2 C1902 ( .A(calling_state[1]), .B(N645), .Z(N799) );
  GTECH_OR2 C1903 ( .A(calling_state[0]), .B(N799), .Z(N800) );
  GTECH_NOT I_54 ( .A(N800), .Z(N801) );
  SELECT_OP C1906 ( .DATA1(1'b1), .DATA2(N624), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(extract_sel) );
  GTECH_BUF B_0 ( .A(N640), .Z(N0) );
  GTECH_BUF B_1 ( .A(N639), .Z(N1) );
  SELECT_OP C1907 ( .DATA1({1'b0, 1'b1, 1'b0}), .DATA2({N623, N624, N624}), 
        .CONTROL1(N0), .CONTROL2(N1), .Z({bdo_type[3:2], bdo_type_0}) );
  SELECT_OP C1908 ( .DATA1({1'b1, 1'b0}), .DATA2({N97, key_update}), 
        .CONTROL1(N2), .CONTROL2(N3), .Z({N99, N98}) );
  GTECH_BUF B_2 ( .A(hash_in), .Z(N2) );
  GTECH_BUF B_3 ( .A(N96), .Z(N3) );
  SELECT_OP C1909 ( .DATA1(1'b1), .DATA2(key_update), .CONTROL1(N2), 
        .CONTROL2(N3), .Z(N100) );
  SELECT_OP C1910 ( .DATA1(N100), .DATA2(1'b1), .CONTROL1(N4), .CONTROL2(N95), 
        .Z(N101) );
  GTECH_BUF B_4 ( .A(N94), .Z(N4) );
  SELECT_OP C1911 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(bdi), .CONTROL1(N5), .CONTROL2(N6), .Z({N134, N133, N132, N131, N130, 
        N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, 
        N105, N104, N103}) );
  GTECH_BUF B_5 ( .A(N635), .Z(N5) );
  GTECH_BUF B_6 ( .A(N634), .Z(N6) );
  SELECT_OP C1912 ( .DATA1({1'b1, 1'b0, 1'b0}), .DATA2(cyc_s), .CONTROL1(N5), 
        .CONTROL2(N6), .Z({N137, N136, N135}) );
  SELECT_OP C1913 ( .DATA1({1'b1, 1'b1, 1'b0}), .DATA2(calling_state), 
        .CONTROL1(N5), .CONTROL2(N6), .Z({N140, N139, N138}) );
  SELECT_OP C1914 ( .DATA1(key), .DATA2({N134, N133, N132, N131, N130, N129, 
        N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, 
        N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, 
        N104, N103}), .CONTROL1(N7), .CONTROL2(N8), .Z({N172, N171, N170, N169, 
        N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, 
        N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, 
        N144, N143, N142, N141}) );
  GTECH_BUF B_7 ( .A(key_valid), .Z(N7) );
  GTECH_BUF B_8 ( .A(N102), .Z(N8) );
  SELECT_OP C1915 ( .DATA1(1'b0), .DATA2(N635), .CONTROL1(N7), .CONTROL2(N8), 
        .Z(N173) );
  SELECT_OP C1916 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2(cyc_s), .CONTROL1(N9), 
        .CONTROL2(N10), .Z({N178, N177, N176}) );
  GTECH_BUF B_9 ( .A(N644), .Z(N9) );
  GTECH_BUF B_10 ( .A(N643), .Z(N10) );
  SELECT_OP C1917 ( .DATA1({N178, N177, N176}), .DATA2(cyc_s), .CONTROL1(N11), 
        .CONTROL2(N12), .Z({N181, N180, N179}) );
  GTECH_BUF B_11 ( .A(bdi_valid), .Z(N11) );
  GTECH_BUF B_12 ( .A(N175), .Z(N12) );
  GTECH_NOT I_55 ( .A(N198), .Z(N199) );
  SELECT_OP C1919 ( .DATA1({1'b0, 1'b0}), .DATA2({N198, N199}), .CONTROL1(N13), 
        .CONTROL2(N197), .Z({N201, N200}) );
  GTECH_BUF B_13 ( .A(N196), .Z(N13) );
  SELECT_OP C1920 ( .DATA1({N201, N200}), .DATA2({1'b0, 1'b0}), .CONTROL1(N14), 
        .CONTROL2(N194), .Z({N203, N202}) );
  GTECH_BUF B_14 ( .A(N657), .Z(N14) );
  SELECT_OP C1921 ( .DATA1(N196), .DATA2(1'b0), .CONTROL1(N14), .CONTROL2(N194), .Z(N204) );
  SELECT_OP C1922 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2(cyc_s), .CONTROL1(N15), 
        .CONTROL2(N209), .Z({N212, N211, N210}) );
  GTECH_BUF B_15 ( .A(N208), .Z(N15) );
  SELECT_OP C1923 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2({N212, N211, N210}), 
        .CONTROL1(N16), .CONTROL2(N207), .Z({N215, N214, N213}) );
  GTECH_BUF B_16 ( .A(N206), .Z(N16) );
  GTECH_NOT I_56 ( .A(N218), .Z(N219) );
  SELECT_OP C1925 ( .DATA1({1'b0, 1'b0}), .DATA2({N218, N219}), .CONTROL1(N17), 
        .CONTROL2(N217), .Z({N221, N220}) );
  GTECH_BUF B_17 ( .A(N216), .Z(N17) );
  SELECT_OP C1926 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2({N215, N214, N213}), 
        .CONTROL1(N18), .CONTROL2(N19), .Z({N224, N223, N222}) );
  GTECH_BUF B_18 ( .A(bdi_eot), .Z(N18) );
  GTECH_BUF B_19 ( .A(N752), .Z(N19) );
  SELECT_OP C1927 ( .DATA1(N204), .DATA2(N216), .CONTROL1(N18), .CONTROL2(N19), 
        .Z(N225) );
  SELECT_OP C1928 ( .DATA1(N657), .DATA2(1'b1), .CONTROL1(N18), .CONTROL2(N19), 
        .Z(N226) );
  SELECT_OP C1929 ( .DATA1({N203, N202}), .DATA2({N221, N220}), .CONTROL1(N18), 
        .CONTROL2(N19), .Z({N228, N227}) );
  SELECT_OP C1930 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2(cyc_s), .CONTROL1(N20), 
        .CONTROL2(N230), .Z({N233, N232, N231}) );
  GTECH_BUF B_20 ( .A(N229), .Z(N20) );
  SELECT_OP C1931 ( .DATA1({N228, N227}), .DATA2({1'b0, 1'b0}), .CONTROL1(N11), 
        .CONTROL2(N12), .Z({N235, N234}) );
  SELECT_OP C1932 ( .DATA1({N224, N223, N222}), .DATA2({N233, N232, N231}), 
        .CONTROL1(N11), .CONTROL2(N12), .Z({N238, N237, N236}) );
  SELECT_OP C1933 ( .DATA1(N225), .DATA2(1'b0), .CONTROL1(N11), .CONTROL2(N12), 
        .Z(N239) );
  SELECT_OP C1934 ( .DATA1(N226), .DATA2(1'b0), .CONTROL1(N11), .CONTROL2(N12), 
        .Z(N240) );
  SELECT_OP C1935 ( .DATA1(N240), .DATA2(1'b0), .CONTROL1(N21), .CONTROL2(N190), .Z(N241) );
  GTECH_BUF B_21 ( .A(N189), .Z(N21) );
  SELECT_OP C1936 ( .DATA1({N235, N234}), .DATA2({1'b0, 1'b0}), .CONTROL1(N21), 
        .CONTROL2(N190), .Z({N243, N242}) );
  SELECT_OP C1937 ( .DATA1({N238, N237, N236}), .DATA2({1'b0, 1'b1, 1'b1}), 
        .CONTROL1(N21), .CONTROL2(N190), .Z({N246, N245, N244}) );
  SELECT_OP C1938 ( .DATA1(N239), .DATA2(1'b0), .CONTROL1(N21), .CONTROL2(N190), .Z(N247) );
  GTECH_NOT I_57 ( .A(N256), .Z(N257) );
  SELECT_OP C1940 ( .DATA1({N256, N257}), .DATA2({1'b0, 1'b0}), .CONTROL1(N22), 
        .CONTROL2(N23), .Z({N259, N258}) );
  GTECH_BUF B_22 ( .A(N661), .Z(N22) );
  GTECH_BUF B_23 ( .A(N660), .Z(N23) );
  SELECT_OP C1941 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2(cyc_s), .CONTROL1(N24), 
        .CONTROL2(N25), .Z({N262, N261, N260}) );
  GTECH_BUF B_24 ( .A(N674), .Z(N24) );
  GTECH_BUF B_25 ( .A(N673), .Z(N25) );
  GTECH_NOT I_58 ( .A(N263), .Z(N264) );
  SELECT_OP C1943 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2({N262, N261, N260}), 
        .CONTROL1(N18), .CONTROL2(N19), .Z({N267, N266, N265}) );
  SELECT_OP C1944 ( .DATA1(N661), .DATA2(1'b1), .CONTROL1(N18), .CONTROL2(N19), 
        .Z(N268) );
  SELECT_OP C1945 ( .DATA1({N259, N258}), .DATA2({N263, N264}), .CONTROL1(N18), 
        .CONTROL2(N19), .Z({N270, N269}) );
  SELECT_OP C1946 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2(cyc_s), .CONTROL1(N20), 
        .CONTROL2(N230), .Z({N273, N272, N271}) );
  SELECT_OP C1947 ( .DATA1({N270, N269}), .DATA2({1'b0, 1'b0}), .CONTROL1(N26), 
        .CONTROL2(N253), .Z({N275, N274}) );
  GTECH_BUF B_26 ( .A(N252), .Z(N26) );
  SELECT_OP C1948 ( .DATA1({N267, N266, N265}), .DATA2({N273, N272, N271}), 
        .CONTROL1(N26), .CONTROL2(N253), .Z({N278, N277, N276}) );
  SELECT_OP C1949 ( .DATA1(N268), .DATA2(1'b0), .CONTROL1(N26), .CONTROL2(N253), .Z(N279) );
  SELECT_OP C1950 ( .DATA1({N275, N274}), .DATA2({1'b0, 1'b0}), .CONTROL1(N27), 
        .CONTROL2(N250), .Z({N281, N280}) );
  GTECH_BUF B_27 ( .A(N249), .Z(N27) );
  SELECT_OP C1951 ( .DATA1({N278, N277, N276}), .DATA2({1'b0, 1'b1, 1'b1}), 
        .CONTROL1(N27), .CONTROL2(N250), .Z({N284, N283, N282}) );
  SELECT_OP C1952 ( .DATA1(N279), .DATA2(1'b0), .CONTROL1(N27), .CONTROL2(N250), .Z(N285) );
  SELECT_OP C1953 ( .DATA1(N241), .DATA2(N285), .CONTROL1(N28), .CONTROL2(N187), .Z(N286) );
  GTECH_BUF B_28 ( .A(N186), .Z(N28) );
  SELECT_OP C1954 ( .DATA1({N243, N242}), .DATA2({N281, N280}), .CONTROL1(N28), 
        .CONTROL2(N187), .Z({N288, N287}) );
  SELECT_OP C1955 ( .DATA1({N246, N245, N244}), .DATA2({N284, N283, N282}), 
        .CONTROL1(N28), .CONTROL2(N187), .Z({N291, N290, N289}) );
  SELECT_OP C1956 ( .DATA1(N247), .DATA2(1'b0), .CONTROL1(N28), .CONTROL2(N187), .Z(N292) );
  SELECT_OP C1957 ( .DATA1(1'b0), .DATA2(N624), .CONTROL1(N28), .CONTROL2(N187), .Z(N293) );
  SELECT_OP C1958 ( .DATA1(1'b0), .DATA2(N630), .CONTROL1(N28), .CONTROL2(N187), .Z(N294) );
  SELECT_OP C1959 ( .DATA1(1'b0), .DATA2(N285), .CONTROL1(N28), .CONTROL2(N187), .Z(N295) );
  SELECT_OP C1960 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2({N291, N290, N289}), 
        .CONTROL1(N29), .CONTROL2(N184), .Z({N298, N297, N296}) );
  GTECH_BUF B_29 ( .A(N183), .Z(N29) );
  SELECT_OP C1961 ( .DATA1(1'b0), .DATA2(N295), .CONTROL1(N29), .CONTROL2(N184), .Z(N299) );
  SELECT_OP C1962 ( .DATA1(1'b0), .DATA2(N286), .CONTROL1(N29), .CONTROL2(N184), .Z(N300) );
  SELECT_OP C1963 ( .DATA1({1'b0, 1'b0}), .DATA2({N288, N287}), .CONTROL1(N29), 
        .CONTROL2(N184), .Z({N302, N301}) );
  SELECT_OP C1964 ( .DATA1(1'b0), .DATA2(N292), .CONTROL1(N29), .CONTROL2(N184), .Z(N303) );
  SELECT_OP C1965 ( .DATA1(1'b0), .DATA2(N293), .CONTROL1(N29), .CONTROL2(N184), .Z(N304) );
  SELECT_OP C1966 ( .DATA1(1'b0), .DATA2(N294), .CONTROL1(N29), .CONTROL2(N184), .Z(N305) );
  SELECT_OP C1967 ( .DATA1(decrypt_in), .DATA2(decrypt_op_s), .CONTROL1(N30), 
        .CONTROL2(N31), .Z(N306) );
  GTECH_BUF B_30 ( .A(N750), .Z(N30) );
  GTECH_BUF B_31 ( .A(N749), .Z(N31) );
  SELECT_OP C1968 ( .DATA1({N181, N180, N179}), .DATA2({N298, N297, N296}), 
        .CONTROL1(N30), .CONTROL2(N31), .Z({N309, N308, N307}) );
  SELECT_OP C1969 ( .DATA1(bdi_valid), .DATA2(N300), .CONTROL1(N30), 
        .CONTROL2(N31), .Z(N310) );
  SELECT_OP C1970 ( .DATA1({1'b0, bdi_valid}), .DATA2({N302, N301}), 
        .CONTROL1(N30), .CONTROL2(N31), .Z({N312, N311}) );
  SELECT_OP C1971 ( .DATA1(1'b0), .DATA2(N305), .CONTROL1(N30), .CONTROL2(N31), 
        .Z(N313) );
  SELECT_OP C1972 ( .DATA1(1'b0), .DATA2(N299), .CONTROL1(N30), .CONTROL2(N31), 
        .Z(N314) );
  SELECT_OP C1973 ( .DATA1(1'b0), .DATA2(N303), .CONTROL1(N30), .CONTROL2(N31), 
        .Z(N315) );
  SELECT_OP C1974 ( .DATA1(1'b0), .DATA2(N304), .CONTROL1(N30), .CONTROL2(N31), 
        .Z(N316) );
  GTECH_NOT I_59 ( .A(N325), .Z(N326) );
  SELECT_OP C1976 ( .DATA1({1'b0, 1'b0}), .DATA2({N325, N326}), .CONTROL1(N32), 
        .CONTROL2(N324), .Z({N328, N327}) );
  GTECH_BUF B_32 ( .A(N323), .Z(N32) );
  SELECT_OP C1977 ( .DATA1({1'b0, 1'b1, 1'b0}), .DATA2(calling_state), 
        .CONTROL1(N18), .CONTROL2(N19), .Z({N334, N333, N332}) );
  SELECT_OP C1978 ( .DATA1(1'b0), .DATA2(gtr_one_perm), .CONTROL1(N18), 
        .CONTROL2(N19), .Z(N335) );
  SELECT_OP C1979 ( .DATA1(N753), .DATA2(1'b0), .CONTROL1(N18), .CONTROL2(N19), 
        .Z(N336) );
  SELECT_OP C1980 ( .DATA1(1'b1), .DATA2(gtr_one_perm), .CONTROL1(N33), 
        .CONTROL2(N34), .Z(N337) );
  GTECH_BUF B_33 ( .A(N670), .Z(N33) );
  GTECH_BUF B_34 ( .A(N669), .Z(N34) );
  SELECT_OP C1981 ( .DATA1(N753), .DATA2(1'b0), .CONTROL1(N33), .CONTROL2(N34), 
        .Z(N338) );
  SELECT_OP C1982 ( .DATA1(bdi_size[1:0]), .DATA2({1'b0, 1'b0}), .CONTROL1(N35), .CONTROL2(N331), .Z({N340, N339}) );
  GTECH_BUF B_35 ( .A(N330), .Z(N35) );
  SELECT_OP C1983 ( .DATA1({bdi_eot, N336}), .DATA2({1'b0, N338}), .CONTROL1(
        N35), .CONTROL2(N331), .Z({N342, N341}) );
  SELECT_OP C1984 ( .DATA1({N334, N333, N332}), .DATA2(calling_state), 
        .CONTROL1(N35), .CONTROL2(N331), .Z({N345, N344, N343}) );
  SELECT_OP C1985 ( .DATA1(N335), .DATA2(N337), .CONTROL1(N35), .CONTROL2(N331), .Z(N346) );
  SELECT_OP C1986 ( .DATA1({1'b0, 1'b1, 1'b0}), .DATA2({N345, N344, N343}), 
        .CONTROL1(N36), .CONTROL2(N37), .Z({N349, N348, N347}) );
  GTECH_BUF B_36 ( .A(N721), .Z(N36) );
  GTECH_BUF B_37 ( .A(N722), .Z(N37) );
  SELECT_OP C1987 ( .DATA1(1'b0), .DATA2(N346), .CONTROL1(N36), .CONTROL2(N37), 
        .Z(N350) );
  SELECT_OP C1988 ( .DATA1({1'b1, N753}), .DATA2({N342, N341}), .CONTROL1(N36), 
        .CONTROL2(N37), .Z({N352, N351}) );
  SELECT_OP C1989 ( .DATA1(1'b0), .DATA2(N330), .CONTROL1(N36), .CONTROL2(N37), 
        .Z(N353) );
  SELECT_OP C1990 ( .DATA1({1'b0, 1'b0}), .DATA2({N340, N339}), .CONTROL1(N36), 
        .CONTROL2(N37), .Z({N355, N354}) );
  GTECH_NOT I_60 ( .A(N360), .Z(N361) );
  SELECT_OP C1992 ( .DATA1(N665), .DATA2(1'b0), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N367) );
  SELECT_OP C1993 ( .DATA1(1'b0), .DATA2(N624), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N368) );
  GTECH_NOT I_61 ( .A(N369), .Z(N370) );
  GTECH_NOT I_62 ( .A(N371), .Z(N372) );
  SELECT_OP C1996 ( .DATA1(1'b0), .DATA2(gtr_one_perm), .CONTROL1(N18), 
        .CONTROL2(N19), .Z(N373) );
  SELECT_OP C1997 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2(calling_state), 
        .CONTROL1(N18), .CONTROL2(N19), .Z({N376, N375, N374}) );
  SELECT_OP C1998 ( .DATA1({N369, N370}), .DATA2({N371, N372}), .CONTROL1(N18), 
        .CONTROL2(N19), .Z({N378, N377}) );
  SELECT_OP C1999 ( .DATA1(bdi_size[1:0]), .DATA2({1'b0, 1'b0}), .CONTROL1(N38), .CONTROL2(N365), .Z({N380, N379}) );
  GTECH_BUF B_38 ( .A(N364), .Z(N38) );
  SELECT_OP C2000 ( .DATA1(N368), .DATA2(1'b0), .CONTROL1(N38), .CONTROL2(N365), .Z(N381) );
  SELECT_OP C2001 ( .DATA1(N640), .DATA2(1'b0), .CONTROL1(N38), .CONTROL2(N365), .Z(N382) );
  SELECT_OP C2002 ( .DATA1(N367), .DATA2(1'b0), .CONTROL1(N38), .CONTROL2(N365), .Z(N383) );
  SELECT_OP C2003 ( .DATA1({bdi_eot, N378, N377}), .DATA2({1'b0, N790, 1'b0}), 
        .CONTROL1(N38), .CONTROL2(N365), .Z({N386, N385, N384}) );
  SELECT_OP C2004 ( .DATA1(N373), .DATA2(gtr_one_perm), .CONTROL1(N38), 
        .CONTROL2(N365), .Z(N387) );
  SELECT_OP C2005 ( .DATA1({N376, N375, N374}), .DATA2(calling_state), 
        .CONTROL1(N38), .CONTROL2(N365), .Z({N390, N389, N388}) );
  SELECT_OP C2006 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2({N390, N389, N388}), 
        .CONTROL1(N39), .CONTROL2(N359), .Z({N393, N392, N391}) );
  GTECH_BUF B_39 ( .A(N358), .Z(N39) );
  SELECT_OP C2007 ( .DATA1(1'b0), .DATA2(N387), .CONTROL1(N39), .CONTROL2(N359), .Z(N394) );
  SELECT_OP C2008 ( .DATA1({1'b1, N360, N361}), .DATA2({N386, N385, N384}), 
        .CONTROL1(N39), .CONTROL2(N359), .Z({N397, N396, N395}) );
  SELECT_OP C2009 ( .DATA1(1'b0), .DATA2(N364), .CONTROL1(N39), .CONTROL2(N359), .Z(N398) );
  SELECT_OP C2010 ( .DATA1({1'b0, 1'b0}), .DATA2({N380, N379}), .CONTROL1(N39), 
        .CONTROL2(N359), .Z({N400, N399}) );
  SELECT_OP C2011 ( .DATA1(1'b0), .DATA2(N381), .CONTROL1(N39), .CONTROL2(N359), .Z(N401) );
  SELECT_OP C2012 ( .DATA1(1'b0), .DATA2(N382), .CONTROL1(N39), .CONTROL2(N359), .Z(N402) );
  SELECT_OP C2013 ( .DATA1(1'b0), .DATA2(N383), .CONTROL1(N39), .CONTROL2(N359), .Z(N403) );
  GTECH_NOT I_63 ( .A(N794), .Z(N404) );
  GTECH_NOT I_64 ( .A(N798), .Z(N405) );
  SELECT_OP C2016 ( .DATA1({N404, N794}), .DATA2({N405, N798}), .CONTROL1(N40), 
        .CONTROL2(N41), .Z({N407, N406}) );
  GTECH_BUF B_40 ( .A(N753), .Z(N40) );
  GTECH_BUF B_41 ( .A(gtr_one_perm), .Z(N41) );
  SELECT_OP C2017 ( .DATA1({1'b0, 1'b1, 1'b1}), .DATA2(calling_state), 
        .CONTROL1(N18), .CONTROL2(N19), .Z({N412, N411, N410}) );
  SELECT_OP C2018 ( .DATA1(bdi_size[1:0]), .DATA2({1'b0, 1'b0}), .CONTROL1(N42), .CONTROL2(N409), .Z({N414, N413}) );
  GTECH_BUF B_42 ( .A(N408), .Z(N42) );
  SELECT_OP C2019 ( .DATA1({N412, N411, N410}), .DATA2(calling_state), 
        .CONTROL1(N42), .CONTROL2(N409), .Z({N417, N416, N415}) );
  SELECT_OP C2020 ( .DATA1(gtr_one_perm), .DATA2(1'b1), .CONTROL1(N42), 
        .CONTROL2(N409), .Z(N418) );
  SELECT_OP C2021 ( .DATA1(N418), .DATA2(gtr_one_perm), .CONTROL1(N43), 
        .CONTROL2(N44), .Z(N419) );
  GTECH_BUF B_43 ( .A(N728), .Z(N43) );
  GTECH_BUF B_44 ( .A(N727), .Z(N44) );
  SELECT_OP C2022 ( .DATA1(N408), .DATA2(1'b0), .CONTROL1(N43), .CONTROL2(N44), 
        .Z(N420) );
  SELECT_OP C2023 ( .DATA1({N414, N413}), .DATA2({1'b0, 1'b0}), .CONTROL1(N43), 
        .CONTROL2(N44), .Z({N422, N421}) );
  SELECT_OP C2024 ( .DATA1({N417, N416, N415}), .DATA2({1'b0, 1'b1, 1'b1}), 
        .CONTROL1(N43), .CONTROL2(N44), .Z({N425, N424, N423}) );
  SELECT_OP C2025 ( .DATA1({N753, N407, N406}), .DATA2({1'b0, 1'b0, N801}), 
        .CONTROL1(N45), .CONTROL2(N46), .Z({N428, N427, N426}) );
  GTECH_BUF B_45 ( .A(N718), .Z(N45) );
  GTECH_BUF B_46 ( .A(N717), .Z(N46) );
  SELECT_OP C2026 ( .DATA1(N753), .DATA2(N801), .CONTROL1(N45), .CONTROL2(N46), 
        .Z(N429) );
  SELECT_OP C2027 ( .DATA1({N425, N424, N423}), .DATA2(calling_state), 
        .CONTROL1(N45), .CONTROL2(N46), .Z({N432, N431, N430}) );
  SELECT_OP C2028 ( .DATA1(N419), .DATA2(gtr_one_perm), .CONTROL1(N45), 
        .CONTROL2(N46), .Z(N433) );
  SELECT_OP C2029 ( .DATA1(N420), .DATA2(1'b0), .CONTROL1(N45), .CONTROL2(N46), 
        .Z(N434) );
  SELECT_OP C2030 ( .DATA1({N422, N421}), .DATA2({1'b0, 1'b0}), .CONTROL1(N45), 
        .CONTROL2(N46), .Z({N436, N435}) );
  SELECT_OP C2031 ( .DATA1(N403), .DATA2(1'b0), .CONTROL1(N47), .CONTROL2(N48), 
        .Z(N437) );
  GTECH_BUF B_47 ( .A(N731), .Z(N47) );
  GTECH_BUF B_48 ( .A(N730), .Z(N48) );
  SELECT_OP C2032 ( .DATA1({N393, N392, N391}), .DATA2({N432, N431, N430}), 
        .CONTROL1(N47), .CONTROL2(N48), .Z({N440, N439, N438}) );
  SELECT_OP C2033 ( .DATA1(N394), .DATA2(N433), .CONTROL1(N47), .CONTROL2(N48), 
        .Z(N441) );
  SELECT_OP C2034 ( .DATA1({N397, 1'b0}), .DATA2({1'b0, N429}), .CONTROL1(N47), 
        .CONTROL2(N48), .Z({N443, N442}) );
  SELECT_OP C2035 ( .DATA1({N397, N396, N395}), .DATA2({N428, N427, N426}), 
        .CONTROL1(N47), .CONTROL2(N48), .Z({N446, N445, N444}) );
  SELECT_OP C2036 ( .DATA1(N398), .DATA2(N434), .CONTROL1(N47), .CONTROL2(N48), 
        .Z(N447) );
  SELECT_OP C2037 ( .DATA1({N400, N399}), .DATA2({N436, N435}), .CONTROL1(N47), 
        .CONTROL2(N48), .Z({N449, N448}) );
  SELECT_OP C2038 ( .DATA1(N401), .DATA2(1'b0), .CONTROL1(N47), .CONTROL2(N48), 
        .Z(N450) );
  SELECT_OP C2039 ( .DATA1(N402), .DATA2(1'b0), .CONTROL1(N47), .CONTROL2(N48), 
        .Z(N451) );
  SELECT_OP C2040 ( .DATA1(N323), .DATA2(1'b0), .CONTROL1(N49), .CONTROL2(N50), 
        .Z(N452) );
  GTECH_BUF B_49 ( .A(N740), .Z(N49) );
  GTECH_BUF B_50 ( .A(N739), .Z(N50) );
  SELECT_OP C2041 ( .DATA1({1'b1, N328, N327}), .DATA2({N446, N445, N444}), 
        .CONTROL1(N49), .CONTROL2(N50), .Z({N455, N454, N453}) );
  SELECT_OP C2042 ( .DATA1({N355, N354}), .DATA2({N449, N448}), .CONTROL1(N49), 
        .CONTROL2(N50), .Z({N457, N456}) );
  SELECT_OP C2043 ( .DATA1({N349, N348, N347}), .DATA2({N440, N439, N438}), 
        .CONTROL1(N49), .CONTROL2(N50), .Z({N460, N459, N458}) );
  SELECT_OP C2044 ( .DATA1(N350), .DATA2(N441), .CONTROL1(N49), .CONTROL2(N50), 
        .Z(N461) );
  SELECT_OP C2045 ( .DATA1({N352, 1'b0, N351, N351}), .DATA2({1'b0, N443, 1'b0, 
        N442}), .CONTROL1(N49), .CONTROL2(N50), .Z({N465, N464, N463, N462})
         );
  SELECT_OP C2046 ( .DATA1(N353), .DATA2(N447), .CONTROL1(N49), .CONTROL2(N50), 
        .Z(N466) );
  SELECT_OP C2047 ( .DATA1(1'b0), .DATA2(N451), .CONTROL1(N49), .CONTROL2(N50), 
        .Z(N467) );
  SELECT_OP C2048 ( .DATA1(1'b0), .DATA2(N437), .CONTROL1(N49), .CONTROL2(N50), 
        .Z(N468) );
  SELECT_OP C2049 ( .DATA1(1'b0), .DATA2(N450), .CONTROL1(N49), .CONTROL2(N50), 
        .Z(N469) );
  SELECT_OP C2050 ( .DATA1({1'b0, 1'b0, 1'b1}), .DATA2({N460, N459, N458}), 
        .CONTROL1(N51), .CONTROL2(N52), .Z({N472, N471, N470}) );
  GTECH_BUF B_51 ( .A(N743), .Z(N51) );
  GTECH_BUF B_52 ( .A(N742), .Z(N52) );
  SELECT_OP C2051 ( .DATA1({1'b0, 1'b0, 1'b1, 1'b1}), .DATA2({N465, N464, N463, 
        N462}), .CONTROL1(N51), .CONTROL2(N52), .Z({N476, N475, N474, N473})
         );
  SELECT_OP C2052 ( .DATA1({1'b1, 1'b1, 1'b0}), .DATA2({N455, N454, N453}), 
        .CONTROL1(N51), .CONTROL2(N52), .Z({N479, N478, N477}) );
  SELECT_OP C2053 ( .DATA1(1'b0), .DATA2(N469), .CONTROL1(N51), .CONTROL2(N52), 
        .Z(N480) );
  SELECT_OP C2054 ( .DATA1(1'b0), .DATA2(N452), .CONTROL1(N51), .CONTROL2(N52), 
        .Z(N481) );
  SELECT_OP C2055 ( .DATA1({1'b0, 1'b0}), .DATA2({N457, N456}), .CONTROL1(N51), 
        .CONTROL2(N52), .Z({N483, N482}) );
  SELECT_OP C2056 ( .DATA1(gtr_one_perm), .DATA2(N461), .CONTROL1(N51), 
        .CONTROL2(N52), .Z(N484) );
  SELECT_OP C2057 ( .DATA1(1'b0), .DATA2(N466), .CONTROL1(N51), .CONTROL2(N52), 
        .Z(N485) );
  SELECT_OP C2058 ( .DATA1(1'b0), .DATA2(N467), .CONTROL1(N51), .CONTROL2(N52), 
        .Z(N486) );
  SELECT_OP C2059 ( .DATA1(1'b0), .DATA2(N468), .CONTROL1(N51), .CONTROL2(N52), 
        .Z(N487) );
  GTECH_NOT I_65 ( .A(N318), .Z(N488) );
  SELECT_OP C2061 ( .DATA1(cyc_s), .DATA2({1'b1, 1'b0, 1'b0}), .CONTROL1(N53), 
        .CONTROL2(N319), .Z({N491, N490, N489}) );
  GTECH_BUF B_53 ( .A(N318), .Z(N53) );
  SELECT_OP C2062 ( .DATA1(1'b0), .DATA2(N487), .CONTROL1(N53), .CONTROL2(N319), .Z(N492) );
  SELECT_OP C2063 ( .DATA1(calling_state), .DATA2({N472, N471, N470}), 
        .CONTROL1(N53), .CONTROL2(N319), .Z({N495, N494, N493}) );
  SELECT_OP C2064 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N476, N475, N474, 
        N473}), .CONTROL1(N53), .CONTROL2(N319), .Z({N499, N498, N497, N496})
         );
  SELECT_OP C2065 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N479, N478, N477}), 
        .CONTROL1(N53), .CONTROL2(N319), .Z({N502, N501, N500}) );
  SELECT_OP C2066 ( .DATA1(1'b0), .DATA2(N480), .CONTROL1(N53), .CONTROL2(N319), .Z(N503) );
  SELECT_OP C2067 ( .DATA1(1'b0), .DATA2(N481), .CONTROL1(N53), .CONTROL2(N319), .Z(N504) );
  SELECT_OP C2068 ( .DATA1({1'b0, 1'b0}), .DATA2({N483, N482}), .CONTROL1(N53), 
        .CONTROL2(N319), .Z({N506, N505}) );
  SELECT_OP C2069 ( .DATA1(gtr_one_perm), .DATA2(N484), .CONTROL1(N53), 
        .CONTROL2(N319), .Z(N507) );
  SELECT_OP C2070 ( .DATA1(1'b0), .DATA2(N485), .CONTROL1(N53), .CONTROL2(N319), .Z(N508) );
  SELECT_OP C2071 ( .DATA1(1'b0), .DATA2(N486), .CONTROL1(N53), .CONTROL2(N319), .Z(N509) );
  SELECT_OP C2072 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2(calling_state), 
        .CONTROL1(N54), .CONTROL2(N55), .Z({N514, N513, N512}) );
  GTECH_BUF B_54 ( .A(N649), .Z(N54) );
  GTECH_BUF B_55 ( .A(N648), .Z(N55) );
  GTECH_NOT I_66 ( .A(N510), .Z(N515) );
  SELECT_OP C2074 ( .DATA1(1'b0), .DATA2(N649), .CONTROL1(N56), .CONTROL2(N511), .Z(N516) );
  GTECH_BUF B_56 ( .A(N510), .Z(N56) );
  SELECT_OP C2075 ( .DATA1(calling_state), .DATA2({N514, N513, N512}), 
        .CONTROL1(N56), .CONTROL2(N511), .Z({N519, N518, N517}) );
  SELECT_OP C2076 ( .DATA1({N519, N518, N517}), .DATA2(calling_state), 
        .CONTROL1(N57), .CONTROL2(N58), .Z({N522, N521, N520}) );
  GTECH_BUF B_57 ( .A(N706), .Z(N57) );
  GTECH_BUF B_58 ( .A(N705), .Z(N58) );
  SELECT_OP C2077 ( .DATA1({N510, N515, N510}), .DATA2(cyc_s), .CONTROL1(N57), 
        .CONTROL2(N58), .Z({N525, N524, N523}) );
  SELECT_OP C2078 ( .DATA1(N516), .DATA2(1'b0), .CONTROL1(N57), .CONTROL2(N58), 
        .Z(N526) );
  SELECT_OP C2079 ( .DATA1({1'b1, 1'b0, 1'b0}), .DATA2(calling_state), 
        .CONTROL1(N59), .CONTROL2(N529), .Z({N532, N531, N530}) );
  GTECH_BUF B_59 ( .A(N528), .Z(N59) );
  GTECH_NOT I_67 ( .A(N528), .Z(N533) );
  SELECT_OP C2081 ( .DATA1(N533), .DATA2(1'b0), .CONTROL1(N60), .CONTROL2(N61), 
        .Z(N534) );
  GTECH_BUF B_60 ( .A(N678), .Z(N60) );
  GTECH_BUF B_61 ( .A(N677), .Z(N61) );
  SELECT_OP C2082 ( .DATA1({1'b0, N528, N528}), .DATA2(cyc_s), .CONTROL1(N60), 
        .CONTROL2(N61), .Z({N537, N536, N535}) );
  SELECT_OP C2083 ( .DATA1({N532, N531, N530}), .DATA2(calling_state), 
        .CONTROL1(N60), .CONTROL2(N61), .Z({N540, N539, N538}) );
  SELECT_OP C2084 ( .DATA1(N528), .DATA2(1'b0), .CONTROL1(N60), .CONTROL2(N61), 
        .Z(N541) );
  SELECT_OP C2085 ( .DATA1(1'b0), .DATA2(tag_verified), .CONTROL1(N62), 
        .CONTROL2(N547), .Z(N548) );
  GTECH_BUF B_62 ( .A(N546), .Z(N62) );
  GTECH_NOT I_68 ( .A(N549), .Z(N550) );
  SELECT_OP C2087 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2(cyc_s), .CONTROL1(N63), 
        .CONTROL2(N64), .Z({N553, N552, N551}) );
  GTECH_BUF B_63 ( .A(N682), .Z(N63) );
  GTECH_BUF B_64 ( .A(N681), .Z(N64) );
  SELECT_OP C2088 ( .DATA1(N548), .DATA2(1'b0), .CONTROL1(N63), .CONTROL2(N64), 
        .Z(N554) );
  SELECT_OP C2089 ( .DATA1(1'b1), .DATA2(N550), .CONTROL1(N63), .CONTROL2(N64), 
        .Z(N555) );
  SELECT_OP C2090 ( .DATA1(N555), .DATA2(1'b1), .CONTROL1(N65), .CONTROL2(N544), .Z(N556) );
  GTECH_BUF B_65 ( .A(N543), .Z(N65) );
  SELECT_OP C2091 ( .DATA1(N682), .DATA2(1'b0), .CONTROL1(N65), .CONTROL2(N544), .Z(N557) );
  SELECT_OP C2092 ( .DATA1(N554), .DATA2(1'b0), .CONTROL1(N65), .CONTROL2(N544), .Z(N558) );
  SELECT_OP C2093 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1}), .DATA2(bdi_valid_bytes), 
        .CONTROL1(N66), .CONTROL2(N67), .Z({N562, N561, N560, N559}) );
  GTECH_BUF B_66 ( .A(N708), .Z(N66) );
  GTECH_BUF B_67 ( .A(decrypt_op_s), .Z(N67) );
  SELECT_OP C2094 ( .DATA1(bdo_ready), .DATA2(N543), .CONTROL1(N66), 
        .CONTROL2(N67), .Z(N563) );
  SELECT_OP C2095 ( .DATA1(N541), .DATA2(1'b0), .CONTROL1(N66), .CONTROL2(N67), 
        .Z(N564) );
  SELECT_OP C2096 ( .DATA1(N534), .DATA2(1'b0), .CONTROL1(N66), .CONTROL2(N67), 
        .Z(N565) );
  SELECT_OP C2097 ( .DATA1({N537, N536, N535}), .DATA2({N553, N552, N551}), 
        .CONTROL1(N66), .CONTROL2(N67), .Z({N568, N567, N566}) );
  SELECT_OP C2098 ( .DATA1(1'b0), .DATA2(N558), .CONTROL1(N66), .CONTROL2(N67), 
        .Z(N569) );
  SELECT_OP C2099 ( .DATA1(1'b0), .DATA2(N543), .CONTROL1(N66), .CONTROL2(N67), 
        .Z(N570) );
  SELECT_OP C2100 ( .DATA1(1'b1), .DATA2(N556), .CONTROL1(N66), .CONTROL2(N67), 
        .Z(N571) );
  SELECT_OP C2101 ( .DATA1(1'b0), .DATA2(N557), .CONTROL1(N66), .CONTROL2(N67), 
        .Z(N572) );
  SELECT_OP C2102 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b1), .DATA6(N571), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(
        n_tag_verified) );
  GTECH_BUF B_68 ( .A(state_main_sel[5]), .Z(N68) );
  GTECH_BUF B_69 ( .A(N81), .Z(N69) );
  GTECH_BUF B_70 ( .A(N84), .Z(N70) );
  GTECH_BUF B_71 ( .A(N87), .Z(N71) );
  GTECH_BUF B_72 ( .A(N90), .Z(N72) );
  GTECH_BUF B_73 ( .A(N93), .Z(N73) );
  SELECT_OP C2103 ( .DATA1(1'b1), .DATA2(N173), .DATA3(1'b0), .DATA4(N488), 
        .DATA5(N706), .DATA6(N564), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(load_dcount)
         );
  SELECT_OP C2104 ( .DATA1(1'b0), .DATA2(N507), .CONTROL1(N68), .CONTROL2(N71), 
        .Z(n_gtr_one_perm) );
  SELECT_OP C2105 ( .DATA1({1'b0, N101, N101, N101}), .DATA2({1'b0, 1'b0, 1'b0, 
        1'b0}), .DATA3({N315, 1'b0, 1'b0, 1'b0}), .DATA4({N504, 1'b0, 1'b0, 
        1'b0}), .DATA5({1'b0, 1'b1, 1'b1, 1'b1}), .DATA6({1'b0, 1'b0, 1'b0, 
        1'b0}), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(N70), .CONTROL4(N71), 
        .CONTROL5(N72), .CONTROL6(N73), .Z({state_main_sel[6], 
        state_main_sel[4], state_main_sel_2, state_main_sel_0}) );
  SELECT_OP C2106 ( .DATA1({1'b1, 1'b1, 1'b1}), .DATA2({N173, N173, key_valid}), .DATA3({N315, N312, N311}), .DATA4({N502, N501, N500}), .DATA5({1'b1, 1'b1, 
        1'b1}), .DATA6({1'b0, 1'b0, 1'b0}), .CONTROL1(N68), .CONTROL2(N69), 
        .CONTROL3(N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(
        state_main_en) );
  SELECT_OP C2107 ( .DATA1(1'b0), .DATA2(N306), .CONTROL1(N68), .CONTROL2(N70), 
        .Z(n_decrypt_op_s) );
  SELECT_OP C2108 ( .DATA1({1'b0, N99, N98}), .DATA2({N137, N136, N135}), 
        .DATA3({N309, N308, N307}), .DATA4({N491, N490, N489}), .DATA5({N525, 
        N524, N523}), .DATA6({N568, N567, N566}), .CONTROL1(N68), .CONTROL2(
        N69), .CONTROL3(N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), 
        .Z(n_cyc_s) );
  SELECT_OP C2109 ( .DATA1({hash_in, 1'b0, hash_in}), .DATA2({N140, N139, N138}), .DATA3({N495, N494, N493}), .DATA4({N522, N521, N520}), .DATA5({N540, N539, 
        N538}), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(N71), .CONTROL4(N72), 
        .CONTROL5(N73), .Z(n_calling_state) );
  SELECT_OP C2110 ( .DATA1(bdi), .DATA2({N172, N171, N170, N169, N168, N167, 
        N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, 
        N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, 
        N142, N141}), .DATA3(bdi), .DATA4(bdi), .DATA5(bdi), .DATA6(bdi), 
        .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(N70), .CONTROL4(N71), 
        .CONTROL5(N72), .CONTROL6(N73), .Z(bdi_key) );
  SELECT_OP C2111 ( .DATA1(1'b0), .DATA2(key_valid), .DATA3(1'b0), .DATA4(1'b0), .DATA5(1'b0), .DATA6(1'b0), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(N70), 
        .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(key_ready) );
  SELECT_OP C2112 ( .DATA1(1'b0), .DATA2(key_valid), .DATA3(N310), .DATA4(N488), .DATA5(1'b0), .DATA6(N563), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(N70), 
        .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(en_dcount) );
  SELECT_OP C2113 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({1'b0, 1'b0, N173, 
        1'b0}), .DATA3({1'b0, 1'b0, 1'b0, 1'b0}), .DATA4({N499, N498, N497, 
        N496}), .DATA5({1'b0, 1'b0, 1'b0, 1'b0}), .DATA6({1'b0, 1'b0, 1'b0, 
        1'b0}), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(N70), .CONTROL4(N71), 
        .CONTROL5(N72), .CONTROL6(N73), .Z({cu_cd_s, cu_cd_s_1, cu_cd_s_0}) );
  SELECT_OP C2114 ( .DATA1(1'b0), .DATA2(N173), .DATA3(1'b0), .DATA4(N488), 
        .DATA5(N706), .DATA6(1'b0), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(load_rnd) );
  SELECT_OP C2115 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(bdi_eot), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(
        n_bdi_eot_prev) );
  SELECT_OP C2116 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N316), .DATA4(N503), 
        .DATA5(1'b0), .DATA6(1'b0), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(
        cyc_state_update_sel) );
  SELECT_OP C2117 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N310), .DATA4(N508), 
        .DATA5(1'b0), .DATA6(N570), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(bdi_ready) );
  SELECT_OP C2118 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N313), .DATA4(N492), 
        .DATA5(1'b0), .DATA6(N565), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(end_of_block)
         );
  SELECT_OP C2119 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(N314), .DATA4(N509), 
        .DATA5(1'b0), .DATA6(N708), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(bdo_valid) );
  SELECT_OP C2120 ( .DATA1({1'b0, 1'b0}), .DATA2({1'b0, 1'b0}), .DATA3({1'b0, 
        1'b0}), .DATA4({N506, N505}), .DATA5({1'b0, 1'b0}), .DATA6({1'b0, 1'b0}), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(N70), .CONTROL4(N71), .CONTROL5(
        N72), .CONTROL6(N73), .Z(cycd_sel) );
  SELECT_OP C2121 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b1), .DATA6(1'b0), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(en_rnd) );
  SELECT_OP C2122 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(N526), .DATA6(1'b0), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(key_en) );
  SELECT_OP C2123 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(N572), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(
        msg_auth_valid) );
  SELECT_OP C2124 ( .DATA1(bdi_valid_bytes), .DATA2(bdi_valid_bytes), .DATA3(
        bdi_valid_bytes), .DATA4(bdi_valid_bytes), .DATA5(bdi_valid_bytes), 
        .DATA6({N562, N561, N560, N559}), .CONTROL1(N68), .CONTROL2(N69), 
        .CONTROL3(N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(
        bdo_valid_bytes) );
  SELECT_OP C2125 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(N569), .CONTROL1(N68), .CONTROL2(N69), .CONTROL3(
        N70), .CONTROL4(N71), .CONTROL5(N72), .CONTROL6(N73), .Z(msg_auth) );
  SELECT_OP C2126 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2(n_cyc_s), .CONTROL1(N74), .CONTROL2(N75), .Z({N576, N575, N574}) );
  GTECH_BUF B_74 ( .A(rst), .Z(N74) );
  GTECH_BUF B_75 ( .A(N573), .Z(N75) );
  SELECT_OP C2127 ( .DATA1(1'b1), .DATA2(hash_in), .CONTROL1(N74), .CONTROL2(
        N75), .Z(N577) );
  SELECT_OP C2128 ( .DATA1(1'b0), .DATA2(n_tag_verified), .CONTROL1(N74), 
        .CONTROL2(N75), .Z(N578) );
  SELECT_OP C2129 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2(n_calling_state), 
        .CONTROL1(N74), .CONTROL2(N75), .Z({N581, N580, N579}) );
  SELECT_OP C2130 ( .DATA1(1'b0), .DATA2(n_gtr_one_perm), .CONTROL1(N74), 
        .CONTROL2(N75), .Z(N582) );
  SELECT_OP C2131 ( .DATA1(1'b0), .DATA2(n_decrypt_op_s), .CONTROL1(N74), 
        .CONTROL2(N75), .Z(N583) );
  SELECT_OP C2132 ( .DATA1(1'b0), .DATA2(n_bdi_eot_prev), .CONTROL1(N74), 
        .CONTROL2(N75), .Z(N584) );
  GTECH_BUF B_76 ( .A(N758), .Z(xor_sel) );
  GTECH_NOT I_69 ( .A(cyc_s[2]), .Z(N76) );
  GTECH_NOT I_70 ( .A(N80), .Z(N81) );
  GTECH_NOT I_71 ( .A(N83), .Z(N84) );
  GTECH_NOT I_72 ( .A(N86), .Z(N87) );
  GTECH_NOT I_73 ( .A(N89), .Z(N90) );
  GTECH_NOT I_74 ( .A(N92), .Z(N93) );
  GTECH_BUF B_77 ( .A(N78), .Z(state_main_sel[5]) );
  GTECH_OR2 C2160 ( .A(key_valid), .B(bdi_valid), .Z(N94) );
  GTECH_NOT I_75 ( .A(N94), .Z(N95) );
  GTECH_NOT I_76 ( .A(hash_in), .Z(N96) );
  GTECH_NOT I_77 ( .A(key_update), .Z(N97) );
  GTECH_NOT I_78 ( .A(key_valid), .Z(N102) );
  GTECH_BUF B_78 ( .A(N84), .Z(N174) );
  GTECH_NOT I_79 ( .A(bdi_valid), .Z(N175) );
  GTECH_AND2 C2182 ( .A(N174), .B(N749), .Z(N182) );
  GTECH_AND2 C2183 ( .A(N747), .B(bdi_eot), .Z(N183) );
  GTECH_NOT I_80 ( .A(N183), .Z(N184) );
  GTECH_AND2 C2186 ( .A(N182), .B(N184), .Z(N185) );
  GTECH_OR2 C2187 ( .A(N734), .B(N737), .Z(N186) );
  GTECH_NOT I_81 ( .A(N186), .Z(N187) );
  GTECH_AND2 C2190 ( .A(N185), .B(N186), .Z(N188) );
  GTECH_OR2 C2191 ( .A(N802), .B(N728), .Z(N189) );
  GTECH_OR2 C2192 ( .A(N722), .B(N724), .Z(N802) );
  GTECH_NOT I_82 ( .A(N189), .Z(N190) );
  GTECH_AND2 C2195 ( .A(N188), .B(N189), .Z(N191) );
  GTECH_AND2 C2196 ( .A(N191), .B(bdi_valid), .Z(N192) );
  GTECH_AND2 C2200 ( .A(N192), .B(bdi_eot), .Z(N193) );
  GTECH_NOT I_83 ( .A(N657), .Z(N194) );
  GTECH_AND2 C2203 ( .A(N193), .B(N657), .Z(N195) );
  GTECH_NOT I_84 ( .A(N196), .Z(N197) );
  GTECH_AND2 C2206 ( .A(N195), .B(N197) );
  GTECH_AND2 C2208 ( .A(N192), .B(N752), .Z(N205) );
  GTECH_AND2 C2209 ( .A(N712), .B(N715), .Z(N206) );
  GTECH_NOT I_85 ( .A(N206), .Z(N207) );
  GTECH_AND2 C2212 ( .A(N696), .B(N699), .Z(N208) );
  GTECH_NOT I_86 ( .A(N208), .Z(N209) );
  GTECH_NOT I_87 ( .A(N216), .Z(N217) );
  GTECH_AND2 C2217 ( .A(N205), .B(N217) );
  GTECH_AND2 C2219 ( .A(N724), .B(N657), .Z(N229) );
  GTECH_NOT I_88 ( .A(N229), .Z(N230) );
  GTECH_AND2 C2222 ( .A(N185), .B(N187), .Z(N248) );
  GTECH_OR2 C2224 ( .A(N803), .B(N724), .Z(N249) );
  GTECH_OR2 C2225 ( .A(N640), .B(N624), .Z(N803) );
  GTECH_NOT I_89 ( .A(N249), .Z(N250) );
  GTECH_AND2 C2228 ( .A(N248), .B(N249), .Z(N251) );
  GTECH_AND2 C2229 ( .A(bdi_valid), .B(bdo_ready), .Z(N252) );
  GTECH_NOT I_90 ( .A(N252), .Z(N253) );
  GTECH_AND2 C2232 ( .A(N251), .B(N252), .Z(N254) );
  GTECH_AND2 C2233 ( .A(N254), .B(bdi_eot), .Z(N255) );
  GTECH_AND2 C2236 ( .A(N255), .B(N661) );
  GTECH_AND2 C2238 ( .A(N254), .B(N752) );
  GTECH_BUF B_79 ( .A(N87), .Z(N317) );
  GTECH_AND2 C2243 ( .A(N805), .B(N747), .Z(N318) );
  GTECH_AND2 C2244 ( .A(N804), .B(N752), .Z(N805) );
  GTECH_AND2 C2245 ( .A(N724), .B(N751), .Z(N804) );
  GTECH_NOT I_91 ( .A(N318), .Z(N319) );
  GTECH_AND2 C2248 ( .A(N317), .B(N319), .Z(N320) );
  GTECH_AND2 C2251 ( .A(N320), .B(N742), .Z(N321) );
  GTECH_AND2 C2254 ( .A(N321), .B(N740), .Z(N322) );
  GTECH_NOT I_92 ( .A(N323), .Z(N324) );
  GTECH_AND2 C2257 ( .A(N322), .B(N324) );
  GTECH_AND2 C2262 ( .A(N322), .B(N722) );
  GTECH_AND2 C2263 ( .A(N806), .B(N329), .Z(N330) );
  GTECH_AND2 C2264 ( .A(bdi_valid), .B(N707), .Z(N806) );
  GTECH_NOT I_93 ( .A(N330), .Z(N331) );
  GTECH_AND2 C2271 ( .A(N321), .B(N739), .Z(N356) );
  GTECH_AND2 C2274 ( .A(N356), .B(N731), .Z(N357) );
  GTECH_AND2 C2275 ( .A(N639), .B(N623), .Z(N358) );
  GTECH_NOT I_94 ( .A(N358), .Z(N359) );
  GTECH_AND2 C2278 ( .A(N357), .B(N358) );
  GTECH_AND2 C2280 ( .A(N357), .B(N359), .Z(N362) );
  GTECH_AND2 C2281 ( .A(N808), .B(N363), .Z(N364) );
  GTECH_AND2 C2282 ( .A(N807), .B(N707), .Z(N808) );
  GTECH_AND2 C2283 ( .A(bdi_valid), .B(bdo_ready), .Z(N807) );
  GTECH_NOT I_95 ( .A(N364), .Z(N365) );
  GTECH_AND2 C2286 ( .A(N362), .B(N364), .Z(N366) );
  GTECH_AND2 C2288 ( .A(N366), .B(bdi_eot) );
  GTECH_AND2 C2290 ( .A(N366), .B(N752) );
  GTECH_AND2 C2301 ( .A(bdi_valid), .B(N692), .Z(N408) );
  GTECH_NOT I_96 ( .A(N408), .Z(N409) );
  GTECH_OR2 C2307 ( .A(N686), .B(N689), .Z(N510) );
  GTECH_NOT I_97 ( .A(N510), .Z(N511) );
  GTECH_BUF B_80 ( .A(N93), .Z(N527) );
  GTECH_AND2 C2318 ( .A(N652), .B(N654), .Z(N528) );
  GTECH_NOT I_98 ( .A(N528), .Z(N529) );
  GTECH_AND2 C2321 ( .A(N527), .B(decrypt_op_s), .Z(N542) );
  GTECH_AND2 C2322 ( .A(bdi_valid), .B(msg_auth_ready), .Z(N543) );
  GTECH_NOT I_99 ( .A(N543), .Z(N544) );
  GTECH_AND2 C2325 ( .A(N542), .B(N543), .Z(N545) );
  GTECH_AND2 C2328 ( .A(N545), .B(N682) );
  GTECH_NOT I_100 ( .A(N546), .Z(N547) );
  GTECH_AND2 C2331 ( .A(N545), .B(N681) );
  GTECH_NOT I_101 ( .A(rst), .Z(N573) );
  GTECH_AND2 C2336 ( .A(state_main_sel[5]), .B(N573), .Z(N585) );
  GTECH_AND2 C2337 ( .A(N95), .B(N585), .Z(N586) );
  GTECH_AND2 C2338 ( .A(N81), .B(N573), .Z(N587) );
  GTECH_AND2 C2339 ( .A(key_valid), .B(N587), .Z(N588) );
  GTECH_OR2 C2340 ( .A(N586), .B(N588), .Z(N589) );
  GTECH_AND2 C2341 ( .A(N93), .B(N573), .Z(N590) );
  GTECH_AND2 C2342 ( .A(decrypt_op_s), .B(N590), .Z(N591) );
  GTECH_AND2 C2343 ( .A(N544), .B(N591), .Z(N592) );
  GTECH_OR2 C2344 ( .A(N589), .B(N592), .Z(N593) );
  GTECH_NOT I_102 ( .A(N593), .Z(N594) );
  GTECH_OR2 C2346 ( .A(N586), .B(N587), .Z(N595) );
  GTECH_AND2 C2347 ( .A(N84), .B(N573), .Z(N596) );
  GTECH_OR2 C2348 ( .A(N595), .B(N596), .Z(N597) );
  GTECH_AND2 C2349 ( .A(N87), .B(N573), .Z(N598) );
  GTECH_OR2 C2350 ( .A(N597), .B(N598), .Z(N599) );
  GTECH_AND2 C2351 ( .A(N90), .B(N573), .Z(N600) );
  GTECH_OR2 C2352 ( .A(N599), .B(N600), .Z(N601) );
  GTECH_OR2 C2353 ( .A(N601), .B(N590), .Z(N602) );
  GTECH_NOT I_103 ( .A(N602), .Z(N603) );
  GTECH_AND2 C2355 ( .A(N94), .B(N585), .Z(N604) );
  GTECH_AND2 C2356 ( .A(N96), .B(N604), .Z(N605) );
  GTECH_AND2 C2357 ( .A(key_update), .B(N605), .Z(N606) );
  GTECH_OR2 C2358 ( .A(N606), .B(N586), .Z(N607) );
  GTECH_OR2 C2359 ( .A(N607), .B(N588), .Z(N608) );
  GTECH_OR2 C2360 ( .A(N608), .B(N596), .Z(N609) );
  GTECH_OR2 C2361 ( .A(N609), .B(N591), .Z(N610) );
  GTECH_NOT I_104 ( .A(N610), .Z(N611) );
  GTECH_OR2 C2363 ( .A(N587), .B(N596), .Z(N612) );
  GTECH_OR2 C2364 ( .A(N612), .B(N600), .Z(N613) );
  GTECH_OR2 C2365 ( .A(N613), .B(N590), .Z(N614) );
  GTECH_NOT I_105 ( .A(N614), .Z(N615) );
  GTECH_OR2 C2367 ( .A(N605), .B(N586), .Z(N616) );
  GTECH_OR2 C2368 ( .A(N616), .B(N587), .Z(N617) );
  GTECH_OR2 C2369 ( .A(N617), .B(N598), .Z(N618) );
  GTECH_OR2 C2370 ( .A(N618), .B(N600), .Z(N619) );
  GTECH_OR2 C2371 ( .A(N619), .B(N590), .Z(N620) );
  GTECH_NOT I_106 ( .A(N620), .Z(N621) );
endmodule


module DATA_SIPO_2 ( clk, rst, end_of_input, data_p, data_valid_p, 
        data_ready_p, data_s, data_valid_s, data_ready_s );
  output [31:0] data_p;
  input [31:0] data_s;
  input clk, rst, end_of_input, data_ready_p, data_valid_s;
  output data_valid_p, data_ready_s;
  wire   data_valid_p, data_ready_s;
  assign data_p[31] = data_s[31];
  assign data_p[30] = data_s[30];
  assign data_p[29] = data_s[29];
  assign data_p[28] = data_s[28];
  assign data_p[27] = data_s[27];
  assign data_p[26] = data_s[26];
  assign data_p[25] = data_s[25];
  assign data_p[24] = data_s[24];
  assign data_p[23] = data_s[23];
  assign data_p[22] = data_s[22];
  assign data_p[21] = data_s[21];
  assign data_p[20] = data_s[20];
  assign data_p[19] = data_s[19];
  assign data_p[18] = data_s[18];
  assign data_p[17] = data_s[17];
  assign data_p[16] = data_s[16];
  assign data_p[15] = data_s[15];
  assign data_p[14] = data_s[14];
  assign data_p[13] = data_s[13];
  assign data_p[12] = data_s[12];
  assign data_p[11] = data_s[11];
  assign data_p[10] = data_s[10];
  assign data_p[9] = data_s[9];
  assign data_p[8] = data_s[8];
  assign data_p[7] = data_s[7];
  assign data_p[6] = data_s[6];
  assign data_p[5] = data_s[5];
  assign data_p[4] = data_s[4];
  assign data_p[3] = data_s[3];
  assign data_p[2] = data_s[2];
  assign data_p[1] = data_s[1];
  assign data_p[0] = data_s[0];
  assign data_valid_p = data_valid_s;
  assign data_ready_s = data_ready_p;

endmodule


module PostProcessor_2 ( clk, rst, bdo, bdo_valid, bdo_ready, end_of_block, 
        bdo_type, bdo_valid_bytes, msg_auth, msg_auth_ready, msg_auth_valid, 
        cmd, cmd_valid, cmd_ready, do_data, do_valid, do_last, do_ready );
  input [31:0] bdo;
  input [3:0] bdo_type;
  input [3:0] bdo_valid_bytes;
  input [31:0] cmd;
  output [31:0] do_data;
  input clk, rst, bdo_valid, end_of_block, msg_auth, msg_auth_valid, cmd_valid,
         do_ready;
  output bdo_ready, msg_auth_ready, cmd_ready, do_valid, do_last;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, cmd_31, cmd_30, cmd_29,
         cmd_28, cmd_25, N39, len_SegLenCnt, en_SegLenCnt, N40,
         last_flit_of_segment, eot, decrypt, bdo_ready_p, bdo_valid_p, N41,
         N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97,
         N98, N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109,
         N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142,
         N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153,
         N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164,
         N165, N166, N167, N168, N169, N170, N171, N172, N173, N174, N175,
         N176, N177, N178, N179, N180, N181, N182, N183, N184, N185, N186,
         N187, N188, N189, N190, N191, N192, N193, N194, N195, N196, N197,
         N198, N199, N200, N201, N202, N203, N204, N205, N206;
  wire   [31:0] bdo_cleared;
  wire   [31:0] do_data_internal;
  wire   [15:0] dout_SegLenCnt;
  wire   [31:0] bdo_p;
  wire   [3:0] pr_state;
  wire   [3:0] nx_state;
  assign cmd_31 = cmd[31];
  assign cmd_30 = cmd[30];
  assign cmd_29 = cmd[29];
  assign cmd_28 = cmd[28];
  assign cmd_25 = cmd[25];

  StepDownCountLd_N16_step4_2 SegLen ( .clk(clk), .len(len_SegLenCnt), .ena(
        en_SegLenCnt), .load(cmd[15:0]), .count(dout_SegLenCnt) );
  LEQ_UNS_OP lte_146 ( .A(dout_SegLenCnt), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0}), 
        .Z(N40) );
  \**SEQGEN**  eot_reg ( .clear(1'b0), .preset(1'b0), .next_state(cmd_25), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(eot), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N170) );
  \**SEQGEN**  decrypt_reg ( .clear(1'b0), .preset(1'b0), .next_state(cmd_28), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(decrypt), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N182) );
  DATA_SIPO_2 bdoSIPO ( .clk(clk), .rst(rst), .end_of_input(end_of_block), 
        .data_p(bdo_p), .data_valid_p(bdo_valid_p), .data_ready_p(bdo_ready_p), 
        .data_s(bdo_cleared), .data_valid_s(bdo_valid), .data_ready_s(
        bdo_ready) );
  \**SEQGEN**  \pr_state_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N45), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(pr_state[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N184) );
  \**SEQGEN**  \pr_state_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N44), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(pr_state[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N184) );
  \**SEQGEN**  \pr_state_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N43), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(pr_state[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N184) );
  \**SEQGEN**  \pr_state_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        N42), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(pr_state[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N184) );
  GTECH_AND2 C150 ( .A(N46), .B(N47), .Z(N50) );
  GTECH_AND2 C151 ( .A(N48), .B(N49), .Z(N51) );
  GTECH_AND2 C152 ( .A(N50), .B(N51), .Z(N52) );
  GTECH_OR2 C154 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N53) );
  GTECH_OR2 C155 ( .A(pr_state[1]), .B(N49), .Z(N54) );
  GTECH_OR2 C156 ( .A(N53), .B(N54), .Z(N55) );
  GTECH_OR2 C159 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N57) );
  GTECH_OR2 C160 ( .A(N48), .B(pr_state[0]), .Z(N58) );
  GTECH_OR2 C161 ( .A(N57), .B(N58), .Z(N59) );
  GTECH_OR2 C165 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N61) );
  GTECH_OR2 C166 ( .A(N48), .B(N49), .Z(N62) );
  GTECH_OR2 C167 ( .A(N61), .B(N62), .Z(N63) );
  GTECH_OR2 C170 ( .A(pr_state[3]), .B(N47), .Z(N65) );
  GTECH_OR2 C171 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N66) );
  GTECH_OR2 C172 ( .A(N65), .B(N66), .Z(N67) );
  GTECH_OR2 C176 ( .A(pr_state[3]), .B(N47), .Z(N69) );
  GTECH_OR2 C177 ( .A(pr_state[1]), .B(N49), .Z(N70) );
  GTECH_OR2 C178 ( .A(N69), .B(N70), .Z(N71) );
  GTECH_OR2 C182 ( .A(pr_state[3]), .B(N47), .Z(N73) );
  GTECH_OR2 C183 ( .A(N48), .B(pr_state[0]), .Z(N74) );
  GTECH_OR2 C184 ( .A(N73), .B(N74), .Z(N75) );
  GTECH_OR2 C189 ( .A(pr_state[3]), .B(N47), .Z(N77) );
  GTECH_OR2 C190 ( .A(N48), .B(N49), .Z(N78) );
  GTECH_OR2 C191 ( .A(N77), .B(N78), .Z(N79) );
  GTECH_OR2 C194 ( .A(N46), .B(pr_state[2]), .Z(N81) );
  GTECH_OR2 C195 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N82) );
  GTECH_OR2 C196 ( .A(N81), .B(N82), .Z(N83) );
  GTECH_OR2 C200 ( .A(N46), .B(pr_state[2]), .Z(N85) );
  GTECH_OR2 C201 ( .A(pr_state[1]), .B(N49), .Z(N86) );
  GTECH_OR2 C202 ( .A(N85), .B(N86), .Z(N87) );
  GTECH_AND2 C204 ( .A(pr_state[3]), .B(pr_state[1]), .Z(N89) );
  GTECH_AND2 C205 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N90) );
  GTECH_AND2 C384 ( .A(N46), .B(N47), .Z(N116) );
  GTECH_AND2 C385 ( .A(N48), .B(N49), .Z(N117) );
  GTECH_AND2 C386 ( .A(N116), .B(N117), .Z(N118) );
  GTECH_OR2 C388 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N119) );
  GTECH_OR2 C389 ( .A(pr_state[1]), .B(N49), .Z(N120) );
  GTECH_OR2 C390 ( .A(N119), .B(N120), .Z(N121) );
  GTECH_OR2 C393 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N123) );
  GTECH_OR2 C394 ( .A(N48), .B(pr_state[0]), .Z(N124) );
  GTECH_OR2 C395 ( .A(N123), .B(N124), .Z(N125) );
  GTECH_OR2 C399 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N127) );
  GTECH_OR2 C400 ( .A(N48), .B(N49), .Z(N128) );
  GTECH_OR2 C401 ( .A(N127), .B(N128), .Z(N129) );
  GTECH_OR2 C404 ( .A(pr_state[3]), .B(N47), .Z(N131) );
  GTECH_OR2 C405 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N132) );
  GTECH_OR2 C406 ( .A(N131), .B(N132), .Z(N133) );
  GTECH_OR2 C410 ( .A(pr_state[3]), .B(N47), .Z(N135) );
  GTECH_OR2 C411 ( .A(pr_state[1]), .B(N49), .Z(N136) );
  GTECH_OR2 C412 ( .A(N135), .B(N136), .Z(N137) );
  GTECH_OR2 C416 ( .A(pr_state[3]), .B(N47), .Z(N139) );
  GTECH_OR2 C417 ( .A(N48), .B(pr_state[0]), .Z(N140) );
  GTECH_OR2 C418 ( .A(N139), .B(N140), .Z(N141) );
  GTECH_OR2 C423 ( .A(pr_state[3]), .B(N47), .Z(N143) );
  GTECH_OR2 C424 ( .A(N48), .B(N49), .Z(N144) );
  GTECH_OR2 C425 ( .A(N143), .B(N144), .Z(N145) );
  GTECH_OR2 C428 ( .A(N46), .B(pr_state[2]), .Z(N147) );
  GTECH_OR2 C429 ( .A(pr_state[1]), .B(pr_state[0]), .Z(N148) );
  GTECH_OR2 C430 ( .A(N147), .B(N148), .Z(N149) );
  GTECH_OR2 C434 ( .A(N46), .B(pr_state[2]), .Z(N151) );
  GTECH_OR2 C435 ( .A(pr_state[1]), .B(N49), .Z(N152) );
  GTECH_OR2 C436 ( .A(N151), .B(N152), .Z(N153) );
  GTECH_AND2 C438 ( .A(pr_state[3]), .B(pr_state[1]), .Z(N155) );
  GTECH_AND2 C439 ( .A(pr_state[3]), .B(pr_state[2]), .Z(N156) );
  GTECH_NOT I_0 ( .A(cmd_31), .Z(N185) );
  GTECH_OR2 C553 ( .A(cmd_30), .B(N185), .Z(N186) );
  GTECH_OR2 C554 ( .A(cmd_29), .B(N186), .Z(N187) );
  GTECH_OR2 C555 ( .A(cmd_28), .B(N187), .Z(N188) );
  GTECH_OR2 C557 ( .A(cmd[14]), .B(cmd[15]), .Z(N189) );
  GTECH_OR2 C558 ( .A(cmd[13]), .B(N189), .Z(N190) );
  GTECH_OR2 C559 ( .A(cmd[12]), .B(N190), .Z(N191) );
  GTECH_OR2 C560 ( .A(cmd[11]), .B(N191), .Z(N192) );
  GTECH_OR2 C561 ( .A(cmd[10]), .B(N192), .Z(N193) );
  GTECH_OR2 C562 ( .A(cmd[9]), .B(N193), .Z(N194) );
  GTECH_OR2 C563 ( .A(cmd[8]), .B(N194), .Z(N195) );
  GTECH_OR2 C564 ( .A(cmd[7]), .B(N195), .Z(N196) );
  GTECH_OR2 C565 ( .A(cmd[6]), .B(N196), .Z(N197) );
  GTECH_OR2 C566 ( .A(cmd[5]), .B(N197), .Z(N198) );
  GTECH_OR2 C567 ( .A(cmd[4]), .B(N198), .Z(N199) );
  GTECH_OR2 C568 ( .A(cmd[3]), .B(N199), .Z(N200) );
  GTECH_OR2 C569 ( .A(cmd[2]), .B(N200), .Z(N201) );
  GTECH_OR2 C570 ( .A(cmd[1]), .B(N201), .Z(N202) );
  GTECH_OR2 C571 ( .A(cmd[0]), .B(N202), .Z(N203) );
  GTECH_NOT I_1 ( .A(N203), .Z(N204) );
  SELECT_OP C609 ( .DATA1(do_data_internal), .DATA2({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N0), .CONTROL2(N1), .Z(do_data) );
  GTECH_BUF B_0 ( .A(do_valid), .Z(N0) );
  GTECH_BUF B_1 ( .A(N39), .Z(N1) );
  SELECT_OP C610 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(nx_state), 
        .CONTROL1(N2), .CONTROL2(N3), .Z({N45, N44, N43, N42}) );
  GTECH_BUF B_2 ( .A(rst), .Z(N2) );
  GTECH_BUF B_3 ( .A(N41), .Z(N3) );
  SELECT_OP C612 ( .DATA1(N188), .DATA2(1'b0), .CONTROL1(N4), .CONTROL2(N5), 
        .Z(N93) );
  GTECH_BUF B_4 ( .A(cmd_valid), .Z(N4) );
  GTECH_BUF B_5 ( .A(N92), .Z(N5) );
  GTECH_NOT I_2 ( .A(N94), .Z(N95) );
  SELECT_OP C614 ( .DATA1(decrypt), .DATA2(1'b0), .CONTROL1(N6), .CONTROL2(N7), 
        .Z(N98) );
  GTECH_BUF B_6 ( .A(N204), .Z(N6) );
  GTECH_BUF B_7 ( .A(N203), .Z(N7) );
  SELECT_OP C615 ( .DATA1({N98, N204}), .DATA2({1'b1, 1'b1}), .CONTROL1(N8), 
        .CONTROL2(N97), .Z({N100, N99}) );
  GTECH_BUF B_8 ( .A(N96), .Z(N8) );
  SELECT_OP C616 ( .DATA1(decrypt), .DATA2(1'b1), .CONTROL1(N9), .CONTROL2(N10), .Z(N105) );
  GTECH_BUF B_9 ( .A(eot), .Z(N9) );
  GTECH_BUF B_10 ( .A(N104), .Z(N10) );
  SELECT_OP C617 ( .DATA1({eot, N105}), .DATA2({1'b1, 1'b0}), .CONTROL1(N11), 
        .CONTROL2(N12), .Z({N107, N106}) );
  GTECH_BUF B_11 ( .A(last_flit_of_segment), .Z(N11) );
  GTECH_BUF B_12 ( .A(N103), .Z(N12) );
  SELECT_OP C618 ( .DATA1({N107, N106, last_flit_of_segment}), .DATA2({1'b1, 
        1'b0, 1'b0}), .CONTROL1(N13), .CONTROL2(N102), .Z({N110, N109, N108})
         );
  GTECH_BUF B_13 ( .A(N101), .Z(N13) );
  GTECH_NOT I_3 ( .A(N111), .Z(N112) );
  SELECT_OP C620 ( .DATA1(msg_auth), .DATA2(1'b1), .CONTROL1(N14), .CONTROL2(
        N15), .Z(N114) );
  GTECH_BUF B_14 ( .A(msg_auth_valid), .Z(N14) );
  GTECH_BUF B_15 ( .A(N113), .Z(N15) );
  SELECT_OP C621 ( .DATA1({1'b0, 1'b0, N93, cmd_valid}), .DATA2({1'b0, 1'b0, 
        do_ready, N115}), .DATA3({N94, 1'b0, N95, N94}), .DATA4({1'b0, N96, 
        N100, N99}), .DATA5({1'b0, N110, N109, N108}), .DATA6({1'b0, 1'b1, 
        do_ready, N115}), .DATA7({N111, N112, N112, N111}), .DATA8({
        msg_auth_valid, N113, N113, N114}), .DATA9({N115, 1'b0, 1'b0, 1'b0}), 
        .DATA10({N115, 1'b0, 1'b0, N115}), .CONTROL1(N16), .CONTROL2(N17), 
        .CONTROL3(N18), .CONTROL4(N19), .CONTROL5(N20), .CONTROL6(N21), 
        .CONTROL7(N22), .CONTROL8(N23), .CONTROL9(N24), .CONTROL10(N25), .Z(
        nx_state) );
  GTECH_BUF B_16 ( .A(N52), .Z(N16) );
  GTECH_BUF B_17 ( .A(N56), .Z(N17) );
  GTECH_BUF B_18 ( .A(N60), .Z(N18) );
  GTECH_BUF B_19 ( .A(N64), .Z(N19) );
  GTECH_BUF B_20 ( .A(N68), .Z(N20) );
  GTECH_BUF B_21 ( .A(N72), .Z(N21) );
  GTECH_BUF B_22 ( .A(N76), .Z(N22) );
  GTECH_BUF B_23 ( .A(N80), .Z(N23) );
  GTECH_BUF B_24 ( .A(N84), .Z(N24) );
  GTECH_BUF B_25 ( .A(N88), .Z(N25) );
  SELECT_OP C622 ( .DATA1(cmd_25), .DATA2(1'b0), .CONTROL1(N26), .CONTROL2(N27), .Z(N160) );
  GTECH_BUF B_26 ( .A(decrypt), .Z(N26) );
  GTECH_BUF B_27 ( .A(N159), .Z(N27) );
  SELECT_OP C623 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .DATA4(do_ready), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b0), .DATA11(1'b0), .CONTROL1(N28), .CONTROL2(N29), 
        .CONTROL3(N30), .CONTROL4(N31), .CONTROL5(N32), .CONTROL6(N33), 
        .CONTROL7(N34), .CONTROL8(N35), .CONTROL9(N36), .CONTROL10(N37), 
        .CONTROL11(N38), .Z(cmd_ready) );
  GTECH_BUF B_28 ( .A(N118), .Z(N28) );
  GTECH_BUF B_29 ( .A(N122), .Z(N29) );
  GTECH_BUF B_30 ( .A(N126), .Z(N30) );
  GTECH_BUF B_31 ( .A(N130), .Z(N31) );
  GTECH_BUF B_32 ( .A(N134), .Z(N32) );
  GTECH_BUF B_33 ( .A(N138), .Z(N33) );
  GTECH_BUF B_34 ( .A(N142), .Z(N34) );
  GTECH_BUF B_35 ( .A(N146), .Z(N35) );
  GTECH_BUF B_36 ( .A(N150), .Z(N36) );
  GTECH_BUF B_37 ( .A(N154), .Z(N37) );
  GTECH_BUF B_38 ( .A(N157), .Z(N38) );
  SELECT_OP C624 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(bdo_valid_p), .DATA4(
        cmd_valid), .DATA5(bdo_valid_p), .DATA6(1'b1), .DATA7(bdo_valid_p), 
        .DATA8(1'b0), .DATA9(1'b1), .DATA10(1'b1), .DATA11(1'b0), .CONTROL1(
        N28), .CONTROL2(N29), .CONTROL3(N30), .CONTROL4(N31), .CONTROL5(N32), 
        .CONTROL6(N33), .CONTROL7(N34), .CONTROL8(N35), .CONTROL9(N36), 
        .CONTROL10(N37), .CONTROL11(N38), .Z(do_valid) );
  SELECT_OP C625 ( .DATA1({1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2(bdo_p), .DATA3({1'b0, 1'b1, 1'b0, N159, 1'b0, 1'b0, cmd_25, N160, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, cmd[15:0]}), .DATA4(
        bdo_p), .DATA5({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA6(bdo_p), .DATA7({1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA8({1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CONTROL1(N29), 
        .CONTROL2(N30), .CONTROL3(N31), .CONTROL4(N32), .CONTROL5(N33), 
        .CONTROL6(N34), .CONTROL7(N36), .CONTROL8(N37), .Z(do_data_internal)
         );
  SELECT_OP C626 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(do_ready), .DATA4(1'b0), 
        .DATA5(do_ready), .DATA6(1'b0), .DATA7(do_ready), .DATA8(1'b0), 
        .DATA9(1'b0), .DATA10(1'b0), .DATA11(1'b0), .CONTROL1(N28), .CONTROL2(
        N29), .CONTROL3(N30), .CONTROL4(N31), .CONTROL5(N32), .CONTROL6(N33), 
        .CONTROL7(N34), .CONTROL8(N35), .CONTROL9(N36), .CONTROL10(N37), 
        .CONTROL11(N38), .Z(bdo_ready_p) );
  SELECT_OP C627 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(N158), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b0), .DATA11(1'b0), .CONTROL1(N28), .CONTROL2(N29), 
        .CONTROL3(N30), .CONTROL4(N31), .CONTROL5(N32), .CONTROL6(N33), 
        .CONTROL7(N34), .CONTROL8(N35), .CONTROL9(N36), .CONTROL10(N37), 
        .CONTROL11(N38), .Z(len_SegLenCnt) );
  SELECT_OP C628 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(N101), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b0), 
        .DATA10(1'b0), .DATA11(1'b0), .CONTROL1(N28), .CONTROL2(N29), 
        .CONTROL3(N30), .CONTROL4(N31), .CONTROL5(N32), .CONTROL6(N33), 
        .CONTROL7(N34), .CONTROL8(N35), .CONTROL9(N36), .CONTROL10(N37), 
        .CONTROL11(N38), .Z(en_SegLenCnt) );
  SELECT_OP C629 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b1), .DATA9(1'b0), 
        .DATA10(1'b0), .DATA11(1'b0), .CONTROL1(N28), .CONTROL2(N29), 
        .CONTROL3(N30), .CONTROL4(N31), .CONTROL5(N32), .CONTROL6(N33), 
        .CONTROL7(N34), .CONTROL8(N35), .CONTROL9(N36), .CONTROL10(N37), 
        .CONTROL11(N38), .Z(msg_auth_ready) );
  SELECT_OP C630 ( .DATA1(1'b0), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .DATA6(1'b0), .DATA7(1'b0), .DATA8(1'b0), .DATA9(1'b1), 
        .DATA10(1'b1), .DATA11(1'b0), .CONTROL1(N28), .CONTROL2(N29), 
        .CONTROL3(N30), .CONTROL4(N31), .CONTROL5(N32), .CONTROL6(N33), 
        .CONTROL7(N34), .CONTROL8(N35), .CONTROL9(N36), .CONTROL10(N37), 
        .CONTROL11(N38), .Z(do_last) );
  GTECH_AND2 C637 ( .A(bdo[31]), .B(bdo_valid_bytes[3]), .Z(bdo_cleared[31])
         );
  GTECH_AND2 C638 ( .A(bdo[30]), .B(bdo_valid_bytes[3]), .Z(bdo_cleared[30])
         );
  GTECH_AND2 C639 ( .A(bdo[29]), .B(bdo_valid_bytes[3]), .Z(bdo_cleared[29])
         );
  GTECH_AND2 C640 ( .A(bdo[28]), .B(bdo_valid_bytes[3]), .Z(bdo_cleared[28])
         );
  GTECH_AND2 C641 ( .A(bdo[27]), .B(bdo_valid_bytes[3]), .Z(bdo_cleared[27])
         );
  GTECH_AND2 C642 ( .A(bdo[26]), .B(bdo_valid_bytes[3]), .Z(bdo_cleared[26])
         );
  GTECH_AND2 C643 ( .A(bdo[25]), .B(bdo_valid_bytes[3]), .Z(bdo_cleared[25])
         );
  GTECH_AND2 C644 ( .A(bdo[24]), .B(bdo_valid_bytes[3]), .Z(bdo_cleared[24])
         );
  GTECH_AND2 C645 ( .A(bdo[23]), .B(bdo_valid_bytes[2]), .Z(bdo_cleared[23])
         );
  GTECH_AND2 C646 ( .A(bdo[22]), .B(bdo_valid_bytes[2]), .Z(bdo_cleared[22])
         );
  GTECH_AND2 C647 ( .A(bdo[21]), .B(bdo_valid_bytes[2]), .Z(bdo_cleared[21])
         );
  GTECH_AND2 C648 ( .A(bdo[20]), .B(bdo_valid_bytes[2]), .Z(bdo_cleared[20])
         );
  GTECH_AND2 C649 ( .A(bdo[19]), .B(bdo_valid_bytes[2]), .Z(bdo_cleared[19])
         );
  GTECH_AND2 C650 ( .A(bdo[18]), .B(bdo_valid_bytes[2]), .Z(bdo_cleared[18])
         );
  GTECH_AND2 C651 ( .A(bdo[17]), .B(bdo_valid_bytes[2]), .Z(bdo_cleared[17])
         );
  GTECH_AND2 C652 ( .A(bdo[16]), .B(bdo_valid_bytes[2]), .Z(bdo_cleared[16])
         );
  GTECH_AND2 C653 ( .A(bdo[15]), .B(bdo_valid_bytes[1]), .Z(bdo_cleared[15])
         );
  GTECH_AND2 C654 ( .A(bdo[14]), .B(bdo_valid_bytes[1]), .Z(bdo_cleared[14])
         );
  GTECH_AND2 C655 ( .A(bdo[13]), .B(bdo_valid_bytes[1]), .Z(bdo_cleared[13])
         );
  GTECH_AND2 C656 ( .A(bdo[12]), .B(bdo_valid_bytes[1]), .Z(bdo_cleared[12])
         );
  GTECH_AND2 C657 ( .A(bdo[11]), .B(bdo_valid_bytes[1]), .Z(bdo_cleared[11])
         );
  GTECH_AND2 C658 ( .A(bdo[10]), .B(bdo_valid_bytes[1]), .Z(bdo_cleared[10])
         );
  GTECH_AND2 C659 ( .A(bdo[9]), .B(bdo_valid_bytes[1]), .Z(bdo_cleared[9]) );
  GTECH_AND2 C660 ( .A(bdo[8]), .B(bdo_valid_bytes[1]), .Z(bdo_cleared[8]) );
  GTECH_AND2 C661 ( .A(bdo[7]), .B(bdo_valid_bytes[0]), .Z(bdo_cleared[7]) );
  GTECH_AND2 C662 ( .A(bdo[6]), .B(bdo_valid_bytes[0]), .Z(bdo_cleared[6]) );
  GTECH_AND2 C663 ( .A(bdo[5]), .B(bdo_valid_bytes[0]), .Z(bdo_cleared[5]) );
  GTECH_AND2 C664 ( .A(bdo[4]), .B(bdo_valid_bytes[0]), .Z(bdo_cleared[4]) );
  GTECH_AND2 C665 ( .A(bdo[3]), .B(bdo_valid_bytes[0]), .Z(bdo_cleared[3]) );
  GTECH_AND2 C666 ( .A(bdo[2]), .B(bdo_valid_bytes[0]), .Z(bdo_cleared[2]) );
  GTECH_AND2 C667 ( .A(bdo[1]), .B(bdo_valid_bytes[0]), .Z(bdo_cleared[1]) );
  GTECH_AND2 C668 ( .A(bdo[0]), .B(bdo_valid_bytes[0]), .Z(bdo_cleared[0]) );
  GTECH_NOT I_4 ( .A(do_valid), .Z(N39) );
  GTECH_BUF B_39 ( .A(N40), .Z(last_flit_of_segment) );
  GTECH_NOT I_5 ( .A(rst), .Z(N41) );
  GTECH_NOT I_6 ( .A(pr_state[3]), .Z(N46) );
  GTECH_NOT I_7 ( .A(pr_state[2]), .Z(N47) );
  GTECH_NOT I_8 ( .A(pr_state[1]), .Z(N48) );
  GTECH_NOT I_9 ( .A(pr_state[0]), .Z(N49) );
  GTECH_NOT I_10 ( .A(N55), .Z(N56) );
  GTECH_NOT I_11 ( .A(N59), .Z(N60) );
  GTECH_NOT I_12 ( .A(N63), .Z(N64) );
  GTECH_NOT I_13 ( .A(N67), .Z(N68) );
  GTECH_NOT I_14 ( .A(N71), .Z(N72) );
  GTECH_NOT I_15 ( .A(N75), .Z(N76) );
  GTECH_NOT I_16 ( .A(N79), .Z(N80) );
  GTECH_NOT I_17 ( .A(N83), .Z(N84) );
  GTECH_NOT I_18 ( .A(N87), .Z(N88) );
  GTECH_OR2 C704 ( .A(N89), .B(N90), .Z(N91) );
  GTECH_NOT I_19 ( .A(cmd_valid), .Z(N92) );
  GTECH_AND2 C720 ( .A(N205), .B(end_of_block), .Z(N94) );
  GTECH_AND2 C721 ( .A(bdo_valid_p), .B(do_ready), .Z(N205) );
  GTECH_AND2 C723 ( .A(cmd_valid), .B(do_ready), .Z(N96) );
  GTECH_NOT I_20 ( .A(N96), .Z(N97) );
  GTECH_AND2 C729 ( .A(bdo_valid_p), .B(do_ready), .Z(N101) );
  GTECH_NOT I_21 ( .A(N101), .Z(N102) );
  GTECH_NOT I_22 ( .A(last_flit_of_segment), .Z(N103) );
  GTECH_NOT I_23 ( .A(eot), .Z(N104) );
  GTECH_AND2 C739 ( .A(N206), .B(do_ready), .Z(N111) );
  GTECH_AND2 C740 ( .A(bdo_valid_p), .B(end_of_block), .Z(N206) );
  GTECH_NOT I_24 ( .A(msg_auth_valid), .Z(N113) );
  GTECH_NOT I_25 ( .A(do_ready), .Z(N115) );
  GTECH_NOT I_26 ( .A(N121), .Z(N122) );
  GTECH_NOT I_27 ( .A(N125), .Z(N126) );
  GTECH_NOT I_28 ( .A(N129), .Z(N130) );
  GTECH_NOT I_29 ( .A(N133), .Z(N134) );
  GTECH_NOT I_30 ( .A(N137), .Z(N138) );
  GTECH_NOT I_31 ( .A(N141), .Z(N142) );
  GTECH_NOT I_32 ( .A(N145), .Z(N146) );
  GTECH_NOT I_33 ( .A(N149), .Z(N150) );
  GTECH_NOT I_34 ( .A(N153), .Z(N154) );
  GTECH_OR2 C777 ( .A(N155), .B(N156), .Z(N157) );
  GTECH_AND2 C789 ( .A(do_ready), .B(cmd_valid), .Z(N158) );
  GTECH_NOT I_35 ( .A(decrypt), .Z(N159) );
  GTECH_OR2 C793 ( .A(N118), .B(N122), .Z(N161) );
  GTECH_OR2 C794 ( .A(N161), .B(N126), .Z(N162) );
  GTECH_OR2 C795 ( .A(N162), .B(N134), .Z(N163) );
  GTECH_OR2 C796 ( .A(N163), .B(N138), .Z(N164) );
  GTECH_OR2 C797 ( .A(N164), .B(N142), .Z(N165) );
  GTECH_OR2 C798 ( .A(N165), .B(N146), .Z(N166) );
  GTECH_OR2 C799 ( .A(N166), .B(N150), .Z(N167) );
  GTECH_OR2 C800 ( .A(N167), .B(N154), .Z(N168) );
  GTECH_OR2 C801 ( .A(N168), .B(N157), .Z(N169) );
  GTECH_NOT I_36 ( .A(N169), .Z(N170) );
  GTECH_AND2 C803 ( .A(N92), .B(N118), .Z(N171) );
  GTECH_OR2 C804 ( .A(N171), .B(N122), .Z(N172) );
  GTECH_OR2 C805 ( .A(N172), .B(N126), .Z(N173) );
  GTECH_OR2 C806 ( .A(N173), .B(N130), .Z(N174) );
  GTECH_OR2 C807 ( .A(N174), .B(N134), .Z(N175) );
  GTECH_OR2 C808 ( .A(N175), .B(N138), .Z(N176) );
  GTECH_OR2 C809 ( .A(N176), .B(N142), .Z(N177) );
  GTECH_OR2 C810 ( .A(N177), .B(N146), .Z(N178) );
  GTECH_OR2 C811 ( .A(N178), .B(N150), .Z(N179) );
  GTECH_OR2 C812 ( .A(N179), .B(N154), .Z(N180) );
  GTECH_OR2 C813 ( .A(N180), .B(N157), .Z(N181) );
  GTECH_NOT I_37 ( .A(N181), .Z(N182) );
  GTECH_AND2 C815 ( .A(N91), .B(N41), .Z(N183) );
  GTECH_NOT I_38 ( .A(N183), .Z(N184) );
endmodule


module LWC_1 ( clk, rst, pdi_data, pdi_valid, pdi_ready, sdi_data, sdi_valid, 
        sdi_ready, do_data, do_ready, do_valid, do_last );
  input [31:0] pdi_data;
  input [31:0] sdi_data;
  output [31:0] do_data;
  input clk, rst, pdi_valid, sdi_valid, do_ready;
  output pdi_ready, sdi_ready, do_valid, do_last;
  wire   key_valid_cipher_in, key_ready_cipher_in, bdi_valid_cipher_in,
         bdi_ready_cipher_in, bdi_eot_cipher_in, bdi_eoi_cipher_in,
         decrypt_cipher_in, hash_cipher_in, key_update_cipher_in,
         cmd_valid_FIFO_in, cmd_ready_FIFO_in, bdo_valid_cipher_out,
         bdo_ready_cipher_out, end_of_block_cipher_out, msg_auth_valid,
         msg_auth_ready, msg_auth, cmd_valid_FIFO_out, cmd_ready_FIFO_out;
  wire   [31:0] key_cipher_in;
  wire   [31:0] bdi_cipher_in;
  wire   [3:0] bdi_pad_loc_cipher_in;
  wire   [3:0] bdi_valid_bytes_cipher_in;
  wire   [2:0] bdi_size_cipher_in;
  wire   [3:0] bdi_type_cipher_in;
  wire   [31:0] cmd_FIFO_in;
  wire   [31:0] bdo_cipher_out;
  wire   [3:0] bdo_type_cipher_out;
  wire   [3:0] bdo_valid_bytes_cipher_out;
  wire   [31:0] cmd_FIFO_out;

  PreProcessor_2 Inst_PreProcessor ( .clk(clk), .rst(rst), .pdi_data(pdi_data), 
        .pdi_valid(pdi_valid), .pdi_ready(pdi_ready), .sdi_data(sdi_data), 
        .sdi_valid(sdi_valid), .sdi_ready(sdi_ready), .key(key_cipher_in), 
        .key_valid(key_valid_cipher_in), .key_ready(key_ready_cipher_in), 
        .bdi(bdi_cipher_in), .bdi_valid(bdi_valid_cipher_in), .bdi_ready(
        bdi_ready_cipher_in), .bdi_pad_loc(bdi_pad_loc_cipher_in), 
        .bdi_valid_bytes(bdi_valid_bytes_cipher_in), .bdi_size(
        bdi_size_cipher_in), .bdi_eot(bdi_eot_cipher_in), .bdi_eoi(
        bdi_eoi_cipher_in), .bdi_type(bdi_type_cipher_in), .decrypt(
        decrypt_cipher_in), .hash(hash_cipher_in), .key_update(
        key_update_cipher_in), .cmd(cmd_FIFO_in), .cmd_valid(cmd_valid_FIFO_in), .cmd_ready(cmd_ready_FIFO_in) );
  CryptoCore_2 Inst_Cipher ( .clk(clk), .rst(rst), .key(key_cipher_in), 
        .key_valid(key_valid_cipher_in), .key_ready(key_ready_cipher_in), 
        .bdi(bdi_cipher_in), .bdi_valid(bdi_valid_cipher_in), .bdi_ready(
        bdi_ready_cipher_in), .bdi_pad_loc(bdi_pad_loc_cipher_in), 
        .bdi_valid_bytes(bdi_valid_bytes_cipher_in), .bdi_size(
        bdi_size_cipher_in), .bdi_eot(bdi_eot_cipher_in), .bdi_eoi(
        bdi_eoi_cipher_in), .bdi_type(bdi_type_cipher_in), .decrypt_in(
        decrypt_cipher_in), .key_update(key_update_cipher_in), .hash_in(
        hash_cipher_in), .bdo(bdo_cipher_out), .bdo_valid(bdo_valid_cipher_out), .bdo_ready(bdo_ready_cipher_out), .bdo_type(bdo_type_cipher_out), 
        .bdo_valid_bytes(bdo_valid_bytes_cipher_out), .end_of_block(
        end_of_block_cipher_out), .msg_auth_valid(msg_auth_valid), 
        .msg_auth_ready(msg_auth_ready), .msg_auth(msg_auth) );
  PostProcessor_2 Inst_PostProcessor ( .clk(clk), .rst(rst), .bdo(
        bdo_cipher_out), .bdo_valid(bdo_valid_cipher_out), .bdo_ready(
        bdo_ready_cipher_out), .end_of_block(end_of_block_cipher_out), 
        .bdo_type(bdo_type_cipher_out), .bdo_valid_bytes(
        bdo_valid_bytes_cipher_out), .msg_auth(msg_auth), .msg_auth_ready(
        msg_auth_ready), .msg_auth_valid(msg_auth_valid), .cmd(cmd_FIFO_out), 
        .cmd_valid(cmd_valid_FIFO_out), .cmd_ready(cmd_ready_FIFO_out), 
        .do_data(do_data), .do_valid(do_valid), .do_last(do_last), .do_ready(
        do_ready) );
  fwft_fifo_G_W32_G_LOG2DEPTH2 Inst_Header_Fifo ( .clk(clk), .rst(rst), .din(
        cmd_FIFO_in), .din_valid(cmd_valid_FIFO_in), .din_ready(
        cmd_ready_FIFO_in), .dout(cmd_FIFO_out), .dout_valid(
        cmd_valid_FIFO_out), .dout_ready(cmd_ready_FIFO_out) );
endmodule

