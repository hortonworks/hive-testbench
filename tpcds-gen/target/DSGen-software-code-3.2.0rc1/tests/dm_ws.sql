update web_site set web_rec_end_date = sysdate where web_site_id in (select web_site_id from websv) and web_rec_end_date is NULL;
insert into web_site (select * from websv);
rollback;
