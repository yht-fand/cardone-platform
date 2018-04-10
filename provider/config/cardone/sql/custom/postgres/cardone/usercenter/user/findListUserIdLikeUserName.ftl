select t.* from c1_user t
where strpos(t.name, :userName) > 0 or strpos(t.first_name, :userName) > 0 or strpos(t.last_name, :userName) > 0 or strpos(t.user_code, :userName) > 0
order by t.user_code
