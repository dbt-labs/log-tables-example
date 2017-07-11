select
  users.id,
  users.first_name,
  users.last_name,
  count(sends.id)

from users

left join sends
  on sends.email_address = users.email_address

group by 1, 2, 3

order by users.id asc;
