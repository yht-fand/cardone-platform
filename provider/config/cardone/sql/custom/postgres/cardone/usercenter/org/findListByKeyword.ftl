SELECT t.ORG_CODE, t.NAME FROM c1_org t
where t.state_code ='1' and t.data_state_code = '1'
<#if cardone.StringUtils.isBlank(notTerm) >
    <#if cardone.StringUtils.isNotBlank(term)>
    and (strpos(t.NAME, :term) > 0 OR strpos(t.ORG_CODE, :term) > 0)
    </#if>
</#if>
ORDER BY t.ORDER_, t.ORG_CODE
LIMIT 20