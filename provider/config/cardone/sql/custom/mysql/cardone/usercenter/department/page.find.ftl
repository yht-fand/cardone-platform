<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT
t.`DEPARTMENT_ID`,
t.`DEPARTMENT_CODE`,
t.`NAME`,
t.`PARENT_CODE`,
p.`NAME` AS PARENT_NAME,
t.`PARENT_TREE_NAME`,
t.`PARENT_TREE_CODE`,
t.CREATED_BY_CODE,
(SELECT s.`NAME` FROM c1_user s WHERE s.user_code = t.CREATED_BY_CODE LIMIT 1) AS CREATED_BY_NAME,
DATE_FORMAT(t.`CREATED_DATE`, '%Y-%m-%d') AS CREATED_DATE,
t.LAST_MODIFIED_BY_CODE,
(SELECT s.`NAME` FROM c1_user s WHERE s.user_code = t.LAST_MODIFIED_BY_CODE LIMIT 1) AS LAST_MODIFIED_BY_NAME,
DATE_FORMAT(t.`LAST_MODIFIED_DATE`, '%Y-%m-%d') AS LAST_MODIFIED_DATE,
DATE_FORMAT(t.BEGIN_DATE, '%Y-%m-%d') AS BEGIN_DATE,
DATE_FORMAT(t.END_DATE, '%Y-%m-%d') AS END_DATE,
IFNULL((SELECT s.`NAME` FROM `c1_dictionary` s WHERE s.DICTIONARY_TYPE_CODE = 'departmentFlag' AND s.DICTIONARY_CODE = t.FLAG_CODE LIMIT 1), (SELECT s.`NAME` FROM `c1_dictionary` s WHERE s.DICTIONARY_TYPE_CODE = 'flag' AND s.DICTIONARY_CODE = t.FLAG_CODE LIMIT 1)) AS FLAG_NAME,
t.FLAG_CODE,
IFNULL((SELECT s.`NAME`  FROM `c1_dictionary` s WHERE s.DICTIONARY_TYPE_CODE = 'departmentState' AND s.DICTIONARY_CODE = t.STATE_CODE LIMIT 1), (SELECT s.`NAME` FROM `c1_dictionary` s WHERE s.DICTIONARY_TYPE_CODE = 'state' AND s.DICTIONARY_CODE = t.STATE_CODE LIMIT 1)) AS STATE_NAME,
t.STATE_CODE,
IFNULL((SELECT s.`NAME` FROM `c1_dictionary` s WHERE s.DICTIONARY_TYPE_CODE = 'departmentDataState' AND s.DICTIONARY_CODE = t.DATA_STATE_CODE LIMIT 1), (SELECT s.`NAME` FROM `c1_dictionary` s WHERE s.DICTIONARY_TYPE_CODE = 'dataState' AND s.DICTIONARY_CODE = t.DATA_STATE_CODE LIMIT 1)) AS DATA_STATE_NAME,
t.DATA_STATE_CODE
FROM
`c1_department` t
left join `c1_department` p on (p.`DEPARTMENT_CODE` = t.`PARENT_CODE`)
<#if StringUtils.isNotBlank(departmentId)>
WHERE t.department_id =:departmentId
<#else>
    <#include "page.where.ftl">
ORDER BY t.`PARENT_CODE`,
t.`DEPARTMENT_CODE`,
t.`CREATED_DATE`
limit <#if offset??>:offset<#else>0</#if> , <#if pageSize??>:pageSize<#else>10</#if>
</#if>