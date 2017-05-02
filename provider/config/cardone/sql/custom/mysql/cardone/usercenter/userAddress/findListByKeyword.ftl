SELECT t.USER_CODE , t.NAME  FROM c1_user t
<#if cardone.StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, t.`NAME`) OR LOCATE(:term, t.`USER_CODE`)
</#if>
ORDER BY t.ORDER_BY_, t.USER_CODE
LIMIT 20