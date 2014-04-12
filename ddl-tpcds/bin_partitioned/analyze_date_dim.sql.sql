-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE date_dim COMPUTE STATISTICS;
ANALYZE TABLE date_dim COMPUTE STATISTICS FOR COLUMNS 
	d_date_sk, d_date_id, d_date, d_month_seq, d_week_seq,
	d_quarter_seq, d_year, d_dow, d_moy, d_dom, d_qoy, d_fy_year,
	d_fy_quarter_seq, d_fy_week_seq, d_day_name, d_quarter_name,
	d_holiday, d_weekend, d_following_holiday, d_first_dom,
	d_last_dom, d_same_day_ly, d_same_day_lq, d_current_day,
	d_current_week, d_current_month, d_current_quarter,
	d_current_year;

