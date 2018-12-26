SELECT
<#switch (object_id!)>
<#case "address">
"address"
<#break>
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
<#case "compatibleDepartmentCode1">
"compatible_department_code_1"
<#break>
<#case "compatibleDepartmentCode2">
"compatible_department_code_2"
<#break>
<#case "compatibleParentCode1">
"compatible_parent_code_1"
<#break>
<#case "compatibleParentCode2">
"compatible_parent_code_2"
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
<#case "departmentId">
"department_id"
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
<#case "lastSyncTime">
"last_sync_time"
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
<#case "orgId">
"org_id"
<#break>
<#case "parentCode">
"parent_code"
<#break>
<#case "parentId">
"parent_id"
<#break>
<#case "parentTreeCode">
"parent_tree_code"
<#break>
<#case "parentTreeId">
"parent_tree_id"
<#break>
<#case "parentTreeName">
"parent_tree_name"
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
<#case "regionCode">
"region_code"
<#break>
<#case "siteCode">
"site_code"
<#break>
<#case "sourceCode">
"source_code"
<#break>
<#case "stateCode">
"state_code"
<#break>
<#case "syncReturnCode">
"sync_return_code"
<#break>
<#case "syncReturnMessage">
"sync_return_message"
<#break>
<#case "systemInfoCode">
"system_info_code"
<#break>
<#case "thirdPartyCode">
"third_party_code"
<#break>
<#case "version">
"version_"
<#break>
<#default>
COUNT(*) AS COUNT_
</#switch>
FROM "c1_department"
<#include "where.ftl">