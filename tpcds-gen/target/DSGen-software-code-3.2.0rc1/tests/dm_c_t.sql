drop table custv;
create table custv as
select   cust_customer_id c_customer_id
        ,cd_demo_sk c_current_cdemo_sk
        ,hd_demo_sk c_current_hdemo_sk
        ,ca_address_sk c_current_addr_sk
        ,d1.d_date_sk c_first_shipto_date_sk
        ,d2.d_date_sk c_first_sales_date_sk
        ,cust_salutation c_salutation
        ,cust_first_name c_first_name
        ,cust_last_name c_last_name
        ,cust_preffered_flag c_preferred_cust_flag
        ,extract(day from cast(cust_birth_date as date)) c_birth_day
        ,extract(month from cast(cust_birth_date as date)) c_birth_month
        ,extract(year from cast(cust_birth_date as date)) c_birth_year
        ,cust_birth_country c_birth_country
        ,cust_login_id c_login
        ,cust_email_address c_email_address
        ,cust_last_review_date c_last_review_date
from    
        s_customer_m left outer join customer on (c_customer_id=cust_customer_id) 
                     left outer join customer_address on (c_current_addr_sk = ca_address_sk)
        ,customer_demographics
        ,household_demographics
        ,income_band ib
        ,date_dim d1
        ,date_dim d2
where   
        cust_gender = cd_gender
        and cust_marital_status = cd_marital_status
        and cust_educ_status = cd_education_status
        and cust_purch_est = cd_purchase_estimate
        and cust_credit_rating = cd_credit_rating
        and cust_depend_cnt = cd_dep_count
        and cust_depend_emp_cnt = cd_dep_employed_count
        and cust_depend_college_cnt = cd_dep_college_count
        and round(cust_annual_income, 0) between ib.ib_lower_bound and ib.ib_upper_bound
        and hd_income_band_sk = ib_income_band_sk
        and cust_buy_potential = hd_buy_potential
        and cust_depend_cnt= hd_dep_count
        and cust_vehicle_cnt = hd_vehicle_count
        and d1.d_date = cust_first_purchase_date
        and d2.d_date = cust_first_shipto_date
;
select count(*) from s_customer_m;
select count(*) from custv;
