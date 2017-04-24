SELECT
t.`REGION_CODE` AS ID,
t.`REGION_ID`,
t.`NAME`,
t.`PARENT_CODE` AS PID,
t.`STATE_CODE`,
t.`DATA_STATE_CODE`,
(SELECT
s.NAME
FROM
c1_REGION s
WHERE s.REGION_CODE = t.PARENT_CODE
LIMIT 1) AS `PARENT_NAME`,
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
`c1_region` t
<#if cardone.StringUtils.isNotBlank(regionId)>
WHERE t.REGION_id = :regionId
<#else>
    <#include "page.where.ftl">
ORDER BY t.`PARENT_CODE`,
t.`REGION_CODE`,
t.`CREATED_DATE`
limit <#if offset??>:offset<#else>0</#if> , <#if pageSize??>:pageSize<#else>10</#if>
</#if>