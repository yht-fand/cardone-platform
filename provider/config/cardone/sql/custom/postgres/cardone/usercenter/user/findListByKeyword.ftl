SELECT d.USER_CODE, d.NAME FROM c1_user d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.first_name, :term) > 0 OR strpos(d.last_name, :term) > 0 OR strpos(d.USER_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_BY_, d.DEPARTMENT_CODE, d.USER_CODE, d.CREATED_DATE
LIMIT 20