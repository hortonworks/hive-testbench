#!/bin/sh
# $id:$
# $log:$
cd temp_build
if [ -f FAILED ]
then
exit
fi
rm -rf /data/s_*.csv
./dbgen2 -f -dir /data -update 1 > gen_update_data.out 2>&1 || exit -1
cat - << _EOF_ > /tmp/goal
    100 s_brand.csv
    100 s_business_address.csv
    100 s_call_center.csv
    100 s_catalog.csv
    100 s_catalog_order.csv
    900 s_catalog_order_lineitem.csv
    100 s_catalog_page.csv
    100 s_catalog_promotional_item.csv
     84 s_catalog_returns.csv
    100 s_category.csv
    100 s_class.csv
    100 s_company.csv
    100 s_customer.csv
    100 s_division.csv
    100 s_inventory.csv
    100 s_item.csv
    100 s_manager.csv
    100 s_manufacturer.csv
    100 s_market.csv
    100 s_product.csv
    100 s_promotion.csv
      3 s_purchase.csv
     15 s_purchase_lineitem.csv
    100 s_reason.csv
    100 s_store.csv
    100 s_store_promotional_item.csv
      2 s_store_returns.csv
    100 s_subcategory.csv
    100 s_subclass.csv
    100 s_warehouse.csv
      3 s_web_order.csv
     27 s_web_order_lineitem.csv
    100 s_web_page.csv
    100 s_web_promotional_item.csv
      3 s_web_returns.csv
    100 s_web_site.csv
  99400 s_zip_to_gmt.csv
 103237 total
_EOF_
wc -l /data/*.csv > /tmp/results
diff -w /tmp/goal /tmp/results || exit -1
rm /tmp/goal /tmp/results gen_update_data.out
