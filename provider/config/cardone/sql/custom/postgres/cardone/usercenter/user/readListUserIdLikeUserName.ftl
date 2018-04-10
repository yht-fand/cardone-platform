select t.user_id from c1_user t
where strpos(t.name, :username) > 0 or strpos(t.first_name, :username) > 0 or strpos(t.last_name, :username) > 0 or strpos(t.user_code, :username) > 0
order by t.user_code
