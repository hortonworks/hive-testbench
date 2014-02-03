
select  
        cc_call_center_id as Call_Center,
        cc_name as Call_Center_Name,
        cc_manager as Manager,
        sum(cr_net_loss) as Returns_Loss
from
        call_center
        JOIN catalog_returns on catalog_returns.cr_call_center_sk       = call_center.cc_call_center_sk
        JOIN date_dim ON     catalog_returns.cr_returned_date_sk     = date_dim.d_date_sk
        JOIN customer ON     catalog_returns.cr_returning_customer_sk= customer.c_customer_sk
        JOIN customer_address ON     customer_address.ca_address_sk           = customer.c_current_addr_sk
        JOIN customer_demographics ON     customer_demographics.cd_demo_sk    = customer.c_current_cdemo_sk
        JOIN household_demographics ON     household_demographics.hd_demo_sk    = customer.c_current_hdemo_sk
where
        d_year                  = 1999 
and     d_moy                   = 11
and     cr_returned_date        between '1999-11-01' and '1999-11-31'
and     ( (cd_marital_status       = 'M' and cd_education_status     = 'Unknown')
        or(cd_marital_status       = 'W' and cd_education_status     = 'Advanced Degree'))
and     hd_buy_potential like '0-500%'
and     ca_gmt_offset           = -7
group by cc_call_center_id,cc_name,cc_manager,cd_marital_status,cd_education_status
order by Returns_Loss desc;


