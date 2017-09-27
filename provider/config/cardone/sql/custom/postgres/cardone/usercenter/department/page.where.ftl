<#assign prefixName = true>
<#if cardone.StringUtils.isNotBlank(parentId)>
    ${prefixName?string('WHERE ', 'AND ')}:parentId = ANY(string_to_array(t.parent_tree_id, ','))
    <#assign prefixName = false>
<#elseif cardone.StringUtils.isNotBlank(parentTreeName)>
    <#if cardone.StringUtils.isNotBlank(fuzzyQuery)>
    ${prefixName?string('WHERE ', 'AND ')}(POSITION(:parentTreeName in t.PARENT_CODE) > 0 OR POSITION(:parentTreeName in t.PARENT_TREE_CODE) > 0 OR POSITION(:parentTreeName in t.PARENT_TREE_NAME) > 0)
    <#else>
    ${prefixName?string('WHERE ', 'AND ')}(t.PARENT_CODE = :parentTreeName OR p.NAME = :parentTreeName)
    </#if>
    <#assign prefixName = false>
</#if>

<#if cardone.StringUtils.isNotBlank(departmentId)>
    ${prefixName?string('WHERE ', 'AND ')}t.DEPARTMENT_ID = :departmentId
    <#assign prefixName = false>
<#elseif cardone.StringUtils.isNotBlank(name)>
    <#if cardone.StringUtils.isNotBlank(fuzzyQuery)>
    ${prefixName?string('WHERE ', 'AND ')}(POSITION(:name in t.DEPARTMENT_CODE) > 0 OR POSITION(:name in t.NAME) > 0)
    <#else>
    ${prefixName?string('WHERE ', 'AND ')}(t.DEPARTMENT_CODE = :name OR t.NAME = :name)
    </#if>
    <#assign prefixName = false>
</#if>

<#if cardone.ObjectUtils.anyNotNull(startTime)>
    ${prefixName?string('WHERE ', 'AND ')}(t.BEGIN_DATE >= :startTime OR t.END_DATE >= :startTime)
    <#assign prefixName = false>
</#if>

<#if cardone.ObjectUtils.anyNotNull(endTime)>
    ${prefixName?string('WHERE ', 'AND ')}(t.BEGIN_DATE < :endTime OR t.END_DATE < :endTime)
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

<@cardone.permissionSql prefixName=false permission_departments=permission_departments  departmentColumnName="t.department_code" permission_users=permission_users userColumnName="t.personal_code" />