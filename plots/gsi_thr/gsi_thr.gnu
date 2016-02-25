#!/usr/bin/gnuplot

set key right top
set term epslatex size 3.5,2.62
set output "gsi_throughput.tex"
#set term svg
#set output "/tmp/x.svg"
set size 3.5/3.5, 2.63/2.62

set style line 1 lc rgb '#125688' lt 1 lw 2 # --- blue
set style line 2 lc rgb '#6dc993' lt 1 lw 2 # --- red
set style line 3 lc rgb '#4090db' lt 1 lw 2 # --- yellow
set style line 4 lc rgb '#412d67' lt 1 lw 2 # --- green
set style line 5 lc rgb '#4f4589' lt 1 lw 2 # --- light blue
set style line 6 lc rgb '#4f4589' lt 1 lw 2 # --- orange

set style fill solid
set boxwidth 1

set xtics ("MOI Index" 3, "Regular index" 8)

set yr [0:650000]
set ylabel 'Throughput (items/sec)'
set format y '%.0s %c'

plot 'data.dat' every 5    using 1:2 with boxes ls 1 fs pattern 1 title 'Insert',\
     'data.dat' every 5::1 using 1:2 with boxes ls 2 fs pattern 2 title 'Update', \
     'data.dat' every 5::2 using 1:2 with boxes ls 3 fs pattern 3 title 'Delete', \
     'data.dat' every 5::3 using 1:2 with boxes ls 4 fs pattern 4 title 'Lookup', \
     'data.dat' every 5::4 using 1:2 with boxes ls 5 fs pattern 6 title 'Lookup with updates'
