<#assign prefixName = 'WHERE '>
<#if cardone.StringUtils.isNotBlank(departmentCode)>
${prefixName}AND t.DEPARTMENT_CODE = :departmentCode
    <#assign prefixName = ''>
<#elseif cardone.StringUtils.isNotBlank(departmentTreeName)>
${prefixName}AND (POSITION(:departmentTreeName in d.PARENT_CODE) OR POSITION(:departmentTreeName in d.PARENT_TREE_CODE) OR POSITION(:departmentTreeName in d.PARENT_TREE_NAME) OR POSITION(:departmentTreeName in t.DEPARTMENT_CODE) OR POSITION(:departmentTreeName in d.NAME))
    <#assign prefixName = ''>
</#if>
<#if cardone.StringUtils.isNotBlank(userCode)>
${prefixName}AND t.USER_CODE = :userCode
    <#assign prefixName = ''>
<#elseif cardone.StringUtils.isNotBlank(name)>
${prefixName}AND (POSITION(:name in t.USER_CODE) OR POSITION(:name in t.NAME))
    <#assign prefixName = ''>
</#if>
<#if cardone.ObjectUtils.anyNotNull(startTime)>
${prefixName}AND ((t.BEGIN_DATE is null OR t.BEGIN_DATE >= :startTime) OR (t.END_DATE is null OR t.END_DATE >= :startTime))
    <#assign prefixName = ''>
</#if>
<#if cardone.ObjectUtils.anyNotNull(endTime)>
${prefixName}AND ((t.BEGIN_DATE is null OR t.BEGIN_DATE <= :endTime) OR (t.END_DATE is null OR t.END_DATE <= :endTime))
    <#assign prefixName = ''>
</#if>
<#if cardone.StringUtils.isNotBlank(flagCode)>
${prefixName}AND t.FLAG_CODE = :flagCode
    <#assign prefixName = ''>
</#if>
<#if cardone.StringUtils.isNotBlank(stateCode)>
${prefixName}AND t.STATE_CODE = :stateCode
    <#assign prefixName = ''>
</#if>
<#if cardone.StringUtils.isNotBlank(dataStateCode)>
${prefixName}AND t.DATA_STATE_CODE = :dataStateCode
    <#assign prefixName = ''>
</#if>