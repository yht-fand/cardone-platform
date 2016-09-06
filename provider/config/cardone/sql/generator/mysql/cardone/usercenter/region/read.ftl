SELECT
<#switch (object_id!)>
<#case "areaCode">
AREA_CODE AS areaCode
<#break>
<#case "beginDate">
BEGIN_DATE AS beginDate
<#break>
<#case "cityCode">
CITY_CODE AS cityCode
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
<#case "endDate">
END_DATE AS endDate
<#break>
<#case "lastModifiedByCode">
LAST_MODIFIED_BY_CODE AS lastModifiedByCode
<#break>
<#case "lastModifiedDate">
LAST_MODIFIED_DATE AS lastModifiedDate
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
<#case "provinceCode">
PROVINCE_CODE AS provinceCode
<#break>
<#case "regionCode">
REGION_CODE AS regionCode
<#break>
<#case "regionId">
REGION_ID AS regionId
<#break>
<#case "regionName">
REGION_NAME AS regionName
<#break>
<#case "roleCodes">
ROLE_CODES AS roleCodes
<#break>
<#case "stateCode">
STATE_CODE AS stateCode
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
FROM c1_region
<#include "where.ftl">