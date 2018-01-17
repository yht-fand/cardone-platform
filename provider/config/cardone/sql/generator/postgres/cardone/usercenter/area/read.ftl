SELECT
<#switch (object_id!)>
<#case "areaCode">
"area_code"
<#break>
<#case "areaId">
"area_id"
<#break>
<#case "batchNo">
"batch_no"
<#break>
<#case "beginDate">
"begin_date"
<#break>
<#case "cityCode">
"city_code"
<#break>
<#case "cityId">
"city_id"
<#break>
<#case "countryCode">
"country_code"
<#break>
<#case "createdByCode">
"created_by_code"
<#break>
<#case "createdById">
"created_by_id"
<#break>
<#case "createdDate">
"created_date"
<#break>
<#case "dataStateCode">
"data_state_code"
<#break>
<#case "departmentCode">
"department_code"
<#break>
<#case "endDate">
"end_date"
<#break>
<#case "flagCode">
"flag_code"
<#break>
<#case "flagObjectCode">
"flag_object_code"
<#break>
<#case "jsonData">
"json_data"
<#break>
<#case "lastModifiedByCode">
"last_modified_by_code"
<#break>
<#case "lastModifiedById">
"last_modified_by_id"
<#break>
<#case "lastModifiedDate">
"last_modified_date"
<#break>
<#case "name">
"name"
<#break>
<#case "orderBy">
"order_by_"
<#break>
<#case "orgCode">
"org_code"
<#break>
<#case "personalCode">
"personal_code"
<#break>
<#case "personalId">
"personal_id"
<#break>
<#case "provinceCode">
"province_code"
<#break>
<#case "provinceId">
"province_id"
<#break>
<#case "siteCode">
"site_code"
<#break>
<#case "stateCode">
"state_code"
<#break>
<#case "systemInfoCode">
"system_info_code"
<#break>
<#case "version">
"version_"
<#break>
<#default>
COUNT(*) AS COUNT_
</#switch>
FROM "c1_area"
<#include "where.ftl">