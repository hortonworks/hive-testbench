-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE customer_demographics COMPUTE STATISTICS;
ANALYZE TABLE customer_demographics COMPUTE STATISTICS FOR COLUMNS 
	cd_demo_sk, cd_gender, cd_marital_status, cd_education_status,
	cd_purchase_estimate, cd_credit_rating, cd_dep_count,
	cd_dep_employed_count, cd_dep_college_count;

