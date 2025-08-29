update store set s_rec_end_date = sysdate where s_store_id in (select s_store_id from storv) and s_rec_end_date is NULL;
insert into store (select * from storv);

