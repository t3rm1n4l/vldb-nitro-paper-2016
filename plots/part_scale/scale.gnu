#!/usr/bin/gnuplot
reset
set key right bottom
set key samplen 1
set term epslatex size 3.5,2.62
set output "part_plot.tex"

set border linewidth 1.5
set style line 1 lc rgb '#0060ad' lt 1 lw 2 # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 # --- red
set style line 3 lc rgb '#ffc90e' lt 1 lw 2 # --- yellow
set style line 4 lc rgb '#1e492d' lt 1 lw 2 # --- green
set style line 5 lc rgb '#6198fd' lt 1 lw 2 # --- light blue
set style line 6 lc rgb '#fe5006' lt 1 lw 2 # --- orange

set format y '%.0s %c'
set xr [1:4]
set yr [1000000:8000000]
set xlabel 'Number of Partitions'
set ylabel 'Throughput (items/s)'
set tics scale 0.8

plot 'scalability.dat' using 1:2:xticlabel(1) with linespoints ls 1 title 'Insert 16 bytes items/sec'
