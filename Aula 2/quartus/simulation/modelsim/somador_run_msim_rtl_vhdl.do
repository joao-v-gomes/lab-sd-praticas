transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Aluno/Desktop/Lab SD - Joao, Joao, Marcelle/Aula 2/somador.vhd}

vcom -93 -work work {C:/Users/Aluno/Desktop/Lab SD - Joao, Joao, Marcelle/Aula 2/quartus/../tb_somador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_somador

add wave *
view structure
view signals
run 100 ns
