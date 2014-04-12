-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE warehouse COMPUTE STATISTICS;
ANALYZE TABLE warehouse COMPUTE STATISTICS FOR COLUMNS 
	w_warehouse_sk, w_warehouse_id, w_warehouse_name,
	w_warehouse_sq_ft, w_street_number, w_street_name,
	w_street_type, w_suite_number, w_city, w_county, w_state,
	w_zip, w_country, w_gmt_offset;

