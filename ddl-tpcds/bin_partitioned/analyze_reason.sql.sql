-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE reason COMPUTE STATISTICS;
ANALYZE TABLE reason COMPUTE STATISTICS FOR COLUMNS 
	r_reason_sk, r_reason_id, r_reason_desc;

