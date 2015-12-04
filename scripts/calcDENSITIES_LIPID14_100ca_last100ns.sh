tmpDIRname=LIPID14_100ca_DENStmp
mkdir $tmpDIRname
cd $tmpDIRname
trajname=/work/girychm1/24_11_15/1m_popc_amb/1m_popc_amb_200ns.xtc
tprname=/work/girychm1/24_11_15/1m_popc_amb/1M_CaCl2_POPC_AMB.tpr
mappingFILE=../../MAPPING/mappingPOPClipid14.txt
outFILE=../../Data/POPC/CaCl/LIPID14/100ca/LIPIDdensity_last100ns_cor.xvg
groFILE=/work/girychm1/24_11_15/1m_popc_amb/confout.gro
#trjcat -f popcCHOL50molPER0-25ns.trr popcCHOL50molPER25-50ns.trr
LIPIDname=$(grep M_POPC_M $mappingFILE | awk '{printf "%5s\n",$2}')
LIPIDindexNR=$(echo q | make_ndx -f $tprname | grep $LIPIDname | awk '{if(NR==1)print $1}')
CAname=$(grep M_CA_M $mappingFILE | awk '{printf " %5s\n",$2}')
CAindexNR=$(echo q | make_ndx -f $tprname | grep " CA" | awk '{if(NR==1)print $1}')
CLindexNR=$(echo q | make_ndx -f $tprname | grep " CL" | awk '{if(NR==1)print $1}')
echo $LIPIDindexNR System | trjconv -f $trajname -s $tprname -fit progressive -o ANALtraj.xtc -b 100000
#Ztrans=$(tail -n 1 $groFILE | awk '{print $3/2}')
#echo System | trjconv -f FITtraj.xtc -s $tprname -trans 0 0 $Ztrans -o ANALtraj.xtc
echo $LIPIDindexNR $CAindexNR $CLindexNR | g_density -f ANALtraj.xtc -s $tprname -dens number -o densNC.xvg -xvg none -sl 100 -ng 3
echo System | trjconv -f ANALtraj.xtc -s $tprname -o INBOXtraj.xtc -pbc mol
echo $LIPIDindexNR | g_traj -f INBOXtraj.xtc -s $tprname -ox com.xvg -com -xvg none
Zcom=$(cat com.xvg | awk '{sumZ=sumZ+$4; sum=sum+1}END{print sumZ/sum}')
cat densNC.xvg | awk -v Zcom=$Zcom '{print $1-Zcom" "$2" "$3" "$4}' > $outFILE
ls "$tmpDIRname"/*
rmdir $tmpDIRname

