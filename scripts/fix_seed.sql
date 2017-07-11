create sequence if not exists send_id_seq start with 3;
alter table sends alter id set default nextval('send_id_seq');

create sequence if not exists user_id_seq start with 3;
alter table users alter id set default nextval('user_id_seq');

update sends set sent_at=now();
