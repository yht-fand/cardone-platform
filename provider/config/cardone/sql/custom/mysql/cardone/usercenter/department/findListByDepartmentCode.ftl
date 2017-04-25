SELECT d.DEPARTMENT_CODE, d.NAME ,d.PARENT_CODE  FROM  c1_department d
<#if cardone.StringUtils.isNotBlank(departmentCode)>
WHERE  (LOCATE(:departmentCode, d.`PARENT_TREE_CODE`) > 0) OR (d.`DEPARTMENT_CODE` = :departmentCode)
</#if>
ORDER BY d.DEPARTMENT_CODE