SELECT d.USERADDRESS_CODE  ,d.NAME FROM c1_user_address d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.USERADDRESS_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_, d.USERADDRESS_CODE
LIMIT 20