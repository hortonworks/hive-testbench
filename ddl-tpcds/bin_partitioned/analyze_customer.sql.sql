-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE customer COMPUTE STATISTICS;
ANALYZE TABLE customer COMPUTE STATISTICS FOR COLUMNS 
	c_customer_sk, c_customer_id, c_current_cdemo_sk,
	c_current_hdemo_sk, c_current_addr_sk, c_first_shipto_date_sk,
	c_first_sales_date_sk, c_salutation, c_first_name, c_last_name,
	c_preferred_cust_flag, c_birth_day, c_birth_month,
	c_birth_year, c_birth_country, c_login, c_email_address,
	c_last_review_date;

