#!/bin/sh
create_schema()
{
db2 "drop database $1" > /dev/null 2>&1
db2 "create database $1" || exit -1
db2 "connect to $1" || exit -1
db2batch -d $1 -f $2 || exit -1
}

load_table()
{
db2 "load from $2 of del modified by coldel| replace into $1" 2>&1 | 
   grep -i rejected
}

connect_to()
{
db2 "connect to $1"
}

activate_constraints()
{
cut -f3 -d' ' $1.sql |sort |uniq | 	# get a list of table names
   while read t
   do
      db2 "set integrity off "
      db2 "set integrity for $t check immediate"
   done
}

run_query()
{
db2batch -d $1 -f $2
}

