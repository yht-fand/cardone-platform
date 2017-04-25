SELECT d.REGION_CODE, d.NAME FROM c1_region d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`REGION_CODE`)
</#if>
ORDER BY d.ORDER_, d.REGION_CODE
LIMIT 20