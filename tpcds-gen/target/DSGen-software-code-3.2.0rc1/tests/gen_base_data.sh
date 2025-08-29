#!/bin/sh
# $id:$
# $log:$
cd temp_build
rm -rf /data/*.csv
child=1
while [ $child -le $DOP ]
do
  ./dbgen2 -f -dir /data -scale $SCALE -parallel $DOP -child $child > datagen_out.$child 2>&1 &
  child=`expr $child + 1`
done
wait
./dbgen2 -f -dir /data -scale $1 -update 1 > datagen_out.update 2>&1 

wc -l /data/*.csv |grep -i total > /tmp/results
diff -w ../linecount_${SCALE}.req /tmp/results > gen_base_data.out 
[ -s gen_base_data.out ] && exit -1
rm /tmp/results datagen_out.*
