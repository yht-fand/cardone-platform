SELECT t.USERADDRESS_CODE, t.NAME FROM c1_user_address t
where t.state_code ='1' and t.data_state_code = '1'
<#if cardone.StringUtils.isBlank(notTerm) >
    <#if cardone.StringUtils.isNotBlank(term)>
    and (strpos(t.NAME, :term) > 0 OR strpos(t.USERADDRESS_CODE, :term) > 0)
    </#if>
</#if>
ORDER BY t.ORDER_, t.USERADDRESS_CODE
LIMIT 20