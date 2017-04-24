SELECT
t.USER_ID,
t.USER_CODE,
t.NAME,
t.first_name,
t.last_name,
d.PARENT_TREE_CODE,
d.PARENT_TREE_NAME,
t.DEPARTMENT_CODE,
d.NAME AS DEPARTMENT_NAME,
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
c1_user t
LEFT JOIN c1_department d ON (d.DEPARTMENT_CODE = t.DEPARTMENT_CODE)
<#if cardone.StringUtils.isNotBlank(userId)>
WHERE t.user_id = :userId
<#else>
    <#include "page.where.ftl">
ORDER BY t.DEPARTMENT_CODE,
t.USER_CODE,
t.CREATED_DATE
limit <#if pageSize??>:pageSize<#else>10</#if> OFFSET <#if offset??>:offset<#else>0</#if>
</#if>