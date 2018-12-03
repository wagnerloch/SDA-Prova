onerror {quit -f}
vlib work
vlog -work work Upsampling.vo
vlog -work work Upsampling.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Upsampling_vlg_vec_tst
vcd file -direction Upsampling.msim.vcd
vcd add -internal Upsampling_vlg_vec_tst/*
vcd add -internal Upsampling_vlg_vec_tst/i1/*
add wave /*
run -all
