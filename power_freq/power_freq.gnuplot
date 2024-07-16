set grid

set ylabel "P [mW]"
set xlabel "F [Hz]"

plot "./power_freq/V4012D.csv" using 1:3 title "V4012D" smooth bezier, \
     "./power_freq/CD74HCT00E.csv" using 1:3 title "CD74HCT00E" smooth bezier, \
     "./power_freq/SN74HC00N.csv" using 1:3 title "SN74HC00N" smooth bezier, \
     "./power_freq/SN74HC02N.csv" using 1:3 title "SN74HC02N" smooth bezier, \
     "./power_freq/MM74C04N.csv" using 1:3 title "MM74C04N" smooth bezier