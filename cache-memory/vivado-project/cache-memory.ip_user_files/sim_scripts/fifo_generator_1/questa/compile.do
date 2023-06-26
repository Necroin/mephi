vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../cache-memory.gen/sources_1/ip/fifo_generator_1/fifo_generator_1_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

