SELECT
<#switch (object_id!)>
<#case "address">
"address"
<#break>
<#case "age">
"age"
<#break>
<#case "aliasName">
"alias_name"
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
<#case "birthday">
"birthday"
<#break>
<#case "callName">
"call_name"
<#break>
<#case "cityCode">
"city_code"
<#break>
<#case "companyName">
"company_name"
<#break>
<#case "compatibleDepartmentCode1">
"compatible_department_code_1"
<#break>
<#case "compatibleDepartmentCode2">
"compatible_department_code_2"
<#break>
<#case "compatiblePassword1">
"compatible_password_1"
<#break>
<#case "compatiblePassword2">
"compatible_password_2"
<#break>
<#case "compatibleUserCode1">
"compatible_user_code_1"
<#break>
<#case "compatibleUserCode2">
"compatible_user_code_2"
<#break>
<#case "contact">
"contact"
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
<#case "departmentId">
"department_id"
<#break>
<#case "diplomaCode">
"diploma_code"
<#break>
<#case "email">
"email"
<#break>
<#case "endDate">
"end_date"
<#break>
<#case "firstName">
"first_name"
<#break>
<#case "flagCode">
"flag_code"
<#break>
<#case "flagObjectCode">
"flag_object_code"
<#break>
<#case "folkCode">
"folk_code"
<#break>
<#case "idCardCode">
"id_card_code"
<#break>
<#case "idCardNo">
"id_card_no"
<#break>
<#case "intro">
"intro"
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
<#case "lastName">
"last_name"
<#break>
<#case "lastSyncTime">
"last_sync_time"
<#break>
<#case "locus">
"locus"
<#break>
<#case "marryStateCode">
"marry_state_code"
<#break>
<#case "mobilePhone">
"mobile_phone"
<#break>
<#case "name">
"name"
<#break>
<#case "namePinyin">
"name_pinyin"
<#break>
<#case "orderBy">
"order_by_"
<#break>
<#case "orgCode">
"org_code"
<#break>
<#case "password">
"password_"
<#break>
<#case "passwordSalt">
"password_salt"
<#break>
<#case "personalCode">
"personal_code"
<#break>
<#case "personalId">
"personal_id"
<#break>
<#case "portraitUrl">
"portrait_url"
<#break>
<#case "privatePassword">
"private_password"
<#break>
<#case "privatePasswordSalt">
"private_password_salt"
<#break>
<#case "professionCode">
"profession_code"
<#break>
<#case "provinceCode">
"province_code"
<#break>
<#case "qq">
"qq"
<#break>
<#case "regionCode">
"region_code"
<#break>
<#case "remark">
"remark"
<#break>
<#case "sexCode">
"sex_code"
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
<#case "telephone">
"telephone"
<#break>
<#case "thirdPartyCode">
"third_party_code"
<#break>
<#case "userCode">
"user_code"
<#break>
<#case "userId">
"user_id"
<#break>
<#case "version">
"version_"
<#break>
<#default>
COUNT(*) AS COUNT_
</#switch>
FROM "c1_user"
<#include "where.ftl">