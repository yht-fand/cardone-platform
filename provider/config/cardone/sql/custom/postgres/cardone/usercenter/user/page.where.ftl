WHERE 1 = 1
<#if cardone.StringUtils.isNotBlank(departmentCode)>
AND t.DEPARTMENT_CODE = :departmentCode
<#elseif cardone.StringUtils.isNotBlank(departmentTreeName)>
AND (LOCATE(:departmentTreeName, d.PARENT_CODE) OR LOCATE(:departmentTreeName, d.PARENT_TREE_CODE) OR LOCATE(:departmentTreeName, d.PARENT_TREE_NAME) OR LOCATE(:departmentTreeName, t.DEPARTMENT_CODE) OR LOCATE(:departmentTreeName, d.NAME))
</#if>
<#if cardone.StringUtils.isNotBlank(userCode)>
AND t.USER_CODE = :userCode
<#elseif cardone.StringUtils.isNotBlank(name)>
AND (LOCATE(:name, t.USER_CODE) OR LOCATE(:name, t.NAME))
</#if>
<#if cardone.ObjectUtils.anyNotNull(startTime)>
AND ((t.BEGIN_DATE is null OR t.BEGIN_DATE >= :startTime) OR (t.END_DATE is null OR t.END_DATE >= :startTime))
</#if>
<#if cardone.ObjectUtils.anyNotNull(endTime)>
AND ((t.BEGIN_DATE is null OR t.BEGIN_DATE <= :endTime) OR (t.END_DATE is null OR t.END_DATE <= :endTime))
</#if>
<#if cardone.StringUtils.isNotBlank(flagCode)>
AND t.FLAG_CODE = :flagCode
</#if>
<#if cardone.StringUtils.isNotBlank(stateCode)>
AND t.STATE_CODE = :stateCode
</#if>
<#if cardone.StringUtils.isNotBlank(dataStateCode)>
AND t.DATA_STATE_CODE = :dataStateCode
</#if>