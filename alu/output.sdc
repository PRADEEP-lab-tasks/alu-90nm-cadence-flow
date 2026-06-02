# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Sat Aug 09 15:12:06 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design ALU

set_load -pin_load 5.0 [get_ports {result[31]}]
set_load -pin_load 5.0 [get_ports {result[30]}]
set_load -pin_load 5.0 [get_ports {result[29]}]
set_load -pin_load 5.0 [get_ports {result[28]}]
set_load -pin_load 5.0 [get_ports {result[27]}]
set_load -pin_load 5.0 [get_ports {result[26]}]
set_load -pin_load 5.0 [get_ports {result[25]}]
set_load -pin_load 5.0 [get_ports {result[24]}]
set_load -pin_load 5.0 [get_ports {result[23]}]
set_load -pin_load 5.0 [get_ports {result[22]}]
set_load -pin_load 5.0 [get_ports {result[21]}]
set_load -pin_load 5.0 [get_ports {result[20]}]
set_load -pin_load 5.0 [get_ports {result[19]}]
set_load -pin_load 5.0 [get_ports {result[18]}]
set_load -pin_load 5.0 [get_ports {result[17]}]
set_load -pin_load 5.0 [get_ports {result[16]}]
set_load -pin_load 5.0 [get_ports {result[15]}]
set_load -pin_load 5.0 [get_ports {result[14]}]
set_load -pin_load 5.0 [get_ports {result[13]}]
set_load -pin_load 5.0 [get_ports {result[12]}]
set_load -pin_load 5.0 [get_ports {result[11]}]
set_load -pin_load 5.0 [get_ports {result[10]}]
set_load -pin_load 5.0 [get_ports {result[9]}]
set_load -pin_load 5.0 [get_ports {result[8]}]
set_load -pin_load 5.0 [get_ports {result[7]}]
set_load -pin_load 5.0 [get_ports {result[6]}]
set_load -pin_load 5.0 [get_ports {result[5]}]
set_load -pin_load 5.0 [get_ports {result[4]}]
set_load -pin_load 5.0 [get_ports {result[3]}]
set_load -pin_load 5.0 [get_ports {result[2]}]
set_load -pin_load 5.0 [get_ports {result[1]}]
set_load -pin_load 5.0 [get_ports {result[0]}]
set_false_path -from [get_ports en] -to [list \
  [get_ports {result[31]}]  \
  [get_ports {result[30]}]  \
  [get_ports {result[29]}]  \
  [get_ports {result[28]}]  \
  [get_ports {result[27]}]  \
  [get_ports {result[26]}]  \
  [get_ports {result[25]}]  \
  [get_ports {result[24]}]  \
  [get_ports {result[23]}]  \
  [get_ports {result[22]}]  \
  [get_ports {result[21]}]  \
  [get_ports {result[20]}]  \
  [get_ports {result[19]}]  \
  [get_ports {result[18]}]  \
  [get_ports {result[17]}]  \
  [get_ports {result[16]}]  \
  [get_ports {result[15]}]  \
  [get_ports {result[14]}]  \
  [get_ports {result[13]}]  \
  [get_ports {result[12]}]  \
  [get_ports {result[11]}]  \
  [get_ports {result[10]}]  \
  [get_ports {result[9]}]  \
  [get_ports {result[8]}]  \
  [get_ports {result[7]}]  \
  [get_ports {result[6]}]  \
  [get_ports {result[5]}]  \
  [get_ports {result[4]}]  \
  [get_ports {result[3]}]  \
  [get_ports {result[2]}]  \
  [get_ports {result[1]}]  \
  [get_ports {result[0]}] ]
set_clock_gating_check -setup 0.0 
set_drive 2.0 [get_ports a]
set_drive 2.0 [get_ports b]
set_drive 2.0 [get_ports en]
set_drive 2.0 [get_ports {opcode[3]}]
set_drive 2.0 [get_ports {opcode[2]}]
set_drive 2.0 [get_ports {opcode[1]}]
set_drive 2.0 [get_ports {opcode[0]}]
set_wire_load_mode "enclosed"
