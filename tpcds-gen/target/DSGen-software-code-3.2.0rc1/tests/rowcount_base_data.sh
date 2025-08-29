#!/bin/sh
# $id:$
# $log:$
cd temp_build
if [ -f FAILED ]
then
exit
fi

for f in /data/*.csv
do
tbl=`basename $f .csv`
echo "select '$tbl', count(*) from $tbl;"
done |
	mysql -utpcds -ptpcds -Dtpcds |
	grep -v count > /tmp/rowcount.out || exit -1
diff /tmp/rowcount.out rowcount_${1}.req || exit -1
rm -rf /tmp/rowcount.out /tmp/rowcount.req
