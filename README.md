iverilog -o hadder2_sim.out tb_2hadder.v hadder2.v
vvp hadder2_sim.out 
gtkwave hadder2_.vcd
