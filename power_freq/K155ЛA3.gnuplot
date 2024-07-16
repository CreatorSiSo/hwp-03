set grid

set ylabel "P [mW]"
set xlabel "F [Hz]"

plot "./power_freq/K155ЛA3.csv" using 1:3 title "K155ЛA3" smooth unique,\
    "./power_freq/K155ЛA3.csv" using 1:3 title ""