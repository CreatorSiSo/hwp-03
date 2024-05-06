set datafile separator ";"
set grid

set xrange [0:3]
set xlabel "U_DS [V]"
set ylabel "I_D [A]"

plot "./data/trans2.csv" using 4:7 title "0.2 V" smooth bezier, \
     "./data/trans4.csv" using 4:7 title "0.4 V" smooth bezier, \
     "./data/trans6.csv" using 4:7 title "0.6 V" smooth bezier, \
     "./data/trans7.csv" using 4:7 title "0.7 V" smooth bezier, \
     "./data/trans8.csv" using 4:7 title "0.8 V" smooth bezier, \
     "./data/trans9.csv" using 4:7 title "0.9 V" smooth bezier, \
     "./data/trans10.csv" using 4:7 title "1.0 V" smooth bezier