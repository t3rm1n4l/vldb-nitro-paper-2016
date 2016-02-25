#!/usr/bin/gnuplot
reset
set key right bottom
set key samplen 2
set term epslatex size 3.5,2.62
set output "insert_scale_plot.tex"

set border linewidth 1.5
set style line 1 lc rgb '#0060ad' lt 1 lw 2 # --- blue
set style line 2 lc rgb '#dd181f' lt 2 lw 2 # --- red
set style line 3 lc rgb '#ffc90e' lt 3 lw 2 # --- yellow
set style line 4 lc rgb '#1e492d' lt 4 lw 2 # --- green
set style line 5 lc rgb '#6198fd' lt 5 lw 2 # --- light blue
set style line 6 lc rgb '#fe5006' lt 6 lw 2 # --- orange

set xlabel 'Number of cores'
set ylabel 'Throughput (items/s)'
set tics scale 0.8
set format y '%.1s %c'

plot 'scalability.dat' using 1:2 with linespoints ls 1 title 'Insert 8 bytes', \
     ''                using 1:3 with linespoints ls 2 title 'Insert 16 bytes', \
     ''                using 1:4 with linespoints ls 3 title 'Insert 32 bytes', \
     ''                using 1:5 with linespoints ls 4 title 'Insert 64 bytes', \
     ''                using 1:6 with linespoints ls 5 title 'Insert 128 bytes', \
