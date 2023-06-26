vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../cache-memory.gen/sources_1/ip/fifo_generator_1/fifo_generator_1_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

