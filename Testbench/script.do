transcript on
if {[file exists work]} {
	vdel -lib work -all
}

vlib work
vmap work work

vcom -93 -work work {C:/Users/Wagner/Desktop/Simulacao/Interpolador.vhd}
vcom -93 -work work {C:/Users/Wagner/Desktop/Simulacao/Memory.vhd}
vcom -93 -work work {C:/Users/Wagner/Desktop/Simulacao/Passador.vhd}
vcom -93 -work work {C:/Users/Wagner/Desktop/Simulacao/Upsampling.vhd}
vcom -93 -work work {C:/Users/Wagner/Desktop/Simulacao/Upsampling.vht}

vsim -gui work.Upsampling_vhd_tst

add wave  \
sim:/Upsampling_vhd_tst/clk \
sim:/Upsampling_vhd_tst/newLine \
sim:/Upsampling_vhd_tst/reset \
sim:/Upsampling_vhd_tst/sampleIn \
sim:/Upsampling_vhd_tst/sampleOut1 \
sim:/Upsampling_vhd_tst/sampleOut2 \
sim:/Upsampling_vhd_tst/start \
sim:/Upsampling_vhd_tst/valido

run 100ps