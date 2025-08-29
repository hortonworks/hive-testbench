#!/bin/sh
# $id:$
# $log:$
V_DATABASE=${DATABASE:-"tpcds"}	# name of the database to be create
V_DBMS=${DBMS:-"db2"}		# dbms flavor to use
				# must match xx_setup.sh file name
V_DATA_DIR=${DATA_DIR:-"/data"}	# flat file directory
DOP=${DOP:-"1"}

if [ ! -f ${V_DBMS}_setup.sh ]
then
echo "Cannot find setup file for DBMS: ${V_DBMS}_setup.sh"
exit 1
fi

. ${V_DBMS}_setup.sh

cd temp_build

if [ "$1" != "tbl"  ]
then
	cat tpcds.sql tpcds_source.sql > combined.sql
	create_schema $V_DATABASE combined.sql
	for f in ${V_DATA_DIR}/*.dat
	do
		tbl=`basename $f .dat`
		if [ $DOP -ne 1 ]
		then tbl=`echo $tbl |sed -e "s/_[0-9]_[0-9]//"`
		fi
		echo -n "$tbl: "
		load_table $f $tbl
		echo done
	done
	rm combined.sql
else
	connect_to $V_DATABASE
	load_table ${V_DATA_DIR}/$2.dat $2
fi
