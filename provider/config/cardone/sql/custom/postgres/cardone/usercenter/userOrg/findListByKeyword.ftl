SELECT d.USERORG_CODE, d.NAME FROM c1_user_org d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.USERORG_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_, d.USERORG_CODE
LIMIT 20