set grid

set ylabel "P [mW]"
set xlabel "U [V]"

plot "./power_voltage/MM74C04N.csv" using 1:3 title "MM74C04N" smooth bezier