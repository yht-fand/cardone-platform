SELECT d.REGION_CODE  ,d.NAME FROM c1_region d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.REGION_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_, d.REGION_CODE
LIMIT 20