# Set library path
set_db init_lib_search_path /home/install/FOUNDRY/digital/45nm/LIBS/lib/max/

# Set library
set_db library slow.lib

# Read Verilog design
read_hdl {./mux.v}

# Elaborate design
elaborate

# Read constraints file
read_sdc ./constraints_top.sdc

# Synthesis effort settings
set_db syn_generic_effort medium
set_db syn_map_effort     medium
set_db syn_opt_effort     medium

# Run synthesis stages
syn_generic
syn_map
syn_opt

# Write outputs
write_hdl > mux_netlist.v
write_sdc > mux_tool.sdc

# Open GUI (optional)
gui_show

# Reports
report timing > mux_timing.rpt
report power  > mux_power.rpt
report area   > mux_area.rpt
report gates  > mux_gates.rpt
