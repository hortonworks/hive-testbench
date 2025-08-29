#!/bin/sh
# $id:$
# $log:$
mkdir temp_build 2> /dev/null
cd temp_build
if [ -f FAILED ]
then
exit
fi
if [ -z "$1" ]
then dstamp=`date '+%Y%m%d'`
else dstamp=$1
fi
unzip ../../tpcds_${dstamp}.zip > /dev/null 2>&1 || exit -1
make -f Makefile.suite OS=LINUX > make.out 2>&1 || exit -1
rm make.out

