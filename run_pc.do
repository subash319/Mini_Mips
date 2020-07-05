vlog -reportprogress 300 -work work C:/Users/Subash/Desktop/Verilog_new/Mips_verilog/Mini_Mips/pc.v
vlog -reportprogress 300 -work work C:/Users/Subash/Desktop/Verilog_new/Mips_verilog/Mini_Mips/pc_tb.v
vsim pc_tb
do wave_pc.do
run 200ns