SELECT d.AREA_CODE, d.NAME FROM c1_area d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.AREA_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_BY_, d.AREA_CODE
LIMIT 20