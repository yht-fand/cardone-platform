<#assign prefixName = true>

<#if cardone.StringUtils.isNotBlank(departmentId)>
    <#if cardone.StringUtils.isNotBlank(fuzzyQuery)>
    ${prefixName?string('WHERE ', 'AND ')}(t.DEPARTMENT_ID = :departmentId OR :departmentId = ANY(string_to_array(d.parent_tree_id, ',')))
    <#else>
    ${prefixName?string('WHERE ', 'AND ')}t.DEPARTMENT_ID = :departmentId
    </#if>
    <#assign prefixName = false>
<#elseif cardone.StringUtils.isNotBlank(departmentTreeName)>
    <#if cardone.StringUtils.isNotBlank(fuzzyQuery)>
    ${prefixName?string('WHERE ', 'AND ')}(POSITION(:departmentTreeName in t.DEPARTMENT_CODE) > 0 OR POSITION(:departmentTreeName in d.NAME) > 0)
    <#else>
    ${prefixName?string('WHERE ', 'AND ')}(d.DEPARTMENT_CODE = :departmentTreeName OR d.NAME = :departmentTreeName)
    </#if>
    <#assign prefixName = false>
</#if>

<#if cardone.StringUtils.isNotBlank(userCode)>
    ${prefixName?string('WHERE ', 'AND ')}t.USER_CODE = :userCode
    <#assign prefixName = false>
<#elseif cardone.StringUtils.isNotBlank(name)>
    <#if cardone.StringUtils.isNotBlank(fuzzyQuery)>
    ${prefixName?string('WHERE ', 'AND ')}(POSITION(:name in t.USER_CODE) > 0 OR POSITION(:name in t.NAME) > 0)
    <#else>
    ${prefixName?string('WHERE ', 'AND ')}(t.USER_CODE = :name OR t.NAME = :name)
    </#if>
    <#assign prefixName = false>
</#if>

<#if cardone.ObjectUtils.anyNotNull(startTime)>
    ${prefixName?string('WHERE ', 'AND ')}t.BEGIN_DATE >= :startTime
    <#assign prefixName = false>
</#if>

<#if cardone.ObjectUtils.anyNotNull(endTime)>
${prefixName?string('WHERE ', 'AND ')}t.BEGIN_DATE < :endTime
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
<@cardone.permissionSql prefixName=prefixName permission_departments=permission_departments  departmentColumnName="d.department_code" permission_users=permission_users userColumnName="t.user_CODE" />