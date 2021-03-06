outfile=../Data/POPC/CaCl/CHARMM36/OPvsCACLcons.dat
rm $outfile
echo "     b1           SD        b2          SD         a1          SD       a2        SD       g11        SD       g12        SD       g2        SD       g31        SD       g32        SD" >> ../Data/POPC/CaCl/CHARMM36/OPvsCACLcons.dat
paste -sd " " ../Data/POPC/NaCl/CHARMM36/0na/OrderParameters.dat > tmp.dat 
awk '{print "0 "$0}' tmp.dat >> $outfile
paste -sd " " ../Data/POPC/CaCl/CHARMM36/26ca/OrderParameters.dat > tmp.dat 
awk '{print "670 "$0}' tmp.dat >> $outfile
rm tmp.dat
