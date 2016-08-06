<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT
u.USER_ID,
u.DEPARTMENT_CODE,
(SELECT MAX(s.NAME)  FROM c1_department s  WHERE s.DEPARTMENT_CODE = u.`DEPARTMENT_CODE` ) AS DEPARTMENT_NAME,
u.USER_CODE,
u.NAME,
u.SEX_CODE,
(SELECT MAX(s.NAME)  FROM c1_dictionary s  WHERE s.DICTIONARY_CODE = u.`SEX_CODE` AND  s.DICTIONARY_TYPE_CODE = 'sex') AS SEX_NAME,
DATE_FORMAT(u.BIRTHDAY,'%Y-%m-%d') AS BIRTHDAY,
u.`EMAIL`,
u.`ID_CARD_NO`,
u.`MARRY_STATE_CODE`,
(SELECT MAX(s.NAME)  FROM c1_dictionary s  WHERE s.DICTIONARY_CODE = u.`MARRY_STATE_CODE` AND  s.DICTIONARY_TYPE_CODE = 'sex') AS MARRY_STATE_NAME,
u.`AGE`,
u.`FOLK_CODE`,
(SELECT MAX(s.NAME)  FROM c1_dictionary s  WHERE s.DICTIONARY_CODE = u.`FOLK_CODE` AND  s.DICTIONARY_TYPE_CODE = 'sex') AS FOLK_NAME,
u.`MOBILE_PHONE`,
u.`QQ`,
u.`TELEPHONE`,
u.`ADDRESS`,
u.`INTRO`,
u.`LOCUS`,
u.CREATED_BY_CODE,
(SELECT MAX(s.name) FROM `c1_user` s WHERE s.user_code = u.CREATED_BY_CODE) AS CREATED_BY_NAME,
DATE_FORMAT(u.CREATED_DATE,'%Y-%m-%d %T') AS CREATED_DATE,
u.LAST_MODIFIED_BY_CODE,
(SELECT MAX(s.name) FROM `c1_user` s WHERE s.user_code = u.LAST_MODIFIED_BY_CODE) AS LAST_MODIFIED_BY_NAME,
DATE_FORMAT(u.LAST_MODIFIED_DATE,'%Y-%m-%d %T') AS LAST_MODIFIED_DATE
FROM c1_user u
WHERE 1=1
<#if StringUtils.isNotBlank(userCode)>
AND (u.`USER_CODE` LIKE CONCAT('%',:userCode,"%") OR u.`NAME` LIKE CONCAT('%',:userCode,"%"))
</#if>
<#if StringUtils.isNotBlank(deptCode)>
AND u.DEPARTMENT_CODE  IN  (SELECT DEPARTMENT_CODE FROM c1_department s  WHERE  (LOCATE(:deptCode, s.`PARENT_TREE_CODE`) > 0) OR (s.`DEPARTMENT_CODE` = :deptCode)  )
</#if>
<#if  StringUtils.isNotBlank(userId)>
AND  u.`USER_ID`= :userId
<#else>
ORDER BY u.LAST_MODIFIED_BY_CODE,u.CREATED_BY_CODE, u.DEPARTMENT_CODE ,u.USER_CODE
LIMIT :offset, :pageSize
</#if>
