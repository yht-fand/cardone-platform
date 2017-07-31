SELECT T.USER_ID, t.USER_CODE, t.NAME, t.first_name, t.last_name FROM c1_user t
where t.state_code ='1' and t.data_state_code = '1'
<#if cardone.StringUtils.isBlank(notTerm) >
    <#if cardone.StringUtils.isNotBlank(term)>
    and (strpos(t.NAME, :term) > 0 OR strpos(t.first_name, :term) > 0 OR strpos(t.last_name, :term) > 0 OR strpos(t.USER_CODE, :term) > 0)
    </#if>
</#if>
ORDER BY t.ORDER_BY_, t.DEPARTMENT_CODE, t.USER_CODE, t.CREATED_DATE
LIMIT 20