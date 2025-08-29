#!/bin/sh
# assumptions:
#  user tpcds
#  password tpcds
#  database tpcds exists (required for privilege settings, below)
#  privileges
#    global
#      file (to allow load data infile to work)
#    database: tpcds
#      all

create_schema()
{
mysql -utpcds -ptpcds -e "drop database $1" > /dev/null 2>&1
mysql -utpcds -ptpcds -e "create database $1" || exit -1
mysql -utpcds -ptpcds -D$1 < $2 || exit -1
}

load_table()
{
mysql -utpcds -ptpcds -D$V_DATABASE -e "load data infile '$1' replace into table $2 fields terminated by '|'" 2>&1  
}

connect_to()
{
return
}

activate_constraints()
{
count=0

while read c
do
   indcount="ind$count";
   echo $c |
     awk -v indcount=$indcount '{print "create index ",indcount," on ",$3,$9,";"}' > /tmp/foo
   count=`expr $count + 1`
   indcount="ind$count"
   echo $c |awk -v indcount=$indcount '{print "create index ",indcount," on ",$11,$12,";"}' >> /tmp/foo
   count=`expr $count + 1`
   echo $c >> /tmp/foo
   run_query create_ri /tmp/foo
done < $1

return
}

run_query()
{
mysql -utpcds -ptpcds -Dtpcds
}

