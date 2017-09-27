SELECT d.DEPARTMENT_CODE, d.NAME ,d.PARENT_CODE  FROM  c1_department d
where d.state_code = '1' and d.data_state_code = '1'
<#if (departmentCode != 'root' && departmentCode != '')>
and (LOCATE(:departmentCode, d.PARENT_TREE_CODE) > 0) OR (d.DEPARTMENT_CODE = :departmentCode)
</#if>
<@cardone.permissionSql prefixName=false permission_departments=permission_departments  departmentColumnName="d.department_code" permission_users=permission_users userColumnName="d.personal_code" />
ORDER BY d.ORDER_BY_, d.DEPARTMENT_CODEd.DEPARTMENT_CODE