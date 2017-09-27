SELECT t.DEPARTMENT_CODE
, t.DEPARTMENT_ID
, t.NAME
FROM c1_department t
where t.state_code ='1' and t.data_state_code = '1'
<#if cardone.StringUtils.isBlank(notTerm) >
    <#if cardone.StringUtils.isNotBlank(term)>
    and (strpos(t.NAME, :term) > 0 OR strpos(t.DEPARTMENT_CODE, :term) > 0)
    </#if>
</#if>
<@cardone.permissionSql prefixName=false permission_departments=permission_departments  departmentColumnName="t.department_code" permission_users=permission_users userColumnName="t.personal_code" />
ORDER BY t.ORDER_BY_, t.DEPARTMENT_CODE
LIMIT 20