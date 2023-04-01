onerror {quit -f}
vlib work
vlog -work work Cofre_vhdl.vo
vlog -work work Cofre_vhdl.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Cofre_vhdl_vlg_vec_tst
vcd file -direction Cofre_vhdl.msim.vcd
vcd add -internal Cofre_vhdl_vlg_vec_tst/*
vcd add -internal Cofre_vhdl_vlg_vec_tst/i1/*
add wave /*
run -all
