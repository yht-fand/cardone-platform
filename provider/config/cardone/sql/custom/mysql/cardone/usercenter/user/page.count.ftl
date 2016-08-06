<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT count(1)
FROM c1_user u
WHERE 1=1
<#if StringUtils.isNotBlank(userCode)>
AND (u.`USER_CODE` LIKE CONCAT('%',:userCode,"%") OR u.`NAME` LIKE CONCAT('%',:userCode,"%"))
</#if>
<#if StringUtils.isNotBlank(deptCode)>
AND u.DEPARTMENT_CODE  IN  (SELECT DEPARTMENT_CODE FROM c1_department s  WHERE  (LOCATE(:deptCode, s.`PARENT_TREE_CODE`) > 0) OR (s.`DEPARTMENT_CODE` = :deptCode)  )
</#if>
