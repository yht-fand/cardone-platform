SELECT
<#switch (object_id!)>
<#case "beginDate">
BEGIN_DATE AS beginDate
<#break>
<#case "createdByCode">
CREATED_BY_CODE AS createdByCode
<#break>
<#case "createdDate">
CREATED_DATE AS createdDate
<#break>
<#case "dataStateCode">
DATA_STATE_CODE AS dataStateCode
<#break>
<#case "departmentCode">
DEPARTMENT_CODE AS departmentCode
<#break>
<#case "dictionaryTypeCode">
DICTIONARY_TYPE_CODE AS dictionaryTypeCode
<#break>
<#case "dictionaryTypeId">
DICTIONARY_TYPE_ID AS dictionaryTypeId
<#break>
<#case "endDate">
END_DATE AS endDate
<#break>
<#case "lastModifiedByCode">
LAST_MODIFIED_BY_CODE AS lastModifiedByCode
<#break>
<#case "lastModifiedDate">
LAST_MODIFIED_DATE AS lastModifiedDate
<#break>
<#case "name">
NAME AS name
<#break>
<#case "order">
ORDER_ AS order
<#break>
<#case "orgCode">
ORG_CODE AS orgCode
<#break>
<#case "parentCode">
PARENT_CODE AS parentCode
<#break>
<#case "parentTreeCode">
PARENT_TREE_CODE AS parentTreeCode
<#break>
<#case "parentTreeName">
PARENT_TREE_NAME AS parentTreeName
<#break>
<#case "permissionCodes">
PERMISSION_CODES AS permissionCodes
<#break>
<#case "remark">
REMARK AS remark
<#break>
<#case "roleCodes">
ROLE_CODES AS roleCodes
<#break>
<#case "siteCode">
SITE_CODE AS siteCode
<#break>
<#case "stateCode">
STATE_CODE AS stateCode
<#break>
<#case "systemInfoCode">
SYSTEM_INFO_CODE AS systemInfoCode
<#break>
<#case "version">
VERSION_ AS version
<#break>
<#case "wfId">
WF_ID AS wfId
<#break>
<#default>
COUNT(1) AS COUNT_
</#switch>
FROM c1_dictionary_type
<#include "where.ftl">