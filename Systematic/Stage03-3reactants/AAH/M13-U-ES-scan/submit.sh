workDir=`pwd`

for i in `seq -f "%02g" 1 24`
do
 echo $i
 if [ ! -d "$i" ]; then
  mkdir $i
 fi
 sed -e "s/ZZZ/$i/g" template.gjf > $i/AAH.gjf
 cd $i
 submit_g16.pl 32 10 00 AAH
 cd $workDir
done

