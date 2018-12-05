onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Input
add wave -noupdate /upsampling_vhd_tst/clk
add wave -noupdate /upsampling_vhd_tst/newLine
add wave -noupdate /upsampling_vhd_tst/reset
add wave -noupdate /upsampling_vhd_tst/sampleIn
add wave -noupdate /upsampling_vhd_tst/start
add wave -noupdate -divider Output
add wave -noupdate /upsampling_vhd_tst/sampleOut1
add wave -noupdate /upsampling_vhd_tst/sampleOut2
add wave -noupdate /upsampling_vhd_tst/valido
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {992 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 249
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {672 ps}
