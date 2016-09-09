SELECT T.*
FROM c1_user t
<#include "page.where.ftl">
ORDER BY t.`DEPARTMENT_CODE`,
t.`USER_CODE`,
t.`CREATED_BY_CODE`
limit <#if offset??>:offset<#else>0</#if> , <#if pageSize??>:pageSize<#else>10</#if>