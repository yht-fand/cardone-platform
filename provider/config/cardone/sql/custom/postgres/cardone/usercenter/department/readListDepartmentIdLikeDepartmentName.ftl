SELECT
t.DEPARTMENT_ID
FROM
c1_department t
where t.state_code = '1' and t.data_state_code = '1'
<#if isLike>
and (POSITION(:departmentName in t.DEPARTMENT_CODE) > 0 OR POSITION(:departmentName in t.NAME) > 0)
<#else>
and (t.DEPARTMENT_CODE = :departmentName OR t.NAME = :departmentName)
</#if>