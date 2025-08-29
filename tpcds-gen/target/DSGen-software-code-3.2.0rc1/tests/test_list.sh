# $id:$
# $log:$
#
# usage: sh test_list.sh <datestamp> <scale in GiB> <DOP>
rm -rf temp_build
if [ $# -ne 3 ]
then
echo "USAGE: test_list.sh <YYMMDD> <SF> <DOP>"
echo " where "
echo "   <YYMMDD> is the date stamp of the build to be tested"
echo "   <SF> is the scale factor to be built"
echo "   <DOP> is the degree of parallelism to be used"
exit -1
fi
SCALE=$2
DOP=$3
export SCALE DOP

# baseline checks
rm -f FAILED
sh ./build_tools.sh $1 || sh fail.sh  build_tools
[ ! -f FAILED ] && sh ./gen_base_data.sh || sh fail.sh gen_base_data
[ ! -f FAILED ] && sh ./load_base_data.sh || sh fail.sh load_base_data
sh ./rowcount_base_data.sh $2 || sh fail.sh rowcount_base_data
sh ./ri_base_data.sh || sh fail.sh ri_base_data
sh ./ri_update_data.sh || sh fail.sh ri_update_data
# bug fix checks
sh table_option.sh > table_option.out 2>&1 || sh fail.sh table_option
sh chunked_data.sh > chunked_data.out 2>&1 || sh fail.sh chunked_data
sh -x ./cleanUP.sh
