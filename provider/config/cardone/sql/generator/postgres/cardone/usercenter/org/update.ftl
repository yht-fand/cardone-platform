UPDATE c1_org
<#assign prefixName = 'SET'>
<#if (update_address??)>
${prefixName} "address" = :update_address_value
<#assign prefixName = ','>
</#if>
<#if (update_areaCode??)>
${prefixName} "area_code" = :update_areaCode_value
<#assign prefixName = ','>
</#if>
<#if (update_batchNo??)>
${prefixName} "batch_no" = :update_batchNo_value
<#assign prefixName = ','>
</#if>
<#if (update_beginDate??)>
${prefixName} "begin_date" = :update_beginDate_value
<#assign prefixName = ','>
</#if>
<#if (update_cityCode??)>
${prefixName} "city_code" = :update_cityCode_value
<#assign prefixName = ','>
</#if>
<#if (update_createdByCode??)>
${prefixName} "created_by_code" = :update_createdByCode_value
<#assign prefixName = ','>
</#if>
<#if (update_createdDate??)>
${prefixName} "created_date" = :update_createdDate_value
<#assign prefixName = ','>
</#if>
<#if (update_dataStateCode??)>
${prefixName} "data_state_code" = :update_dataStateCode_value
<#assign prefixName = ','>
</#if>
<#if (update_departmentCode??)>
${prefixName} "department_code" = :update_departmentCode_value
<#assign prefixName = ','>
</#if>
<#if (update_endDate??)>
${prefixName} "end_date" = :update_endDate_value
<#assign prefixName = ','>
</#if>
<#if (update_flagCode??)>
${prefixName} "flag_code" = :update_flagCode_value
<#assign prefixName = ','>
</#if>
<#if (update_flagObjectCode??)>
${prefixName} "flag_object_code" = :update_flagObjectCode_value
<#assign prefixName = ','>
</#if>
<#if (update_jsonData??)>
${prefixName} "json_data" = :update_jsonData_value
<#assign prefixName = ','>
</#if>
<#if (update_lastModifiedByCode??)>
${prefixName} "last_modified_by_code" = :update_lastModifiedByCode_value
<#assign prefixName = ','>
</#if>
<#if (update_lastModifiedDate??)>
${prefixName} "last_modified_date" = :update_lastModifiedDate_value
<#assign prefixName = ','>
</#if>
<#if (update_name??)>
${prefixName} "name" = :update_name_value
<#assign prefixName = ','>
</#if>
<#if (update_orderBy??)>
${prefixName} "order_by_" = :update_orderBy_value
<#assign prefixName = ','>
</#if>
<#if (update_orgCode??)>
${prefixName} "org_code" = :update_orgCode_value
<#assign prefixName = ','>
</#if>
<#if (update_orgId??)>
${prefixName} "org_id" = :update_orgId_value
<#assign prefixName = ','>
</#if>
<#if (update_parentCode??)>
${prefixName} "parent_code" = :update_parentCode_value
<#assign prefixName = ','>
</#if>
<#if (update_parentTreeCode??)>
${prefixName} "parent_tree_code" = :update_parentTreeCode_value
<#assign prefixName = ','>
</#if>
<#if (update_parentTreeName??)>
${prefixName} "parent_tree_name" = :update_parentTreeName_value
<#assign prefixName = ','>
</#if>
<#if (update_personalCode??)>
${prefixName} "personal_code" = :update_personalCode_value
<#assign prefixName = ','>
</#if>
<#if (update_provinceCode??)>
${prefixName} "province_code" = :update_provinceCode_value
<#assign prefixName = ','>
</#if>
<#if (update_regionCode??)>
${prefixName} "region_code" = :update_regionCode_value
<#assign prefixName = ','>
</#if>
<#if (update_siteCode??)>
${prefixName} "site_code" = :update_siteCode_value
<#assign prefixName = ','>
</#if>
<#if (update_stateCode??)>
${prefixName} "state_code" = :update_stateCode_value
<#assign prefixName = ','>
</#if>
<#if (update_systemInfoCode??)>
${prefixName} "system_info_code" = :update_systemInfoCode_value
<#assign prefixName = ','>
</#if>
<#if (update_version??)>
${prefixName} "version_" = :update_version_value
<#assign prefixName = ','>
</#if>
<#include "where.ftl">