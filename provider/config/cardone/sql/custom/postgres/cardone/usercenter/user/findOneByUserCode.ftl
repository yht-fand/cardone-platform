select t.* from c1_user t
where t.state_code = '1'
and t.data_state_code = '1'
and lower(t.user_code) = lower(:userCode)