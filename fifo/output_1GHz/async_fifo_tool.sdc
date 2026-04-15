# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Wed Apr 15 15:35:19 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design async_fifo

create_clock -name "wclk" -period 1.0 -waveform {0.0 0.5} [get_ports wclk]
set_clock_transition 0.1 [get_clocks wclk]
create_clock -name "rclk" -period 1.0 -waveform {0.0 0.5} [get_ports rclk]
set_clock_transition 0.1 [get_clocks rclk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks wclk] -add_delay -max 0.4 [get_ports wrst_n]
set_input_delay -clock [get_clocks wclk] -add_delay -max 0.4 [get_ports wreq]
set_input_delay -clock [get_clocks wclk] -add_delay -max 0.4 [get_ports {wdata[7]}]
set_input_delay -clock [get_clocks wclk] -add_delay -max 0.4 [get_ports {wdata[6]}]
set_input_delay -clock [get_clocks wclk] -add_delay -max 0.4 [get_ports {wdata[5]}]
set_input_delay -clock [get_clocks wclk] -add_delay -max 0.4 [get_ports {wdata[4]}]
set_input_delay -clock [get_clocks wclk] -add_delay -max 0.4 [get_ports {wdata[3]}]
set_input_delay -clock [get_clocks wclk] -add_delay -max 0.4 [get_ports {wdata[2]}]
set_input_delay -clock [get_clocks wclk] -add_delay -max 0.4 [get_ports {wdata[1]}]
set_input_delay -clock [get_clocks wclk] -add_delay -max 0.4 [get_ports {wdata[0]}]
set_output_delay -clock [get_clocks wclk] -add_delay -max 0.4 [get_ports wfull]
set_input_delay -clock [get_clocks rclk] -add_delay -max 0.4 [get_ports rrst_n]
set_input_delay -clock [get_clocks rclk] -add_delay -max 0.4 [get_ports rreq]
set_output_delay -clock [get_clocks rclk] -add_delay -max 0.4 [get_ports {rdata[7]}]
set_output_delay -clock [get_clocks rclk] -add_delay -max 0.4 [get_ports {rdata[6]}]
set_output_delay -clock [get_clocks rclk] -add_delay -max 0.4 [get_ports {rdata[5]}]
set_output_delay -clock [get_clocks rclk] -add_delay -max 0.4 [get_ports {rdata[4]}]
set_output_delay -clock [get_clocks rclk] -add_delay -max 0.4 [get_ports {rdata[3]}]
set_output_delay -clock [get_clocks rclk] -add_delay -max 0.4 [get_ports {rdata[2]}]
set_output_delay -clock [get_clocks rclk] -add_delay -max 0.4 [get_ports {rdata[1]}]
set_output_delay -clock [get_clocks rclk] -add_delay -max 0.4 [get_ports {rdata[0]}]
set_output_delay -clock [get_clocks rclk] -add_delay -max 0.4 [get_ports rempty]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports wclk]
set_clock_uncertainty -hold 0.01 [get_ports wclk]
set_clock_uncertainty -setup 0.01 [get_ports rclk]
set_clock_uncertainty -hold 0.01 [get_ports rclk]
