SELECT
<#assign prefixName = ' '>
<#if (select_areaCode??)>
${prefixName} `AREA_CODE`
<#assign prefixName = ','>
</#if>
<#if (select_beginDate??)>
${prefixName} `BEGIN_DATE`
<#assign prefixName = ','>
</#if>
<#if (select_cityCode??)>
${prefixName} `CITY_CODE`
<#assign prefixName = ','>
</#if>
<#if (select_createdByCode??)>
${prefixName} `CREATED_BY_CODE`
<#assign prefixName = ','>
</#if>
<#if (select_createdDate??)>
${prefixName} `CREATED_DATE`
<#assign prefixName = ','>
</#if>
<#if (select_dataStateCode??)>
${prefixName} `DATA_STATE_CODE`
<#assign prefixName = ','>
</#if>
<#if (select_endDate??)>
${prefixName} `END_DATE`
<#assign prefixName = ','>
</#if>
<#if (select_lastModifiedByCode??)>
${prefixName} `LAST_MODIFIED_BY_CODE`
<#assign prefixName = ','>
</#if>
<#if (select_lastModifiedDate??)>
${prefixName} `LAST_MODIFIED_DATE`
<#assign prefixName = ','>
</#if>
<#if (select_parentCode??)>
${prefixName} `PARENT_CODE`
<#assign prefixName = ','>
</#if>
<#if (select_parentTreeCode??)>
${prefixName} `PARENT_TREE_CODE`
<#assign prefixName = ','>
</#if>
<#if (select_parentTreeName??)>
${prefixName} `PARENT_TREE_NAME`
<#assign prefixName = ','>
</#if>
<#if (select_permissionCodes??)>
${prefixName} `PERMISSION_CODES`
<#assign prefixName = ','>
</#if>
<#if (select_provinceCode??)>
${prefixName} `PROVINCE_CODE`
<#assign prefixName = ','>
</#if>
<#if (select_regionCode??)>
${prefixName} `REGION_CODE`
<#assign prefixName = ','>
</#if>
<#if (select_regionId??)>
${prefixName} `REGION_ID`
<#assign prefixName = ','>
</#if>
<#if (select_regionName??)>
${prefixName} `REGION_NAME`
<#assign prefixName = ','>
</#if>
<#if (select_roleCodes??)>
${prefixName} `ROLE_CODES`
<#assign prefixName = ','>
</#if>
<#if (select_stateCode??)>
${prefixName} `STATE_CODE`
<#assign prefixName = ','>
</#if>
<#if (select_version??)>
${prefixName} `VERSION_`
<#assign prefixName = ','>
</#if>
<#if (select_wfId??)>
${prefixName} `WF_ID`
<#assign prefixName = ','>
</#if>
<#if prefixName ==  ' '>
  `AREA_CODE`
, `BEGIN_DATE`
, `CITY_CODE`
, `CREATED_BY_CODE`
, `CREATED_DATE`
, `DATA_STATE_CODE`
, `END_DATE`
, `LAST_MODIFIED_BY_CODE`
, `LAST_MODIFIED_DATE`
, `PARENT_CODE`
, `PARENT_TREE_CODE`
, `PARENT_TREE_NAME`
, `PERMISSION_CODES`
, `PROVINCE_CODE`
, `REGION_CODE`
, `REGION_ID`
, `REGION_NAME`
, `ROLE_CODES`
, `STATE_CODE`
, `VERSION_`
, `WF_ID`
</#if>
FROM c1_region
<#include "where.ftl">
<#assign prefixName = 'ORDER BY'>
<#if (order_by_areaCode??)>
${prefixName} `AREA_CODE` ${order_by_areaCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_beginDate??)>
${prefixName} `BEGIN_DATE` ${order_by_beginDate_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_cityCode??)>
${prefixName} `CITY_CODE` ${order_by_cityCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_createdByCode??)>
${prefixName} `CREATED_BY_CODE` ${order_by_createdByCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_createdDate??)>
${prefixName} `CREATED_DATE` ${order_by_createdDate_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_dataStateCode??)>
${prefixName} `DATA_STATE_CODE` ${order_by_dataStateCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_endDate??)>
${prefixName} `END_DATE` ${order_by_endDate_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_lastModifiedByCode??)>
${prefixName} `LAST_MODIFIED_BY_CODE` ${order_by_lastModifiedByCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_lastModifiedDate??)>
${prefixName} `LAST_MODIFIED_DATE` ${order_by_lastModifiedDate_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_parentCode??)>
${prefixName} `PARENT_CODE` ${order_by_parentCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_parentTreeCode??)>
${prefixName} `PARENT_TREE_CODE` ${order_by_parentTreeCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_parentTreeName??)>
${prefixName} `PARENT_TREE_NAME` ${order_by_parentTreeName_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_permissionCodes??)>
${prefixName} `PERMISSION_CODES` ${order_by_permissionCodes_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_provinceCode??)>
${prefixName} `PROVINCE_CODE` ${order_by_provinceCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_regionCode??)>
${prefixName} `REGION_CODE` ${order_by_regionCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_regionId??)>
${prefixName} `REGION_ID` ${order_by_regionId_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_regionName??)>
${prefixName} `REGION_NAME` ${order_by_regionName_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_roleCodes??)>
${prefixName} `ROLE_CODES` ${order_by_roleCodes_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_stateCode??)>
${prefixName} `STATE_CODE` ${order_by_stateCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_version??)>
${prefixName} `VERSION_` ${order_by_version_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_wfId??)>
${prefixName} `WF_ID` ${order_by_wfId_value!}
<#assign prefixName = ','>
</#if>
limit <#if offset??>:offset<#else>0</#if> , <#if pageSize??>:pageSize<#else>10</#if>