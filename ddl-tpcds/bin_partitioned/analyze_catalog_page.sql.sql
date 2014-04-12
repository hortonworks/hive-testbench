-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE catalog_page COMPUTE STATISTICS;
ANALYZE TABLE catalog_page COMPUTE STATISTICS FOR COLUMNS 
	cp_catalog_page_sk, cp_catalog_page_id, cp_start_date_sk,
	cp_end_date_sk, cp_department, cp_catalog_number,
	cp_catalog_page_number, cp_description, cp_type;

