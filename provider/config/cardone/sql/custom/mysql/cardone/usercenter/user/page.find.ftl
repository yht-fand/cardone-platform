<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT
t.`USER_ID`,
t.`USER_CODE`,
(SELECT s.name FROM `c1_department` s WHERE s.DEPARTMENT_CODE = t.DEPARTMENT_CODE LIMIT 1) AS DEPARTMENT_NAME,
t.`DEPARTMENT_CODE`,
(SELECT s.name FROM `c1_dictionary` s WHERE s.DICTIONARY_TYPE_CODE = 'yesOrNo' AND s.DICTIONARY_CODE = IFNULL(t.STATE_CODE, '1') LIMIT 1) AS `STATE_NAME`,
IFNULL(t.`STATE_CODE`, '1') as STATE_CODE,
t.`NAME`,
t.`TELEPHONE`
FROM
`c1_user` t
<#if StringUtils.isNotBlank(userId)>
WHERE t.user_id = :userId
<#else>
    <#include "page.where.ftl">
ORDER BY t.`CREATED_DATE`
limit <#if offset??>:offset<#else>0</#if> , <#if pageSize??>:pageSize<#else>10</#if>
</#if>