#set term postscript enhanced color  
set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14 
set output "../OrderParameterIONSchanges.eps"
set size 1.4, 0.85
set multiplot  layout 2,2
set xrange [-1:1050] 
set ytic 0.01
#set key above
set key at screen 0.6,screen 0.8 maxcols 2 maxrows 6
set key font ",13"


set yrange [-0.08:0.01]
set ylabel "{/Symbol b}   {/Symbol D}S_{CH}"
set origin 0,0.35
set size 0.65, 0.35
plot "../../scratch/EXP-Akutsu1981-DPPC-NaClchange.dat"  using 1:($2*-0.00784) title 'DPPC+NaCl, ^2H NMR, T=323K' with linespoints  linetype 1 pt 9 lc rgb 'black', \
     "../../scratch/BERGERnaclCONSchange.dat" using 1:2 title 'POPC+NaCl, Berger, T=298K'  with linespoint linetype 1 pt 9, \
     "../../scratch/BERGERnaclCONSchange.dat" using 1:3 notitle with linespoints  linetype 1 pt 9, \
     "../../scratch/MACROGnaclCONSchange.dat" using 1:2 title 'POPC+NaCl, MacRog, T=310K' with linespoint linetype 1 pt 9 lc rgb 'blue', \
     "../../scratch/MACROGnaclCONSchange.dat" using 1:3 notitle with linespoints  linetype 1 pt 9 lc rgb 'blue', \
     "../../scratch/CHARMMnaclCONSchange.dat" using 1:2 title 'POPC+NaCl, CHARMM, T=303K' with linespoint linetype 1 pt 9 lc rgb 'green', \
     "../../scratch/CHARMMnaclCONSchange.dat" using 1:3 notitle with linespoints  linetype 1 pt 9 lc rgb 'green', \
     "../../scratch/ORANGEnaclCONSchange.dat" using 1:2 title 'POPC+NaCl, Orange, T=298K' with linespoint linetype 1 pt 9 lc rgb 'orange', \
     "../../scratch/ORANGEnaclCONSchange.dat" using 1:3 notitle with linespoints  linetype 1 pt 9 lc rgb 'orange', \
     "../../scratch/SLIPIDSnaclCONSchangeDPPC.dat" using 1:2 title 'DPPC+NaCl, Slipid, T=323K' with linespoint linetype 1 pt 9 lc rgb 'violet', \
     "../../scratch/SLIPIDSnaclCONSchangeDPPC.dat" using 1:3 notitle with linespoints  linetype 1 pt 9 lc rgb 'violet'
#     "SLIPIDSnaclCONSchangePOPC.dat" using 1:2 title 'POPC+NaCl, Slipid, T=323K' with linespoint linetype 1 pt 9 lc rgb 'violet', \
#     "SLIPIDSnaclCONSchangePOPC.dat" using 1:3 notitle with linespoints  linetype 1 pt 9 lc rgb 'violet'

set key at screen 1.3,screen 0.82 maxcols 2 maxrows 5
#set yrange [-0.11:0.05]
#set ylabel "{/Symbol b}  {/Symbol D}S_{CH}"
set origin 0.7,0.35
set size 0.65, 0.35
plot "../../scratch/EXP-Akutsu1981-DPPC-CaClchange-T332.dat"  using 1:($2*-0.00784) title 'DPPC+CaCl_2, ^2H NMR, T=332K' with linespoints  linetype 1 pt 6 lc rgb 'black', \
     "../../scratch/EXP-Akutsu1981-DPPC-CaClchange-T323.dat"  using 1:($2*-0.00784) title 'DPPC+CaCl_2, ^2H NMR, T=323K' with linespoints  linetype 1 pt 7 lc rgb 'black', \
     "../../scratch/BERGERcaclCONSchange.dat" using 1:2 title 'POPC+CaCl_2, Berger, T=298K' with linespoint linetype 1 pt 5 lc rgb 'red', \
     "../../scratch/BERGERcaclCONSchange.dat" using 1:3 notitle with linespoints  linetype 1 pt 5 lc rgb 'red', \
     "../../scratch/ORANGEcaclCONSchange.dat" using 1:2 title 'POPC+CaCl_2, Orange, T=298K' with linespoint linetype 1 pt 5 lc rgb 'orange', \
     "../../scratch/ORANGEcaclCONSchange.dat" using 1:3 notitle with linespoints  linetype 1 pt 5 lc rgb 'orange', \
     "../../scratch/CHARMMcaclCONSchange.dat" using 1:2 title 'POPC+CaCl_2, Orange, T=298K' with linespoint linetype 1 pt 5 lc rgb 'green', \
     "../../scratch/CHARMMcaclCONSchange.dat" using 1:3 notitle with linespoints  linetype 1 pt 5 lc rgb 'green'

#set yrange [-0.015:0.11]
set ylabel "{/Symbol a}  {/Symbol D}S_{CH}"
set xlabel "[NaCl] (mM)"
set origin 0,0
set size 0.65, 0.35
plot "../../scratch/EXP-Akutsu1981-DPPC-NaClchange.dat"  using 1:($3*0.00784) notitle with linespoints  linetype 1 pt 9 lc rgb 'black', \
     "../../scratch/BERGERnaclCONSchange.dat" using 1:4 notitle  with linespoint linetype 1 pt 9, \
     "../../scratch/BERGERnaclCONSchange.dat" using 1:5 notitle with linespoints  linetype 1 pt 9, \
     "../../scratch/MACROGnaclCONSchange.dat" using 1:4 notitle  with linespoint linetype 1 pt 9 lc rgb 'blue' , \
     "../../scratch/MACROGnaclCONSchange.dat" using 1:5 notitle with linespoints  linetype 1 pt 9 lc rgb 'blue', \
     "../../scratch/ORANGEnaclCONSchange.dat" using 1:4 notitle with linespoint linetype 1 pt 9 lc rgb 'orange', \
     "../../scratch/ORANGEnaclCONSchange.dat" using 1:5 notitle with linespoints  linetype 1 pt 9 lc rgb 'orange', \
     "../../scratch/CHARMMnaclCONSchange.dat" using 1:4 notitle with linespoint linetype 1 pt 9 lc rgb 'green', \
     "../../scratch/CHARMMnaclCONSchange.dat" using 1:5 notitle with linespoints  linetype 1 pt 9 lc rgb 'green' ,\
     "../../scratch/SLIPIDSnaclCONSchangeDPPC.dat" using 1:4 notitle with linespoint linetype 1 pt 9 lc rgb 'violet', \
     "../../scratch/SLIPIDSnaclCONSchangeDPPC.dat" using 1:5 notitle with linespoints  linetype 1 pt 9 lc rgb 'violet'
#     "SLIPIDSnaclCONSchangePOPC.dat" using 1:4 notitle with linespoint linetype 1 pt 9 lc rgb 'violet', \
#     "SLIPIDSnaclCONSchangePOPC.dat" using 1:5 notitle with linespoints  linetype 1 pt 9 lc rgb 'violet'


set key at screen 1.3,screen 0.72 maxcols 2 maxrows 6

#set yrange [-0.015:0.11]
#set ylabel "{/Symbol a}  S_{CH}"
set xlabel "[CaCl] (mM)"
set origin 0.7,0
set size 0.65, 0.35
plot "../../scratch/EXP-Akutsu1981-DPPC-CaClchange-T332.dat"  using 1:($3*0.00784) notitle with linespoints  linetype 1 pt 6 lc rgb 'black', \
     "../../scratch/EXP-Akutsu1981-DPPC-CaClchange-T323.dat"  using 1:($3*0.00784) notitle with linespoints  linetype 1 pt 7 lc rgb 'black', \
     "../../scratch/EXP-Altenbach1984-POPC-CaClchange-T313.dat"  using ($1*1000):($2*0.00784) title 'POPC+CaCl_2, ^2H NMR, T=313K' with linespoints  linetype 1 pt 5 lc rgb 'black', \
     "../../scratch/BERGERcaclCONSchange.dat" using 1:4 notitle with linespoint linetype 1 pt 5 lc rgb 'red', \
     "../../scratch/BERGERcaclCONSchange.dat" using 1:5 notitle with linespoints  linetype 1 pt 5 lc rgb 'red', \
     "../../scratch/ORANGEcaclCONSchange.dat" using 1:4 notitle with linespoint linetype 1 pt 5 lc rgb 'orange', \
     "../../scratch/ORANGEcaclCONSchange.dat" using 1:5 notitle with linespoints  linetype 1 pt 5 lc rgb 'orange', \
     "../../scratch/CHARMMcaclCONSchange.dat" using 1:4 notitle with linespoint linetype 1 pt 5 lc rgb 'green', \
     "../../scratch/CHARMMcaclCONSchange.dat" using 1:5 notitle with linespoints  linetype 1 pt 5 lc rgb 'green'


unset multiplot

