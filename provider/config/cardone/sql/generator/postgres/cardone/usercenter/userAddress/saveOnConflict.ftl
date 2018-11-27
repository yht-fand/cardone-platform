<#include "insert.ftl">
on conflict (
<#assign prefixName = true>
<#if (index_address??)>
${prefixName?string('', ', ')}"address"
</#if>
<#assign prefixName = false>
<#if (index_areaCode??)>
${prefixName?string('', ', ')}"area_code"
</#if>
<#assign prefixName = false>
<#if (index_areaId??)>
${prefixName?string('', ', ')}"area_id"
</#if>
<#assign prefixName = false>
<#if (index_batchNo??)>
${prefixName?string('', ', ')}"batch_no"
</#if>
<#assign prefixName = false>
<#if (index_beginDate??)>
${prefixName?string('', ', ')}"begin_date"
</#if>
<#assign prefixName = false>
<#if (index_cityCode??)>
${prefixName?string('', ', ')}"city_code"
</#if>
<#assign prefixName = false>
<#if (index_cityId??)>
${prefixName?string('', ', ')}"city_id"
</#if>
<#assign prefixName = false>
<#if (index_countryCode??)>
${prefixName?string('', ', ')}"country_code"
</#if>
<#assign prefixName = false>
<#if (index_createdByCode??)>
${prefixName?string('', ', ')}"created_by_code"
</#if>
<#assign prefixName = false>
<#if (index_createdById??)>
${prefixName?string('', ', ')}"created_by_id"
</#if>
<#assign prefixName = false>
<#if (index_createdDate??)>
${prefixName?string('', ', ')}"created_date"
</#if>
<#assign prefixName = false>
<#if (index_dataStateCode??)>
${prefixName?string('', ', ')}"data_state_code"
</#if>
<#assign prefixName = false>
<#if (index_departmentCode??)>
${prefixName?string('', ', ')}"department_code"
</#if>
<#assign prefixName = false>
<#if (index_endDate??)>
${prefixName?string('', ', ')}"end_date"
</#if>
<#assign prefixName = false>
<#if (index_flagCode??)>
${prefixName?string('', ', ')}"flag_code"
</#if>
<#assign prefixName = false>
<#if (index_flagObjectCode??)>
${prefixName?string('', ', ')}"flag_object_code"
</#if>
<#assign prefixName = false>
<#if (index_isDefault??)>
${prefixName?string('', ', ')}"is_default"
</#if>
<#assign prefixName = false>
<#if (index_jsonData??)>
${prefixName?string('', ', ')}"json_data"
</#if>
<#assign prefixName = false>
<#if (index_lastModifiedByCode??)>
${prefixName?string('', ', ')}"last_modified_by_code"
</#if>
<#assign prefixName = false>
<#if (index_lastModifiedById??)>
${prefixName?string('', ', ')}"last_modified_by_id"
</#if>
<#assign prefixName = false>
<#if (index_lastModifiedDate??)>
${prefixName?string('', ', ')}"last_modified_date"
</#if>
<#assign prefixName = false>
<#if (index_orderBy??)>
${prefixName?string('', ', ')}"order_by_"
</#if>
<#assign prefixName = false>
<#if (index_orgCode??)>
${prefixName?string('', ', ')}"org_code"
</#if>
<#assign prefixName = false>
<#if (index_personalCode??)>
${prefixName?string('', ', ')}"personal_code"
</#if>
<#assign prefixName = false>
<#if (index_personalId??)>
${prefixName?string('', ', ')}"personal_id"
</#if>
<#assign prefixName = false>
<#if (index_provinceCode??)>
${prefixName?string('', ', ')}"province_code"
</#if>
<#assign prefixName = false>
<#if (index_provinceId??)>
${prefixName?string('', ', ')}"province_id"
</#if>
<#assign prefixName = false>
<#if (index_regionCode??)>
${prefixName?string('', ', ')}"region_code"
</#if>
<#assign prefixName = false>
<#if (index_regionId??)>
${prefixName?string('', ', ')}"region_id"
</#if>
<#assign prefixName = false>
<#if (index_siteCode??)>
${prefixName?string('', ', ')}"site_code"
</#if>
<#assign prefixName = false>
<#if (index_stateCode??)>
${prefixName?string('', ', ')}"state_code"
</#if>
<#assign prefixName = false>
<#if (index_systemInfoCode??)>
${prefixName?string('', ', ')}"system_info_code"
</#if>
<#assign prefixName = false>
<#if (index_typeCode??)>
${prefixName?string('', ', ')}"type_code"
</#if>
<#assign prefixName = false>
<#if (index_userAddressId??)>
${prefixName?string('', ', ')}"user_address_id"
</#if>
<#assign prefixName = false>
<#if (index_userCode??)>
${prefixName?string('', ', ')}"user_code"
</#if>
<#assign prefixName = false>
<#if (index_userId??)>
${prefixName?string('', ', ')}"user_id"
</#if>
<#assign prefixName = false>
<#if (index_version??)>
${prefixName?string('', ', ')}"version_"
</#if>
<#assign prefixName = false>
) do update set
<#assign prefixName = true>
<#if (update_address??)>
${prefixName?string('', ', ')}"address" = :update_address_value
<#assign prefixName = false>
</#if>
<#if (update_areaCode??)>
${prefixName?string('', ', ')}"area_code" = :update_areaCode_value
<#assign prefixName = false>
</#if>
<#if (update_areaId??)>
${prefixName?string('', ', ')}"area_id" = :update_areaId_value
<#assign prefixName = false>
</#if>
<#if (update_batchNo??)>
${prefixName?string('', ', ')}"batch_no" = :update_batchNo_value
<#assign prefixName = false>
</#if>
<#if (update_beginDate??)>
${prefixName?string('', ', ')}"begin_date" = :update_beginDate_value
<#assign prefixName = false>
</#if>
<#if (update_cityCode??)>
${prefixName?string('', ', ')}"city_code" = :update_cityCode_value
<#assign prefixName = false>
</#if>
<#if (update_cityId??)>
${prefixName?string('', ', ')}"city_id" = :update_cityId_value
<#assign prefixName = false>
</#if>
<#if (update_countryCode??)>
${prefixName?string('', ', ')}"country_code" = :update_countryCode_value
<#assign prefixName = false>
</#if>
<#if (update_createdByCode??)>
${prefixName?string('', ', ')}"created_by_code" = :update_createdByCode_value
<#assign prefixName = false>
</#if>
<#if (update_createdById??)>
${prefixName?string('', ', ')}"created_by_id" = :update_createdById_value
<#assign prefixName = false>
</#if>
<#if (update_createdDate??)>
${prefixName?string('', ', ')}"created_date" = :update_createdDate_value
<#assign prefixName = false>
</#if>
<#if (update_dataStateCode??)>
${prefixName?string('', ', ')}"data_state_code" = :update_dataStateCode_value
<#assign prefixName = false>
</#if>
<#if (update_departmentCode??)>
${prefixName?string('', ', ')}"department_code" = :update_departmentCode_value
<#assign prefixName = false>
</#if>
<#if (update_endDate??)>
${prefixName?string('', ', ')}"end_date" = :update_endDate_value
<#assign prefixName = false>
</#if>
<#if (update_flagCode??)>
${prefixName?string('', ', ')}"flag_code" = :update_flagCode_value
<#assign prefixName = false>
</#if>
<#if (update_flagObjectCode??)>
${prefixName?string('', ', ')}"flag_object_code" = :update_flagObjectCode_value
<#assign prefixName = false>
</#if>
<#if (update_isDefault??)>
${prefixName?string('', ', ')}"is_default" = :update_isDefault_value
<#assign prefixName = false>
</#if>
<#if (update_jsonData??)>
${prefixName?string('', ', ')}"json_data" = :update_jsonData_value
<#assign prefixName = false>
</#if>
<#if (update_lastModifiedByCode??)>
${prefixName?string('', ', ')}"last_modified_by_code" = :update_lastModifiedByCode_value
<#assign prefixName = false>
</#if>
<#if (update_lastModifiedById??)>
${prefixName?string('', ', ')}"last_modified_by_id" = :update_lastModifiedById_value
<#assign prefixName = false>
</#if>
<#if (update_lastModifiedDate??)>
${prefixName?string('', ', ')}"last_modified_date" = :update_lastModifiedDate_value
<#assign prefixName = false>
</#if>
<#if (update_orderBy??)>
${prefixName?string('', ', ')}"order_by_" = :update_orderBy_value
<#assign prefixName = false>
</#if>
<#if (update_orgCode??)>
${prefixName?string('', ', ')}"org_code" = :update_orgCode_value
<#assign prefixName = false>
</#if>
<#if (update_personalCode??)>
${prefixName?string('', ', ')}"personal_code" = :update_personalCode_value
<#assign prefixName = false>
</#if>
<#if (update_personalId??)>
${prefixName?string('', ', ')}"personal_id" = :update_personalId_value
<#assign prefixName = false>
</#if>
<#if (update_provinceCode??)>
${prefixName?string('', ', ')}"province_code" = :update_provinceCode_value
<#assign prefixName = false>
</#if>
<#if (update_provinceId??)>
${prefixName?string('', ', ')}"province_id" = :update_provinceId_value
<#assign prefixName = false>
</#if>
<#if (update_regionCode??)>
${prefixName?string('', ', ')}"region_code" = :update_regionCode_value
<#assign prefixName = false>
</#if>
<#if (update_regionId??)>
${prefixName?string('', ', ')}"region_id" = :update_regionId_value
<#assign prefixName = false>
</#if>
<#if (update_siteCode??)>
${prefixName?string('', ', ')}"site_code" = :update_siteCode_value
<#assign prefixName = false>
</#if>
<#if (update_stateCode??)>
${prefixName?string('', ', ')}"state_code" = :update_stateCode_value
<#assign prefixName = false>
</#if>
<#if (update_systemInfoCode??)>
${prefixName?string('', ', ')}"system_info_code" = :update_systemInfoCode_value
<#assign prefixName = false>
</#if>
<#if (update_typeCode??)>
${prefixName?string('', ', ')}"type_code" = :update_typeCode_value
<#assign prefixName = false>
</#if>
<#if (update_userAddressId??)>
${prefixName?string('', ', ')}"user_address_id" = :update_userAddressId_value
<#assign prefixName = false>
</#if>
<#if (update_userCode??)>
${prefixName?string('', ', ')}"user_code" = :update_userCode_value
<#assign prefixName = false>
</#if>
<#if (update_userId??)>
${prefixName?string('', ', ')}"user_id" = :update_userId_value
<#assign prefixName = false>
</#if>
<#if (update_version??)>
${prefixName?string('', ', ')}"version_" = :update_version_value
<#assign prefixName = false>
</#if>
