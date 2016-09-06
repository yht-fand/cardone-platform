<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT
u.DEPARTMENT_ID,
u.DEPARTMENT_CODE,
u.NAME,
u.PARENT_CODE,
(SELECT MAX(s1.name) FROM `c1_department` s1 WHERE s1.PARENT_CODE =u.DEPARTMENT_CODE) AS PARENT_DEPT_NAME,
u.CREATED_BY_CODE,
(SELECT MAX(s.name) FROM `c1_user` s WHERE s.user_code = u.CREATED_BY_CODE) AS CREATED_BY_NAME,
u.ORG_CODE,
(SELECT MAX(s.name) FROM `c1_org` s WHERE s.ORG_CODE = u.ORG_CODE) AS ORG_NAME,
u.STATE_CODE,
DATE_FORMAT(u.CREATED_DATE,'%Y-%m-%d %T') AS CREATED_DATE,
u.LAST_MODIFIED_BY_CODE,
(SELECT MAX(s.name) FROM `c1_user` s WHERE s.user_code = u.LAST_MODIFIED_BY_CODE) AS LAST_MODIFIED_BY_NAME,
DATE_FORMAT(u.LAST_MODIFIED_DATE,'%Y-%m-%d %T') AS LAST_MODIFIED_DATE
FROM `c1_department` u
WHERE 1=1
<#if StringUtils.isNotBlank(departmentCode)>
AND (u.`DEPARTMENT_CODE` LIKE CONCAT('%',:departmentCode,"%") OR u.`NAME` LIKE CONCAT('%',:departmentCode,"%"))
</#if>
<#if StringUtils.isNotBlank(parentCode)>
AND u.DEPARTMENT_CODE  IN  (SELECT DEPARTMENT_CODE FROM c1_department s  WHERE  (LOCATE(:parentCode, s.`PARENT_TREE_CODE`) > 0) OR (s.`DEPARTMENT_CODE` = :parentCode)  )
</#if>
<#if StringUtils.isNotBlank(orgCode)>
AND u.ORG_CODE  IN  (SELECT ORG_CODE FROM c1_org s  WHERE  (LOCATE(:orgCode, s.`ORG_CODE`) > 0) OR (s.`ORG_CODE` = :orgCode)  )
</#if>
<#if StringUtils.isNotBlank(departmentId)>
AND u.DEPARTMENT_ID = :departmentId
<#else>
ORDER BY  u.DEPARTMENT_CODE
LIMIT :offset, :pageSize
</#if>
