SELECT t.REGION_CODE, t.NAME FROM c1_region t
where t.state_code ='1' and t.data_state_code = '1'
<#if cardone.StringUtils.isBlank(notTerm) >
    <#if cardone.StringUtils.isNotBlank(term)>
    and (strpos(t.NAME, :term) > 0 OR strpos(t.REGION_CODE, :term) > 0)
    </#if>
</#if>
ORDER BY t.ORDER_BY_, t.REGION_CODE
LIMIT 20