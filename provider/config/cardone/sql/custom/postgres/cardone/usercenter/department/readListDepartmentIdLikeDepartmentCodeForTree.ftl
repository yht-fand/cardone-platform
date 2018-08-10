SELECT
t.DEPARTMENT_ID
FROM
c1_department t
where t.state_code = '1' and t.data_state_code = '1'
and (t.department_code = :departmentCode or :departmentCode = ANY(string_to_array(t.parent_tree_code, ',')))
