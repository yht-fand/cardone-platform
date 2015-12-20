UPDATE t_department
<#assign prefixName = 'SET'>
<#if (update_beginDate??)>
<#if (update_beginDate_value??)>
${prefixName} `BEGIN_DATE` = :update_beginDate_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_createdByCode??)>
<#if (update_createdByCode_value??)>
${prefixName} `CREATED_BY_CODE` = :update_createdByCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_createdDate??)>
<#if (update_createdDate_value??)>
${prefixName} `CREATED_DATE` = :update_createdDate_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_dataStateCode??)>
<#if (update_dataStateCode_value??)>
${prefixName} `DATA_STATE_CODE` = :update_dataStateCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_departmentCode??)>
<#if (update_departmentCode_value??)>
${prefixName} `DEPARTMENT_CODE` = :update_departmentCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_departmentId??)>
<#if (update_departmentId_value??)>
${prefixName} `DEPARTMENT_ID` = :update_departmentId_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_endDate??)>
<#if (update_endDate_value??)>
${prefixName} `END_DATE` = :update_endDate_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_lastModifiedByCode??)>
<#if (update_lastModifiedByCode_value??)>
${prefixName} `LAST_MODIFIED_BY_CODE` = :update_lastModifiedByCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_lastModifiedDate??)>
<#if (update_lastModifiedDate_value??)>
${prefixName} `LAST_MODIFIED_DATE` = :update_lastModifiedDate_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_name??)>
<#if (update_name_value??)>
${prefixName} `NAME` = :update_name_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_orgCode??)>
<#if (update_orgCode_value??)>
${prefixName} `ORG_CODE` = :update_orgCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_parentCode??)>
<#if (update_parentCode_value??)>
${prefixName} `PARENT_CODE` = :update_parentCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_parentTreeCode??)>
<#if (update_parentTreeCode_value??)>
${prefixName} `PARENT_TREE_CODE` = :update_parentTreeCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_parentTreeName??)>
<#if (update_parentTreeName_value??)>
${prefixName} `PARENT_TREE_NAME` = :update_parentTreeName_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_permissionCodes??)>
<#if (update_permissionCodes_value??)>
${prefixName} `PERMISSION_CODES` = :update_permissionCodes_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_roleCodes??)>
<#if (update_roleCodes_value??)>
${prefixName} `ROLE_CODES` = :update_roleCodes_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_stateCode??)>
<#if (update_stateCode_value??)>
${prefixName} `STATE_CODE` = :update_stateCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_version??)>
<#if (update_version_value??)>
${prefixName} `VERSION_` = :update_version_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_wfId??)>
<#if (update_wfId_value??)>
${prefixName} `WF_ID` = :update_wfId_value
</#if>
<#assign prefixName = ','>
</#if>
<#include "where.ftl">