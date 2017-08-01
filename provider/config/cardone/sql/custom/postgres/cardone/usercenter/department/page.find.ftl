SELECT
t.DEPARTMENT_ID,
t.DEPARTMENT_CODE,
t.NAME,
t.PARENT_ID,
t.PARENT_CODE,
p.NAME AS PARENT_NAME,
t.PARENT_TREE_ID,
t.PARENT_TREE_CODE,
t.PARENT_TREE_NAME,
t.CREATED_BY_CODE,
t.CREATED_DATE,
t.LAST_MODIFIED_BY_CODE,
t.LAST_MODIFIED_DATE,
t.BEGIN_DATE,
t.END_DATE,
t.FLAG_CODE,
t.STATE_CODE,
t.DATA_STATE_CODE
FROM
c1_department t
left join c1_department p on (p.DEPARTMENT_ID = t.PARENT_ID)
<#if cardone.StringUtils.isNotBlank(departmentId)>
WHERE t.department_id = :departmentId
<#else>
    <#include "page.where.ftl">
ORDER BY t.PARENT_CODE,
t.DEPARTMENT_CODE,
t.CREATED_DATE
limit <#if pageSize??>:pageSize<#else>10</#if> OFFSET <#if offset??>:offset<#else>0</#if>
</#if>