#!/bin/sh
# $id:$
# $log:$
enforce_ri() {
	db2 connect to tpcds
	db2 "set integrity for $1 off no access cascade immediate to all tables " 2>&1
	db2 "set integrity for $1 immediate checked"
	db2 connect reset
}

cd temp_build
if [ -f FAILED ]
then
exit
fi

. ~jms/db2profile
if [ -n "$1" ]
then
awk "\$3 == \"$1\"" tpcds_ri.sql | 
	tr -d ";" |
	while read ri
	do
		db2 "connect to tpcds"
		echo \"$ri\"
		db2 "connect reset"
		enforce_ri $1
	done
else
while read t
do
db2 db2stop
db2 db2start
awk "\$3 == \"$t\"" tpcds_ri.sql | 
	tr -d ";" |
	while read ri
	do
		db2 "connect to tpcds"
		echo \"$ri\"
		db2 "connect reset"
	done
enforce_ri $t
done <<_EOF_
date_dim
reason
ship_mode
income_band
time_dim
customer_address
customer_demographics
household_demographics
customer
promotion
call_center
catalog_page
inventory
item
store
warehouse
web_site
web_page
catalog_returns
catalog_sales
store_returns
store_sales
web_returns
web_sales
_EOF_
fi
