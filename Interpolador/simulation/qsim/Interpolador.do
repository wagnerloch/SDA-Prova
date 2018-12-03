onerror {quit -f}
vlib work
vlog -work work Interpolador.vo
vlog -work work Interpolador.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Interpolador_vlg_vec_tst
vcd file -direction Interpolador.msim.vcd
vcd add -internal Interpolador_vlg_vec_tst/*
vcd add -internal Interpolador_vlg_vec_tst/i1/*
add wave /*
run -all
