<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT
t.`DEPARTMENT_ID`,
t.`DEPARTMENT_CODE`,
t.`NAME`,
t.`PARENT_CODE`,
(select s.NAME from c1_department s where s.DEPARTMENT_CODE = t.PARENT_CODE LIMIT 1)  as `PARENT_NAME`,
t.`PARENT_TREE_NAME`,
t.CREATED_BY_CODE,
(SELECT
s.`NAME`
FROM
c1_user s
WHERE s.user_code = t.CREATED_BY_CODE
LIMIT 1) AS CREATED_BY_NAME,
DATE_FORMAT(t.`CREATED_DATE`, '%Y-%m-%d') AS CREATED_DATE,
t.LAST_MODIFIED_BY_CODE,
(SELECT
s.`NAME`
FROM
c1_user s
WHERE s.user_code = t.LAST_MODIFIED_BY_CODE
LIMIT 1) AS LAST_MODIFIED_BY_NAME,
DATE_FORMAT(
t.`LAST_MODIFIED_DATE`,
'%Y-%m-%d'
) AS LAST_MODIFIED_DATE
FROM
`c1_department` t
<#if StringUtils.isNotBlank(departmentId)>
WHERE t.department_id =:departmentId
<#else>
    <#include "page.where.ftl">
ORDER BY t.`PARENT_CODE`,
t.`DEPARTMENT_CODE`,
t.`CREATED_BY_DATE`
limit <#if offset??>:offset<#else>0</#if> , <#if pageSize??>:pageSize<#else>10</#if>
</#if>