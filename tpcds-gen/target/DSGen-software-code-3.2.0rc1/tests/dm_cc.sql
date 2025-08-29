update call_center set cc_rec_end_date = sysdate where cc_call_center_id in (select cc_call_center_id from call_center) and cc_rec_end_date is NULL;
insert into call_center(select * from ccv);
