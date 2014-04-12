-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE promotion COMPUTE STATISTICS;
ANALYZE TABLE promotion COMPUTE STATISTICS FOR COLUMNS 
	p_promo_sk, p_promo_id, p_start_date_sk, p_end_date_sk,
	p_item_sk, p_cost, p_response_target, p_promo_name,
	p_channel_dmail, p_channel_email, p_channel_catalog,
	p_channel_tv, p_channel_radio, p_channel_press,
	p_channel_event, p_channel_demo, p_channel_details, p_purpose,
	p_discount_active;

