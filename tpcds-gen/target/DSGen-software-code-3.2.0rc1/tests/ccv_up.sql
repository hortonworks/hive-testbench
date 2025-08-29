drop table s_call_center;
create table s_call_center as 
(select cc_call_center_id call_center_id 
       ,d1.d_date call_open_date
       ,d2.d_date call_closed_date
       ,cc_name call_center_name
       ,cc_class call_center_class
       ,cc_employees call_center_employees
       ,cc_sq_ft call_center_sq_ft
       ,CC_HOURS call_center_hours
       ,CC_MANAGER call_center_manager
       ,CC_TAX_PERCENTAGE call_tax_percentage
from call_center left outer join date_dim d2 on CC_CLOSED_DATE_SK = d2.d_date_sk
                 left outer join date_dim d1 on CC_OPEN_DATE_SK = d1.d_date_sk
where cc_rec_end_date is NULL -- need this to avoid duplicates
  and rownum < 5
);
