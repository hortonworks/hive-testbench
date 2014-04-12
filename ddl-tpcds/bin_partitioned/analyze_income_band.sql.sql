-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE income_band COMPUTE STATISTICS;
ANALYZE TABLE income_band COMPUTE STATISTICS FOR COLUMNS 
	ib_income_band_sk, ib_lower_bound, ib_upper_bound;

