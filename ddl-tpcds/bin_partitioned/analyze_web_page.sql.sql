-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE web_page COMPUTE STATISTICS;
ANALYZE TABLE web_page COMPUTE STATISTICS FOR COLUMNS 
	wp_web_page_sk, wp_web_page_id, wp_rec_start_date,
	wp_rec_end_date, wp_creation_date_sk, wp_access_date_sk,
	wp_autogen_flag, wp_customer_sk, wp_url, wp_type,
	wp_char_count, wp_link_count, wp_image_count, wp_max_ad_count;

