-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE time_dim COMPUTE STATISTICS;
ANALYZE TABLE time_dim COMPUTE STATISTICS FOR COLUMNS 
	t_time_sk, t_time_id, t_time, t_hour, t_minute, t_second,
	t_am_pm, t_shift, t_sub_shift, t_meal_time;

