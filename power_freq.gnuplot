set grid

set ylabel "P [mW]"
set xlabel "F [Hz]"

plot "./data/V4012D.csv" using 1:3 title "V4012D" smooth bezier