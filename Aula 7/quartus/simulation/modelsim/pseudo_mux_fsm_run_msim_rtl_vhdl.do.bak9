transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {G:/Meu Drive/Lab SD/Aula 7/quartus/pseudo_mux_fsm.vhd}

vcom -93 -work work {G:/Meu Drive/Lab SD/Aula 7/quartus/tb_pseudo_mux_fsm.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_pseudo_mux_fsm

add wave *
view structure
view signals
run 50 ns
