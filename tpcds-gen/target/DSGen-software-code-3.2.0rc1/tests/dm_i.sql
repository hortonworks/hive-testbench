update item set i_rec_end_date = sysdate where i_item_id in (select i_item_id from itemv) and i_rec_end_date is NULL;
insert into item (select * from itemv);
