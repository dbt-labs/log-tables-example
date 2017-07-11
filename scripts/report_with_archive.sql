select
  users.id,
  users.first_name,
  users.last_name,
  count(sends.id)

from users

left join users_immutable
  on users.id = users_immutable.id

left join sends
  on sends.email_address = users_immutable.email_address
  and sends.sent_at > users_immutable.valid_from
  and (users_immutable.valid_to is null or users_immutable.valid_to > sends.sent_at)

group by 1, 2, 3

order by users.id asc;
