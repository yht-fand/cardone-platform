<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
WHERE 1 = 1
<#if StringUtils.isNotBlank(startTime)>
AND t.`CREATED_DATE` >= :startTime
</#if>
<#if StringUtils.isNotBlank(endTime)>
AND t.`CREATED_DATE` <= :endTime
</#if>
<#if StringUtils.isNotBlank(departmentCode)>
AND t.`DEPARTMENT_CODE` = :departmentCode
</#if>
<#if StringUtils.isNotBlank(userCode)>
AND t.`USER_CODE` LIKE CONCAT('%', :userCode, "%")
</#if>
<#if StringUtils.isNotBlank(name)>
AND t.`NAME` LIKE CONCAT('%', :name, "%")
</#if>
<#if StringUtils.isNotBlank(telephone)>
AND t.`TELEPHONE` LIKE CONCAT('%', :telephone, "%")
</#if>