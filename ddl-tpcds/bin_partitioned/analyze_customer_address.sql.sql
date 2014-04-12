-- Use filesystem to track stats.
set hive.stats.dbclass=fs;
-- Many tables have some missing partitions, deal with this by ignoring errors.
set hive.cli.errors.ignore=true;

ANALYZE TABLE customer_address COMPUTE STATISTICS;
ANALYZE TABLE customer_address COMPUTE STATISTICS FOR COLUMNS 
	ca_address_sk, ca_address_id, ca_street_number, ca_street_name,
	ca_street_type, ca_suite_number, ca_city, ca_county, ca_state,
	ca_zip, ca_country, ca_gmt_offset, ca_location_type;

