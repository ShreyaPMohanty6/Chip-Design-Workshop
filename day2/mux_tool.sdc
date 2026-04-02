# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Sat Mar 28 10:37:04 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design mux_ff_ex

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_load -pin_load 0.1 [get_ports q]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports i0]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports i1]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports i2]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports i3]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {sel[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports {sel[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports resetn]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports i0]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports i1]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports i2]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports i3]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports {sel[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports {sel[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports resetn]
set_output_delay -clock [get_clocks clk] -add_delay -max 2.0 [get_ports q]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports q]
set_driving_cell -lib_cell INVX1 -library gpdk045bc -pin "Y" [get_ports i0]
set_driving_cell -lib_cell INVX1 -library gpdk045bc -pin "Y" [get_ports i1]
set_driving_cell -lib_cell INVX1 -library gpdk045bc -pin "Y" [get_ports i2]
set_driving_cell -lib_cell INVX1 -library gpdk045bc -pin "Y" [get_ports i3]
set_driving_cell -lib_cell INVX1 -library gpdk045bc -pin "Y" [get_ports resetn]
set_driving_cell -lib_cell INVX1 -library gpdk045bc -pin "Y" [get_ports {sel[1]}]
set_driving_cell -lib_cell INVX1 -library gpdk045bc -pin "Y" [get_ports {sel[0]}]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_clocks clk]
set_clock_uncertainty -hold 0.01 [get_clocks clk]
