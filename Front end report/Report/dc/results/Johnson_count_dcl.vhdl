
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_Johnson_count_1 is

-- define any necessary types
type VHDLOUT_TYPE is array (0 to 7) of std_logic;

end CONV_PACK_Johnson_count_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_Johnson_count_1.all;

entity Johnson_count_1 is

   port( clk, r : in std_logic;  out_port : out VHDLOUT_TYPE);

end Johnson_count_1;

architecture SYN_verilog of Johnson_count_1 is

   component INVX0
      port( INP : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFARX1
      port( D, CLK, RSTB : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal out_0_port, out_1_port, out_2_port, out_3_port, out_4_port, 
      out_5_port, out_6_port, out_7_port, n1, n3, n_1000, n_1001, n_1002, 
      n_1003, n_1004, n_1005, n_1006 : std_logic;

begin
   out_port <= ( out_0_port, out_1_port, out_2_port, out_3_port, out_4_port, 
      out_5_port, out_6_port, out_7_port );
   
   out_reg_7_inst : DFFARX1 port map( D => out_6_port, CLK => clk, RSTB => n1, 
                           Q => out_7_port, QN => n3);
   out_reg_0_inst : DFFARX1 port map( D => n3, CLK => clk, RSTB => n1, Q => 
                           out_0_port, QN => n_1000);
   out_reg_1_inst : DFFARX1 port map( D => out_0_port, CLK => clk, RSTB => n1, 
                           Q => out_1_port, QN => n_1001);
   out_reg_2_inst : DFFARX1 port map( D => out_1_port, CLK => clk, RSTB => n1, 
                           Q => out_2_port, QN => n_1002);
   out_reg_3_inst : DFFARX1 port map( D => out_2_port, CLK => clk, RSTB => n1, 
                           Q => out_3_port, QN => n_1003);
   out_reg_4_inst : DFFARX1 port map( D => out_3_port, CLK => clk, RSTB => n1, 
                           Q => out_4_port, QN => n_1004);
   out_reg_5_inst : DFFARX1 port map( D => out_4_port, CLK => clk, RSTB => n1, 
                           Q => out_5_port, QN => n_1005);
   out_reg_6_inst : DFFARX1 port map( D => out_5_port, CLK => clk, RSTB => n1, 
                           Q => out_6_port, QN => n_1006);
   U3 : INVX0 port map( INP => r, ZN => n1);

end SYN_verilog;
