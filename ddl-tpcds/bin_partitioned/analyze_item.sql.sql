-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE item COMPUTE STATISTICS;
ANALYZE TABLE item COMPUTE STATISTICS FOR COLUMNS 
	i_item_sk, i_item_id, i_rec_start_date, i_rec_end_date,
	i_item_desc, i_current_price, i_wholesale_cost, i_brand_id,
	i_brand, i_class_id, i_class, i_category_id, i_category,
	i_manufact_id, i_manufact, i_size, i_formulation, i_color,
	i_units, i_container, i_manager_id, i_product_name;

