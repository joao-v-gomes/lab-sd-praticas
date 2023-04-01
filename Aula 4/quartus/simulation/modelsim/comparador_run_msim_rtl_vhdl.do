transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Aluno/Desktop/Lab SD - Joao, Joao, Marcelle/Aula 4/quartus/comparador.vhd}

vcom -93 -work work {C:/Users/Aluno/Desktop/Lab SD - Joao, Joao, Marcelle/Aula 4/quartus/tb_comparador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_comparador

add wave *
view structure
view signals
run 50 ns
