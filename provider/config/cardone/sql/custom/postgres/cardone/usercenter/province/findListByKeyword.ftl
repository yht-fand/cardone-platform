SELECT d.PROVINCE_CODE  ,d.NAME FROM c1_province d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.PROVINCE_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_, d.PROVINCE_CODE
LIMIT 20