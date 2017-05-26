SELECT
<#switch (object_id!)>
<#case "areaCode">
"area_code"
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
<#case "countryCode">
"country_code"
<#break>
<#case "createdByCode">
"created_by_code"
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
<#case "parentCode">
"parent_code"
<#break>
<#case "parentTreeCode">
"parent_tree_code"
<#break>
<#case "parentTreeName">
"parent_tree_name"
<#break>
<#case "personalCode">
"personal_code"
<#break>
<#case "provinceCode">
"province_code"
<#break>
<#case "regionCode">
"region_code"
<#break>
<#case "regionId">
"region_id"
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
FROM c1_region
<#include "where.ftl">