SELECT d.USERORG_CODE, d.NAME FROM c1_user_org d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`USERORG_CODE`)
</#if>
ORDER BY d.ORDER_BY_, d.USERORG_CODE
LIMIT 20