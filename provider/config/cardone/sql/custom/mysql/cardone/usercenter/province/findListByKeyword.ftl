SELECT d.PROVINCE_CODE, d.NAME FROM c1_province d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`PROVINCE_CODE`)
</#if>
ORDER BY d.ORDER_BY_, d.PROVINCE_CODE
LIMIT 20