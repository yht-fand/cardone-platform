SELECT
t.DEPARTMENT_ID
FROM
c1_department t
where t.state_code = '1' and t.data_state_code = '1'
and (t.department_id = :departmentId or :departmentId = ANY(string_to_array(t.parent_tree_id, ',')))
