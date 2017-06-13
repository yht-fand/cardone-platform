<#assign prefixName = true>
<#if cardone.StringUtils.isNotBlank(departmentCode)>
${prefixName?string('WHERE ', 'AND ')}(t.DEPARTMENT_CODE = :departmentCode OR Exists(select 1 from c1_department e where e.department_code = t.department_code and :departmentCode = ANY(string_to_array(e.parent_tree_code, ','))))
    <#assign prefixName = false>
<#elseif cardone.StringUtils.isNotBlank(departmentTreeName)>
${prefixName?string('WHERE ', 'AND ')}(POSITION(:departmentTreeName in t.DEPARTMENT_CODE) > 0 OR Exists(select 1 from c1_department e where e.department_code = t.department_code and POSITION(:departmentTreeName in e.NAME) > 0))
    <#assign prefixName = false>
</#if>
<#if cardone.StringUtils.isNotBlank(userCode)>
${prefixName?string('WHERE ', 'AND ')}t.USER_CODE = :userCode
    <#assign prefixName = false>
<#elseif cardone.StringUtils.isNotBlank(name)>
${prefixName?string('WHERE ', 'AND ')}(POSITION(:name in t.USER_CODE) > 0 OR POSITION(:name in t.NAME) > 0)
    <#assign prefixName = false>
</#if>
<#if cardone.ObjectUtils.anyNotNull(startTime)>
${prefixName?string('WHERE ', 'AND ')}(t.BEGIN_DATE >= :startTime OR t.END_DATE >= :startTime)
    <#assign prefixName = false>
</#if>
<#if cardone.ObjectUtils.anyNotNull(endTime)>
${prefixName?string('WHERE ', 'AND ')}(t.BEGIN_DATE <= :endTime OR t.END_DATE <= :endTime)
    <#assign prefixName = false>
</#if>
<#if cardone.StringUtils.isNotBlank(flagCode)>
${prefixName?string('WHERE ', 'AND ')}t.FLAG_CODE = :flagCode
    <#assign prefixName = false>
</#if>
<#if cardone.StringUtils.isNotBlank(stateCode)>
${prefixName?string('WHERE ', 'AND ')}t.STATE_CODE = :stateCode
    <#assign prefixName = false>
</#if>
<#if cardone.StringUtils.isNotBlank(dataStateCode)>
${prefixName?string('WHERE ', 'AND ')}t.DATA_STATE_CODE = :dataStateCode
    <#assign prefixName = false>
</#if>