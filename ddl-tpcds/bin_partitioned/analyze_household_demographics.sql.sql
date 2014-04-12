-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE household_demographics COMPUTE STATISTICS;
ANALYZE TABLE household_demographics COMPUTE STATISTICS FOR COLUMNS 
	hd_demo_sk, hd_income_band_sk, hd_buy_potential, hd_dep_count,
	hd_vehicle_count;

