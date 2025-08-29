#!/bin/sh
# created in response to bug 350
# assumes data set has been built in /data
cd temp_build
if [ -f FAILED ]
then
exit
fi

. ~jms/db2profile
if [ -z "$1" ]
then
for f in /data/*.csv
do
tbl=`basename $f .csv`
./dbgen2 -table $tbl -f
sum $f $tbl.csv |awk '{print $1, $2}' > foo
f1=`head -1 foo`
f2=`tail -1 foo`
if [ $f1 != $f2 ]
then exit -1
fi
rm -f $tbl.csv foo
done
fi
