/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12-SP5
// Date      : Wed May 17 13:01:03 2023
/////////////////////////////////////////////////////////////


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
  wire   SYNOPSYS_UNCONNECTED__0;

  PreProcessor Inst_PreProcessor ( .clk(clk), .rst(rst), .pdi_data(pdi_data), 
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
  CryptoCore Inst_Cipher ( .clk(clk), .rst(rst), .key(key_cipher_in), 
        .key_valid(key_valid_cipher_in), .key_ready(key_ready_cipher_in), 
        .bdi(bdi_cipher_in), .bdi_valid(bdi_valid_cipher_in), .bdi_ready(
        bdi_ready_cipher_in), .bdi_pad_loc(bdi_pad_loc_cipher_in), 
        .bdi_valid_bytes(bdi_valid_bytes_cipher_in), .bdi_size(
        bdi_size_cipher_in), .bdi_eot(bdi_eot_cipher_in), .bdi_eoi(
        bdi_eoi_cipher_in), .bdi_type(bdi_type_cipher_in), .decrypt_in(
        decrypt_cipher_in), .key_update(key_update_cipher_in), .hash_in(
        hash_cipher_in), .bdo(bdo_cipher_out), .bdo_valid(bdo_valid_cipher_out), .bdo_ready(bdo_ready_cipher_out), .bdo_type({bdo_type_cipher_out[3:2], 
        SYNOPSYS_UNCONNECTED__0, bdo_type_cipher_out[0]}), .bdo_valid_bytes(
        bdo_valid_bytes_cipher_out), .end_of_block(end_of_block_cipher_out), 
        .msg_auth_valid(msg_auth_valid), .msg_auth_ready(msg_auth_ready), 
        .msg_auth(msg_auth) );
  PostProcessor Inst_PostProcessor ( .clk(clk), .rst(rst), .bdo(bdo_cipher_out), .bdo_valid(bdo_valid_cipher_out), .bdo_ready(bdo_ready_cipher_out), 
        .end_of_block(end_of_block_cipher_out), .bdo_type({
        bdo_type_cipher_out[3:2], 1'b0, bdo_type_cipher_out[0]}), 
        .bdo_valid_bytes(bdo_valid_bytes_cipher_out), .msg_auth(msg_auth), 
        .msg_auth_ready(msg_auth_ready), .msg_auth_valid(msg_auth_valid), 
        .cmd(cmd_FIFO_out), .cmd_valid(cmd_valid_FIFO_out), .cmd_ready(
        cmd_ready_FIFO_out), .do_data(do_data), .do_valid(do_valid), .do_last(
        do_last), .do_ready(do_ready) );
  fwft_fifo_G_W32_G_LOG2DEPTH2 Inst_Header_Fifo ( .clk(clk), .rst(rst), .din(
        cmd_FIFO_in), .din_valid(cmd_valid_FIFO_in), .din_ready(
        cmd_ready_FIFO_in), .dout(cmd_FIFO_out), .dout_valid(
        cmd_valid_FIFO_out), .dout_ready(cmd_ready_FIFO_out) );
endmodule

