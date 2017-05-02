SELECT d.OPENUSER_CODE, d.NAME FROM c1_open_user d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`OPENUSER_CODE`)
</#if>
ORDER BY d.ORDER_BY_, d.OPENUSER_CODE
LIMIT 20