SELECT d.ORG_CODE, d.NAME FROM c1_org d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.ORG_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_, d.ORG_CODE
LIMIT 20