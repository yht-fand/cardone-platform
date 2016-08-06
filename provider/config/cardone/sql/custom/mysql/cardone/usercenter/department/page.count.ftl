<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT count(1)
FROM c1_department u
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
