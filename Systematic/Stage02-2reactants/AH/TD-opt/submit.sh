workDir=`pwd`

for i in `seq -f "%02g" 2 12`
do
 echo $i
 if [ ! -d "$i" ]; then
  mkdir $i
 fi
 sed -e "s/ZZZ/$i/g" template.gjf > $i/AH-Opt-State-$i.gjf
 cd $i
 submit_g16.pl 32 03 00 AH-Opt-State-$i
 cd $workDir
done

