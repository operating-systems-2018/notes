source ./calc_env.sh

# we have now
# grades_final.txt             $final_dst
# grades_homeworks_final.txt   $homeworks_dst
# grades_midterms_final.txt    $midterms_dst
# we have to get
# grades_final_all.txt         $final_all
set -x
while read line
do
  nm=`echo $line | awk {'print $1'} | tr A-Z a-z`
  grf=`echo $line | awk {'print $2'} | cut -f1 -d"."`
  grm=`cat $midterms_dst | grep $nm | awk {'print $2'} | cut -f1 -d"."`
  grh=`cat $homeworks_dst | grep $nm | awk {'print $2'}`
  echo "$nm $grf $grm $grh"

  grf_=`echo "scale=2; $grf / 2" | bc`
  grf_r=`printf '%.*f\n' 0 $grf_`

  grm_=`echo "scale=2; $grm / 4" | bc`
  grm_r=`printf '%.*f\n' 0 $grm_`

  grh_=`echo "scale=2; $grh / 4" | bc`
  grh_r=`printf '%.*f\n' 0 $grh_`
  echo "$nm $grf_r  $grm_r  $grh_r"
  sum=$(( $grf_r + $grm_r + $grh_r ))
  echo "$nm $sum"
  echo "$nm $sum" >> $final_all

done < $final_dst
