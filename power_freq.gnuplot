set grid

set ylabel "P [mW]"
set xlabel "F [Hz]"

plot "./data/V4012D.csv" using 1:3 title "V4012D" smooth bezier, \
     "./data/CD74HCT00E.csv" using 1:3 title "CD74HCT00E" smooth bezier, \
     "./data/SN74HC00N.csv" using 1:3 title "SN74HC00N" smooth bezier, \
     "./data/SN74HC02N.csv" using 1:3 title "SN74HC02N" smooth bezier