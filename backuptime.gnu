#!/usr/bin/gnuplot

set key left top
set term epslatex size 3.5,2.62
set output "backuptime.tex"
set size 3.5/3.5, 2.63/2.62

set yr [0:70]
set style line 1 lc rgb '#dbdbdb' lt 1 lw 2 # --- blue
set style line 2 lc rgb '#62777a' lt 1 lw 2 # --- red
set style line 3 lc rgb '#ffc90e' lt 1 lw 2 # --- yellow
set style line 4 lc rgb '#1e492d' lt 1 lw 2 # --- green
set style line 5 lc rgb '#6198fd' lt 1 lw 2 # --- light blue
set style line 6 lc rgb '#fe5006' lt 1 lw 2 # --- orange

set style fill solid
set boxwidth 0.5

set xtics ("100M" 0.25, "200M" 1.75, "300M" 3.25, "500M" 4.75)

set xlabel 'Count of items in the index'
set ylabel 'Time taken (s)'
set format y '%.0s %c'

plot 'data.dat' every 2    using 1:2 with boxes ls 1 fs pattern 2 title 'Backup',\
     'data.dat' every 2::1 using 1:2 with boxes ls 2 fs pattern 3 title 'Restore'
