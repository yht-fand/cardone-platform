SELECT d.USERDEPARTMENT_CODE, d.NAME FROM c1_user_department d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.USERDEPARTMENT_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_BY_, d.USERDEPARTMENT_CODE
LIMIT 20