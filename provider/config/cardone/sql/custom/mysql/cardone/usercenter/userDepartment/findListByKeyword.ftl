SELECT d.USERDEPARTMENT_CODE, d.NAME FROM c1_user_department d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`USERDEPARTMENT_CODE`)
</#if>
ORDER BY d.ORDER_, d.USERDEPARTMENT_CODE
LIMIT 20