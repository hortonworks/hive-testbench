set hive.stats.dbclass=fs;

ANALYZE TABLE store_returns partition(sr_returned_date) COMPUTE STATISTICS;
ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-30') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-01-31') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-02-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-30') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-03-31') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-04-30') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-30') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-05-31') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-06-30') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-30') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-07-31') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-30') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-08-31') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-09-30') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-30') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-10-31') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-11-30') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-01') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-02') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-03') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-04') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-05') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-06') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-07') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-08') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-09') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-10') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-11') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-12') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-13') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-14') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-15') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-16') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-17') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-18') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-19') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-20') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-21') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-22') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-23') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-24') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-25') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-26') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-27') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-28') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-29') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-30') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

ANALYZE TABLE store_returns partition(sr_returned_date='2000-12-31') COMPUTE STATISTICS FOR COLUMNS 
	sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
	sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
	sr_store_sk, sr_reason_sk, sr_ticket_number,
	sr_return_quantity, sr_return_amt, sr_return_tax,
	sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
	sr_refunded_cash, sr_reversed_charge, sr_store_credit,
	sr_net_loss;

