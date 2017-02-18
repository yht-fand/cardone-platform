<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT
t.`USER_ID`,
t.`USER_CODE`,
(SELECT REPLACE((CASE WHEN LENGTH(s.PARENT_TREE_NAME) < 1 THEN s.NAME ELSE CONCAT(s.PARENT_TREE_NAME, ',', s.NAME) END),',', '/') FROM `c1_department` s WHERE s.DEPARTMENT_CODE = t.DEPARTMENT_CODE LIMIT 1) AS DEPARTMENT_TREE_NAME,
t.`DEPARTMENT_CODE`,
(SELECT s.name FROM `c1_dictionary` s WHERE s.DICTIONARY_TYPE_CODE = 'yesOrNo' AND s.DICTIONARY_CODE = IFNULL(t.STATE_CODE, '1') LIMIT 1) AS `STATE_NAME`,
IFNULL(t.`STATE_CODE`, '1') AS STATE_CODE,
t.`NAME`,
t.`TELEPHONE`,
IFNULL((SELECT
s.`NAME`
FROM
`c1_dictionary` s
WHERE s.DICTIONARY_TYPE_CODE = 'departmentFlag' AND s.DICTIONARY_CODE = t.FLAG_CODE
LIMIT 1), (SELECT
s.`NAME`
FROM
`c1_dictionary` s
WHERE s.DICTIONARY_TYPE_CODE = 'flag' AND s.DICTIONARY_CODE = t.FLAG_CODE
LIMIT 1)) AS FLAG_NAME,
t.FLAG_CODE,
IFNULL((SELECT
s.`NAME`
FROM
`c1_dictionary` s
WHERE s.DICTIONARY_TYPE_CODE = 'departmentState' AND s.DICTIONARY_CODE = t.STATE_CODE
LIMIT 1), (SELECT
s.`NAME`
FROM
`c1_dictionary` s
WHERE s.DICTIONARY_TYPE_CODE = 'state' AND s.DICTIONARY_CODE = t.STATE_CODE
LIMIT 1)) AS STATE_NAME,
t.STATE_CODE,
IFNULL((SELECT
s.`NAME`
FROM
`c1_dictionary` s
WHERE s.DICTIONARY_TYPE_CODE = 'departmentDataState' AND s.DICTIONARY_CODE = t.DATA_STATE_CODE
LIMIT 1), (SELECT
s.`NAME`
FROM
`c1_dictionary` s
WHERE s.DICTIONARY_TYPE_CODE = 'dataState' AND s.DICTIONARY_CODE = t.DATA_STATE_CODE
LIMIT 1)) AS DATA_STATE_NAME,
t.DATA_STATE_CODE
FROM
`c1_user` t
<#if StringUtils.isNotBlank(userId)>
WHERE t.user_id = :userId
<#else>
    <#include "page.where.ftl">
ORDER BY t.`CREATED_DATE`
limit <#if offset??>:offset<#else>0</#if> , <#if pageSize??>:pageSize<#else>10</#if>
</#if>