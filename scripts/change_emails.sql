update users set email_address=lower(first_name) || '@' ||(
    '{gmail,hotmail,yahoo,aol,outlook,zoho,yandex,icloud}'::text[]
  )[ceil(random()*8)] || '.com',
  updated_at=now()
