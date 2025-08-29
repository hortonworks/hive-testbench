#!/bin/sh
DBGEN=".."
DATA="/data"

hard_compare() {
case $1 in 
1)
	validate_data="$DATA/${2}_${1}.vld"
	base_data="$DATA/${2}_${1}.dat"
	table="$2";
   ;;
*)
	validate_data="$DATA/${1}.vld"
	base_data="$DATA/${1}.dat"
	table="$1";
esac
if [ ! -s $validate_data ]
then
echo "No validation data for $table"
return
fi
if [ ! -s $base_data ]
then
echo "No base data for $table"
return
fi
rm -f d
line_number=1
while read l 
do
   grep "^$l\$" $base_data >> d
   if [ ! -s d ]
   then
      echo "$table"
      echo "============="
      echo "at line $line_number"
      echo $l
      return
   fi
   line_number=`expr $line_number + 1`
done < $validate_data
echo "$table is OK"
}

compare() {
case $1 in 
1)
	validate_data="$DATA/${2}_${1}.vld"
	base_data="$DATA/${2}_${1}.dat"
	table="$2";
   ;;
*)
	validate_data="$DATA/${1}.vld"
	base_data="$DATA/${1}.dat"
	table="$1";
esac
if [ ! -s $validate_data ]
then
echo "No validation data for $table"
return
fi
if [ ! -s $base_data ]
then
echo "No base data for $table"
return
fi
while read l 
do
lnum=`echo $l | cut -f1 -d\| `
sed -n ${lnum}p $base_data | tr "|" "\012" > d
echo $l |cut -f2- -d\| | tr "|" "\012" > v
diff d v > diff
if [ -s "diff" ]
then
echo "$table"
echo "============="
echo "line $lnum"
cat diff
return
fi
done < $validate_data
echo "$table is OK"
}

do_table () {
compare="compare"
add_tag=""
build_base_data=""
build_vld_data="yes"
count=1000
while [ 1 ]
do
case "$1" in
"build")
   build_base_data="Y"
   shift
   ;;
"update")
	update="-u 1"
   add_tag="1"
	shift
	;;
"no_tag")
	compare="hard_compare"
	shift
	;;
"no_build")
   build_base_data="";
   build_vld_data="";
	shift
	;;
"count")
	count=$2
	shift 2
	;;
*)
   break 2;
esac
done

if [ -n "$build_base_data" ]
then $DBGEN/dbgen2 -quiet -dist $DBGEN/tpcds.idx -f -dir /data -ab $1 $update
fi
if [ -n "$build_vld_data" ]
then
if [ -n "$add_tag" ]
then rm -f /data/$2.vld
else rm -f /data/${2}_1.vld
fi
$DBGEN/dbgen2 -quiet -dist $DBGEN/tpcds.idx -f -dir /data -ab $1 -validate $update -vcount $count
fi
while [ -n "$2" ]
do
   $compare $add_tag $2
   shift
done
}

build=""
while [ 1 ]
do
case "$1" in
"build")
   build="build"
   shift
   ;;
"help"|"--help"|"-h")
   echo "USAGE: bug546.sh [help|build] [[update | no_tag] <ab> <table> <child>]"
   echo " with no arguments, all tables are checked against existing .dat files"
   echo " help: display this message"
   echo " build: create the .dat files"
   echo " upate: required for checking source schema files due to naming conventions"
   echo " no_tag: required for checking warehouse fact tables"
   exit
   ;;
*)
   break 2
   ;;
esac
done

if [ -z "$build" ]
then echo "USING PREGENERATED dat FILES"
fi

case $# in 
0)
do_table $build cc call_center
do_table $build cp catalog_page
do_table $build no_tag cs catalog_sales catalog_returns
do_table $build cu customer
do_table $build ca customer_address
do_table $build cd customer_demographics
do_table $build da date_dim
do_table $build $build hd household_demographics
do_table $build ib income_band
do_table $build inv inventory
do_table $build it item
do_table $build pr promotion
do_table $build re reason
do_table $build sm ship_mode
do_table $build st store
do_table $build no_tag ss store_sales store_returns
do_table $build ti time_dim
do_table $build wa warehouse
do_table $build wp web_page
do_table $build no_tag ws web_sales web_returns
do_table $build web web_site
do_table $build update s_ca s_customer_address
do_table $build update s_cc s_call_center
do_table $build update s_cord s_catalog_order s_catalog_order_lineitem 
do_table no_build update no_tag s_cr s_catalog_returns
do_table $build update s_cp s_catalog_page
do_table $build update s_cu s_customer
do_table $build update s_in s_inventory
do_table $build update s_it s_item
do_table $build update s_pm s_promotion
do_table $build update s_pu s_purchase s_purchase_lineitem 
do_table no_build no_tag update s_sr s_store_returns
do_table $build update s_st s_store
do_table $build update s_wh s_warehouse
do_table $build update s_wo s_web_order s_web_order_lineitem 
do_table no_build no_tag update s_wr s_web_returns
do_table $build update s_wp s_web_page
do_table $build update s_ws s_web_site
do_table $build update s_zi s_zip_to_gmt
;;
*)
do_table $build $*
;;
esac
