transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Aluno/Desktop/Lab SD - Joao, Joao, Marcelle/Aula 5/quartus/alu.vhd}

vcom -93 -work work {C:/Users/Aluno/Desktop/Lab SD - Joao, Joao, Marcelle/Aula 5/quartus/tb_alu.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_alu

add wave *
view structure
view signals
run 70 ns
