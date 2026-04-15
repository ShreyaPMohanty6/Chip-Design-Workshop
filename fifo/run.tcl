
set_db init_lib_search_path /home/install/FOUNDRY/digital/45nm/LIBS/lib/max



set_db library  /home/user015/Desktop/sscd/day1/45nm_library/lib/slow_vdd1v0_basicCells.lib
read_hdl {./async_fifo.v}
elaborate
read_sdc ./constraints_top.sdc


set_db syn_generic_effort medium
set_db syn_map_effort  medium
set_db syn_opt_effort  medium

syn_generic
syn_map
syn_opt

write_hdl > output_1GHz/async_fifo_netlist.v
write_sdc  > output_1GHz/async_fifo_tool.sdc
   
gui_show

report timing > output_1GHz/async_fifo_timing.rpt
report power > output_1GHz/async_fifo_power.rpt
report area > output_1GHz/async_fifo_cell.rpt
report gates > output_1GHz/async_fifo_gates.rpt
   
