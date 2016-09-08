<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
WHERE 1 = 1
<#if StringUtils.isNotBlank(startTime)>
AND t.`CREATED_DATE` >= :startTime
</#if>
<#if StringUtils.isNotBlank(endTime)>
AND t.`CREATED_DATE` <= :endTime
</#if>
<#if StringUtils.isNotBlank(name)>
AND (
t.`DEPARTMENT_CODE` LIKE CONCAT('%', :name, "%")
OR t.`NAME` LIKE CONCAT('%', :name, "%")
)
</#if>