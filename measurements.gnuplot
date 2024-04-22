set datafile separator ";"
set ylabel "U_A_E_0 [V]"
set xlabel "U_A_A_0 [V]"
set grid
plot "measurements.csv" smooth bezier