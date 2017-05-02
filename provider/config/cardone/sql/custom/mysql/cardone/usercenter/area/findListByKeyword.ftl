SELECT d.AREA_CODE, d.NAME FROM c1_area d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`AREA_CODE`)
</#if>
ORDER BY d.ORDER_BY_, d.AREA_CODE
LIMIT 20