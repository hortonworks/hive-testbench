DIR=/data/tpcds
echo "Building verification data for Bug24 in $DIR"
sleep 5
for s in 1 100 300 1000 3000 10000 30000 100000
do
echo "at scale $s"
./dsdgen -update 1 -force -dir $DIR -scale $s -ab s_cord -quiet
echo "	l = `wc -l $DIR/s_catalog_order_line*`"
echo "	r = `wc -l $DIR/s_catalog_return*`"
echo "	n = `awk -F\| 'length($7) == 0' $DIR/s_catalog_return* |wc -l`"
done

