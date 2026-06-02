# Define the clock signal (assuming a 100 MHz clock)
create_clock -name clk -period 10.0 [get_ports clk]

# Set input delay for inputs a, b, en, and opcode
# Assuming external device drives these signals with respect to clk
set_input_delay -clock clk 2.0 [get_ports a]
set_input_delay -clock clk 2.0 [get_ports b]
set_input_delay -clock clk 2.0 [get_ports en]
set_input_delay -clock clk 2.0 [get_ports opcode]

# Set output delay for result
# Assuming result is captured by an external device with respect to clk
set_output_delay -clock clk 2.0 [get_ports result]

# Optional: Set driving and loading constraints
# Assuming default drive strength and load capacitance
set_drive 2 [get_ports {a b en opcode}]
set_load 5 [get_ports result]

# Optional: Set false path if en=0 disables logic
set_false_path -from [get_ports en] -to [get_ports result]


