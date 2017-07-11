insert into sends (email_address, sent_at) (
  select email_address, now() from users
);
