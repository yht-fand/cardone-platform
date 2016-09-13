<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
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
WHERE 1 = 1
<#if StringUtils.isNotBlank(regionCode)>
AND t.`REGION_CODE` LIKE CONCAT('%', :regionCode, "%")
</#if>
<#if StringUtils.isNotBlank(name)>
AND t.`NAME` LIKE CONCAT('%', :name, "%")
</#if>
<#if StringUtils.isNotBlank(parentCode)>
AND (t.`PARENT_CODE` LIKE CONCAT('%', :parentCode, "%") OR EXISTS(SELECT 1 FROM c1_region e WHERE e.`REGION_CODE` = t.`PARENT_CODE` AND e.`NAME` LIKE CONCAT('%', :parentCode, "%")))
</#if>
ORDER BY t.`PARENT_CODE`,
t.`REGION_CODE`,
t.`CREATED_BY_CODE`
