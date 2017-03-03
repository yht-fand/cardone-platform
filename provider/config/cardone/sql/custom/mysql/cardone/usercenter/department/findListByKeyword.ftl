SELECT d.DEPARTMENT_CODE  ,d.NAME FROM c1_department d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE FIND_IN_SET(:term, d.`PARENT_TREE_CODE`) OR LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`DEPARTMENT_CODE`)
</#if>
ORDER BY d.ORDER_, d.DEPARTMENT_CODE
LIMIT 20