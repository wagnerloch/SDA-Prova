onerror {quit -f}
vlib work
vlog -work work Passador.vo
vlog -work work Passador.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Passador_vlg_vec_tst
vcd file -direction Passador.msim.vcd
vcd add -internal Passador_vlg_vec_tst/*
vcd add -internal Passador_vlg_vec_tst/i1/*
add wave /*
run -all
