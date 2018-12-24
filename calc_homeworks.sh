#import envs
source ./calc_env.sh


tonum(){
# grades mapping from https://en.wikipedia.org/wiki/Academic_grading_in_the_United_States#Numerical_and_Letter_Grades
if [ "$1" == "A+" ]; then
   return $(( 100 ))
elif [ "$1" == "A" ]; then
   return $(( 96 ))
elif [ "$1" == "A-" ]; then
   return $(( 92 ))
elif [ "$1" == "B+" ]; then
   return $(( 89 ))
elif [ "$1" == "B" ]; then
   return $(( 86 ))
elif [ "$1" == "B-" ]; then
   return $(( 82 ))
elif [ "$1" == "C+" ]; then
   return $(( 79 ))
elif [ "$1" == "C" ]; then
   return $(( 76 ))
elif [ "$1" == "C-" ]; then
   return $(( 72 ))
elif [ "$1" == "D+" ]; then
   return $(( 69 ))
elif [ "$1" == "D" ]; then
   return $(( 66 ))
elif [ "$1" == "D-" ]; then
   return $(( 62 ))
elif [ "$1" == "F" ]; then
   return $(( 59 ))
else
   return $(( 59 ))
fi

}

add(){
  #echo "$1 $2 $3 $4"
  sm=$(( $1 + $2 + $3 ))
  return $((sm))

}

>$homeworks_dst

while read line
do
  name=`echo $line | awk {' print $1 '}`
  gr0=`echo $line | awk {' print $2 '}`
  gr1=`echo $line | awk {' print $3 '}`
  gr2=`echo $line | awk {' print $4 '}`

  tonum $gr0
  grnum0=$?
  tonum $gr1
  grnum1=$?
  tonum $gr2
  grnum2=$?
  echo "$name $grnum0 $grnum1 $grnum2"
  sum=$(( $grnum0 + $grnum1 + $grnum2 ))
  res=`echo "scale=2; $sum / 3" | bc`
  res_rounded=`printf '%.*f\n' 0 $res`
  echo "$name $sum $res $res_rounded"
  echo "$name $res_rounded" >> $homeworks_dst

done < $homeworks_src
