#!/bin/sh
# $id:$
# $log:$
cd temp_build
if [ -f FAILED ]
then
exit
fi

mysql -Dtpcds -uroot -pmysqlpasswd <<_EOF_
create index cr_cc on catalog_returns(cr_call_center_sk);
select count(distinct(cr_call_center_sk)) as "unique cr keys" from catalog_returns;
select count(distinct(cc_call_center_sk)) as "unique cc keys" from call_center;
select min(cc_call_center_sk) as "min key", max(cc_call_center_sk) as "max key" from call_center;
select distinct cr_call_center_sk from catalog_returns 
	where cr_call_center_sk not in (select cc_call_center_sk from call_center );
drop index cr_cc on catalog_returns;
_EOF_
