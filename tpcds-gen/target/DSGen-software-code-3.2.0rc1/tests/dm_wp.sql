update web_page set wp_rec_end_date = sysdate where wp_web_page_id in (select wp_web_page_id from webv) and wp_rec_end_date is NULL;
insert into web_page (select * from webv);
