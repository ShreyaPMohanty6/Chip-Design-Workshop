# Clock definition
create_clock -name clk -period 10 -waveform {0 5} [get_ports "clk"]

# Clock transition (slew)
set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]

# Clock uncertainty
set_clock_uncertainty 0.01 [get_clocks "clk"]

# Input delays (relative to clock)
set_input_delay -max 2.0 [get_ports {i0 i1 i2 i3 sel[*] resetn}] -clock [get_clocks "clk"]
set_input_delay -min 0.5 [get_ports {i0 i1 i2 i3 sel[*] resetn}] -clock [get_clocks "clk"]

# Output delays
set_output_delay -max 2.0 [get_ports "q"] -clock [get_clocks "clk"]
set_output_delay -min 0.5 [get_ports "q"] -clock [get_clocks "clk"]

# Driving strength (optional but recommended)
set_driving_cell -lib_cell INVX1 [get_ports {i0 i1 i2 i3 sel[*] resetn}]

# Load on output
set_load 0.1 [get_ports "q"]
