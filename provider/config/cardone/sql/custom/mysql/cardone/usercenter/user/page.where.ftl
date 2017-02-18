<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
WHERE 1 = 1
<#if StringUtils.isNotBlank(startTime)>
AND DATE_FORMAT(t.`CREATED_DATE`, '%Y-%m-%d') >= :startTime
</#if>
<#if StringUtils.isNotBlank(endTime)>
AND DATE_FORMAT(t.`CREATED_DATE`, '%Y-%m-%d') <= :endTime
</#if>
<#if StringUtils.isNotBlank(departmentCode)>
AND t.`DEPARTMENT_CODE` = :departmentCode
<#elseif  StringUtils.isNotBlank(name)>
AND (LOCATE(:name, t.`DEPARTMENT_CODE`) OR LOCATE(:name, t.`NAME`))
</#if>
<#if StringUtils.isNotBlank(flagCode)>
AND t.`FLAG_CODE` = :flagCode
</#if>
<#if StringUtils.isNotBlank(stateCode)>
AND t.`STATE_CODE` = :stateCode
</#if>
<#if StringUtils.isNotBlank(dataStateCode)>
AND t.`DATA_STATE_CODE` = :dataStateCode
</#if>
