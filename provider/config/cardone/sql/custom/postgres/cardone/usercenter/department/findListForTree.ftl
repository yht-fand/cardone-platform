SELECT
t.DEPARTMENT_ID
, t.DEPARTMENT_CODE
, t.NAME
, t.PARENT_ID
, t.PARENT_CODE
, 0 as children_count
FROM c1_department t
WHERE t.state_code = '1' and t.data_state_code = '1'
<@cardone.permissionSql prefixName=false permission_departments=permission_departments  departmentColumnName="t.department_code" permission_users=permission_users userColumnName="t.personal_code" />
ORDER BY t.ORDER_BY_, t.DEPARTMENT_CODE