workDir=`pwd`

for i in `seq -f "%02g" 1 12`
do
 echo $i
 if [ ! -d "$i" ]; then
  mkdir $i
 fi
 sed -e "s/ZZZ/$i/g" template.gjf > $i/AH-NTO-State-$i.gjf
 cd $i
 submit_g16.pl 32 00 05 AH-NTO-State-$i
 cd $workDir
done

