transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/João Gomes/Desktop/UFMG/SD/TP/tp_vhdl_final/compLetra.vhd}
vcom -93 -work work {C:/Users/João Gomes/Desktop/UFMG/SD/TP/tp_vhdl_final/compDigito.vhd}
vcom -93 -work work {C:/Users/João Gomes/Desktop/UFMG/SD/TP/tp_vhdl_final/IdentificaIndividuo.vhd}
vcom -93 -work work {C:/Users/João Gomes/Desktop/UFMG/SD/TP/tp_vhdl_final/Identifica3individuos.vhd}
vcom -93 -work work {C:/Users/João Gomes/Desktop/UFMG/SD/TP/tp_vhdl_final/Cofre_vhdl.vhd}
vcom -93 -work work {C:/Users/João Gomes/Desktop/UFMG/SD/TP/tp_vhdl_final/contador_mod3.vhd}

vcom -93 -work work {C:/Users/João Gomes/Desktop/UFMG/SD/TP/tp_vhdl_final/testeBench_cofre.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  testeBench_cofre

add wave *
view structure
view signals
run 130 ns
