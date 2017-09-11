SELECT d.DEPARTMENT_ID, d.DEPARTMENT_CODE, d.NAME, d.PARENT_ID, d.PARENT_CODE FROM  c1_department d
where d.state_code = '1' and d.data_state_code = '1'
<#if cardone.StringUtils.isNotBlank(departmentId)>
AND  (LOCATE(:departmentId, d.PARENT_TREE_ID) > 0) OR (d.DEPARTMENT_ID = :departmentId)
<#elseif cardone.StringUtils.isNotBlank(departmentCode)>
AND  (LOCATE(:departmentCode, d.PARENT_TREE_CODE) > 0) OR (d.DEPARTMENT_CODE = :departmentCode)
</#if>
ORDER BY d.DEPARTMENT_CODE