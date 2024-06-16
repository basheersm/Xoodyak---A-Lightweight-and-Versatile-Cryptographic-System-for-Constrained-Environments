###################################################################

#

###################################################################
#set sdc_version 1.8
#set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA

set_driving_cell -lib_cell NBUFFX16 -pin Z [get_ports clk]
set_driving_cell -lib_cell SDFFARX1 -pin Q [get_ports rst]



create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_uncertainty 0.4  [get_clocks clk]
set_propagated_clock [get_clocks clk]
set_clock_transition -rise 0.8 [get_clocks clk]
set_clock_transition -fall 0.8 [get_clocks clk]
set_input_delay -clock clk  0.85  [get_ports rst]


