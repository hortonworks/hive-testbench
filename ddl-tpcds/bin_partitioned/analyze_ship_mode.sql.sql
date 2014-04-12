-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE ship_mode COMPUTE STATISTICS;
ANALYZE TABLE ship_mode COMPUTE STATISTICS FOR COLUMNS 
	sm_ship_mode_sk, sm_ship_mode_id, sm_type, sm_code, sm_carrier,
	sm_contract;

