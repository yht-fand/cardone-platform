SELECT
<#assign prefixName = true>
<#if (select_address??)>
${prefixName?string('  ', ', ')}"address"
<#assign prefixName = false>
</#if>
<#if (select_areaCode??)>
${prefixName?string('  ', ', ')}"area_code"
<#assign prefixName = false>
</#if>
<#if (select_batchNo??)>
${prefixName?string('  ', ', ')}"batch_no"
<#assign prefixName = false>
</#if>
<#if (select_beginDate??)>
${prefixName?string('  ', ', ')}"begin_date"
<#assign prefixName = false>
</#if>
<#if (select_cityCode??)>
${prefixName?string('  ', ', ')}"city_code"
<#assign prefixName = false>
</#if>
<#if (select_countryCode??)>
${prefixName?string('  ', ', ')}"country_code"
<#assign prefixName = false>
</#if>
<#if (select_createdByCode??)>
${prefixName?string('  ', ', ')}"created_by_code"
<#assign prefixName = false>
</#if>
<#if (select_createdDate??)>
${prefixName?string('  ', ', ')}"created_date"
<#assign prefixName = false>
</#if>
<#if (select_dataStateCode??)>
${prefixName?string('  ', ', ')}"data_state_code"
<#assign prefixName = false>
</#if>
<#if (select_departmentCode??)>
${prefixName?string('  ', ', ')}"department_code"
<#assign prefixName = false>
</#if>
<#if (select_endDate??)>
${prefixName?string('  ', ', ')}"end_date"
<#assign prefixName = false>
</#if>
<#if (select_flagCode??)>
${prefixName?string('  ', ', ')}"flag_code"
<#assign prefixName = false>
</#if>
<#if (select_flagObjectCode??)>
${prefixName?string('  ', ', ')}"flag_object_code"
<#assign prefixName = false>
</#if>
<#if (select_isDefault??)>
${prefixName?string('  ', ', ')}"is_default"
<#assign prefixName = false>
</#if>
<#if (select_jsonData??)>
${prefixName?string('  ', ', ')}"json_data"
<#assign prefixName = false>
</#if>
<#if (select_lastModifiedByCode??)>
${prefixName?string('  ', ', ')}"last_modified_by_code"
<#assign prefixName = false>
</#if>
<#if (select_lastModifiedDate??)>
${prefixName?string('  ', ', ')}"last_modified_date"
<#assign prefixName = false>
</#if>
<#if (select_orderBy??)>
${prefixName?string('  ', ', ')}"order_by_"
<#assign prefixName = false>
</#if>
<#if (select_orgCode??)>
${prefixName?string('  ', ', ')}"org_code"
<#assign prefixName = false>
</#if>
<#if (select_personalCode??)>
${prefixName?string('  ', ', ')}"personal_code"
<#assign prefixName = false>
</#if>
<#if (select_provinceCode??)>
${prefixName?string('  ', ', ')}"province_code"
<#assign prefixName = false>
</#if>
<#if (select_regionCode??)>
${prefixName?string('  ', ', ')}"region_code"
<#assign prefixName = false>
</#if>
<#if (select_siteCode??)>
${prefixName?string('  ', ', ')}"site_code"
<#assign prefixName = false>
</#if>
<#if (select_stateCode??)>
${prefixName?string('  ', ', ')}"state_code"
<#assign prefixName = false>
</#if>
<#if (select_systemInfoCode??)>
${prefixName?string('  ', ', ')}"system_info_code"
<#assign prefixName = false>
</#if>
<#if (select_typeCode??)>
${prefixName?string('  ', ', ')}"type_code"
<#assign prefixName = false>
</#if>
<#if (select_userAddressId??)>
${prefixName?string('  ', ', ')}"user_address_id"
<#assign prefixName = false>
</#if>
<#if (select_userCode??)>
${prefixName?string('  ', ', ')}"user_code"
<#assign prefixName = false>
</#if>
<#if (select_version??)>
${prefixName?string('  ', ', ')}"version_"
<#assign prefixName = false>
</#if>
*
</#if>
FROM c1_user_address
<#include "where.ftl">
<#assign prefixName = true>
<#if (order_by_address??)>
${prefixName?string('ORDER BY ', ', ')}"address" ${order_by_address_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_areaCode??)>
${prefixName?string('ORDER BY ', ', ')}"area_code" ${order_by_areaCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_batchNo??)>
${prefixName?string('ORDER BY ', ', ')}"batch_no" ${order_by_batchNo_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_beginDate??)>
${prefixName?string('ORDER BY ', ', ')}"begin_date" ${order_by_beginDate_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_cityCode??)>
${prefixName?string('ORDER BY ', ', ')}"city_code" ${order_by_cityCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_countryCode??)>
${prefixName?string('ORDER BY ', ', ')}"country_code" ${order_by_countryCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_createdByCode??)>
${prefixName?string('ORDER BY ', ', ')}"created_by_code" ${order_by_createdByCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_createdDate??)>
${prefixName?string('ORDER BY ', ', ')}"created_date" ${order_by_createdDate_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_dataStateCode??)>
${prefixName?string('ORDER BY ', ', ')}"data_state_code" ${order_by_dataStateCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_departmentCode??)>
${prefixName?string('ORDER BY ', ', ')}"department_code" ${order_by_departmentCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_endDate??)>
${prefixName?string('ORDER BY ', ', ')}"end_date" ${order_by_endDate_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_flagCode??)>
${prefixName?string('ORDER BY ', ', ')}"flag_code" ${order_by_flagCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_flagObjectCode??)>
${prefixName?string('ORDER BY ', ', ')}"flag_object_code" ${order_by_flagObjectCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_isDefault??)>
${prefixName?string('ORDER BY ', ', ')}"is_default" ${order_by_isDefault_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_jsonData??)>
${prefixName?string('ORDER BY ', ', ')}"json_data" ${order_by_jsonData_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_lastModifiedByCode??)>
${prefixName?string('ORDER BY ', ', ')}"last_modified_by_code" ${order_by_lastModifiedByCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_lastModifiedDate??)>
${prefixName?string('ORDER BY ', ', ')}"last_modified_date" ${order_by_lastModifiedDate_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_orderBy??)>
${prefixName?string('ORDER BY ', ', ')}"order_by_" ${order_by_orderBy_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_orgCode??)>
${prefixName?string('ORDER BY ', ', ')}"org_code" ${order_by_orgCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_personalCode??)>
${prefixName?string('ORDER BY ', ', ')}"personal_code" ${order_by_personalCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_provinceCode??)>
${prefixName?string('ORDER BY ', ', ')}"province_code" ${order_by_provinceCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_regionCode??)>
${prefixName?string('ORDER BY ', ', ')}"region_code" ${order_by_regionCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_siteCode??)>
${prefixName?string('ORDER BY ', ', ')}"site_code" ${order_by_siteCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_stateCode??)>
${prefixName?string('ORDER BY ', ', ')}"state_code" ${order_by_stateCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_systemInfoCode??)>
${prefixName?string('ORDER BY ', ', ')}"system_info_code" ${order_by_systemInfoCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_typeCode??)>
${prefixName?string('ORDER BY ', ', ')}"type_code" ${order_by_typeCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_userAddressId??)>
${prefixName?string('ORDER BY ', ', ')}"user_address_id" ${order_by_userAddressId_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_userCode??)>
${prefixName?string('ORDER BY ', ', ')}"user_code" ${order_by_userCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_version??)>
${prefixName?string('ORDER BY ', ', ')}"version_" ${order_by_version_value!}
<#assign prefixName = false>
</#if>
