SELECT d.DEPARTMENT_CODE, d.NAME FROM c1_department d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.DEPARTMENT_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_, d.DEPARTMENT_CODE
LIMIT 20