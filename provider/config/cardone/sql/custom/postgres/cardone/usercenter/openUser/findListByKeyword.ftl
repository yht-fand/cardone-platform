SELECT d.OPENUSER_CODE, d.NAME FROM c1_open_user d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.OPENUSER_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_BY_, d.OPENUSER_CODE
LIMIT 20