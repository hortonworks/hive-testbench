#!/bin/sh
# created in response to bug 350
# assumes data set has been built in /data

validate() {
   l=`wc -l ${1}_${c1}_$p.csv|awk '{print $1}'`
   head -$l ${1}_${c2}_$p2.csv > foo.2
   sum ${1}_${c1}_$p.csv foo.2 | awk '{print $1, $2}' > foo
   f1=`head -1 foo`
   f2=`tail -1 foo`
   if [ "$f1" != "$f2" ]
   then 
      echo $1 failed at scale $sc
      exit -1
   fi
   echo $1 ok based on $l lines at scale $sc
   rm -f ${1}_* foo.1 foo.2 foo
}

cd temp_build
if [ -f FAILED ]
then
exit
fi

# read in the tables that might be parallelized, scaling up 
# as required 
while read tbl sc p chld
do
   c1=`expr $p / 2`
   c1=`expr $c1 + 1`
   p2=`expr $p / 2`
   c2=`expr $p2 / 2`
   c2=`expr $c2 + 1`
   export p p2 c1 c2 sc
   ./dbgen2 -table $tbl -f -scale $sc -parallel $p -child $c1 -q 2> /dev/null &
   ./dbgen2 -table $tbl -f -scale $sc -parallel $p2 -child $c2 -q 2> /dev/null &
   wait
   if [ -f ${tbl}_${c1}_${p}.csv ]
   then
   validate $tbl
      if [ -n "$chld" ]
      then
         tbl=`basename $chld .csv`
         validate $tbl
      fi
   fi
done << _EOF_
catalog_page 100 1000
catalog_sales 1 1000 catalog_returns
customer_address 100 1000
customer 10 1000
inventory 1 1000
item 100 1000
store_sales 1 1000 store_returns
web_sales 10 500 web_returns
_EOF_
