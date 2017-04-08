SELECT d.USER_CODE  ,d.NAME FROM c1_user d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.USER_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_, d.USER_CODE
LIMIT 20