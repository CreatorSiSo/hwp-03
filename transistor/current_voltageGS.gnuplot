set datafile separator ";"
set grid

set xlabel "U_GS [V]"
set ylabel "I_D [A]"

plot "./data/trans220.csv" using 5:7 title "2 V" smooth bezier, \
     "./data/trans230.csv" using 5:7 title "3 V" smooth bezier, \
     "./data/trans240.csv" using 5:7 title "4 V" smooth bezier, \
     "./data/trans250.csv" using 5:7 title "5 V" smooth bezier