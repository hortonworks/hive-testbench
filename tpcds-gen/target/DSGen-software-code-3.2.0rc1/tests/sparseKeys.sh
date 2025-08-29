#!/bin/sh
# $id:$
# $log:$
cd temp_build
if [ -f FAILED ]
then
exit
fi

mysql -Dtpcds -uroot -pmysqlpasswd <<_EOF_
create index ss_cd on store_sales(ss_cdemo_sk);
select count(distinct(ss_cdemo_sk)) as "unique keys" from store_sales;
select min(cd_demo_sk) as "min key", max(cd_demo_sk) as "max key" from customer_demographics;
select count(*) as "cd join" from store_sales where 
	not exists (select cd_demo_sk from customer_demographics where
	ss_cdemo_sk = cd_demo_sk);
drop index ss_cd on table store_sales;
_EOF_
