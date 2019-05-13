workDir=`pwd`
module load gaussian/g16.b01

for i in `seq -f "%02g" 1 12`
do
 echo $i
 cd $i
 formchk AH-NTO-State-$i.chk
 cd $workDir
done

