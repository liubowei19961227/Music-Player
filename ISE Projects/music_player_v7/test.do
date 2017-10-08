vcom constants.vhd
vcom note_length_counter.vhd
vcom note_player.vhd
vcom main.vhd
vcom testbench.vhw

vsim testbench

add wave -noupdate -format Logic /testbench/uut/clk
add wave -noupdate -format Logic /testbench/uut/s
add wave -noupdate -format Logic -radix Hexadecimal /testbench/uut/main_loop/music_index
add wave -noupdate -format Logic /testbench/uut/is_new_note
add wave -noupdate -format Logic -radix Hexadecimal /testbench/uut/note
add wave -noupdate -format Logic -radix Hexadecimal /testbench/uut/octave
add wave -noupdate -format Logic -radix Hexadecimal /testbench/uut/note_length_in_twelfths

add wave -noupdate -format Logic -radix Decimal /testbench/uut/x_note_player/sample_rate_partial
add wave -noupdate -format Logic -radix Decimal /testbench/uut/x_note_player/index_mult
add wave -noupdate -format Logic -radix Decimal /testbench/uut/x_note_player/sin_table_array_value
add wave -noupdate -format Logic -radix Decimal /testbench/uut/x_note_player/index
add wave -noupdate -format Logic -radix Decimal /testbench/uut/x_note_player/base_index
add wave -noupdate -format Logic -radix Decimal /testbench/uut/x_note_player/overflow_index
#WaveRestoreCursors {{Cursor 1} {0 ps} 0}
#WaveRestoreZoom {0 ps} {500 us}

run -all

echo "Test finished"

