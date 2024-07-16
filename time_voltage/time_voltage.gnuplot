set grid

set ylabel "t [ns]"
set xlabel "U [V]"

plot "./time_voltage/MM74C04N.csv" using 1:2 title "MM74C04N" smooth bezier