SELECT
<#switch (object_id!)>
<#case "areaCode">
area_code AS areaCode
<#break>
<#case "beginDate">
begin_date AS beginDate
<#break>
<#case "cityCode">
city_code AS cityCode
<#break>
<#case "countryCode">
country_code AS countryCode
<#break>
<#case "createdByCode">
created_by_code AS createdByCode
<#break>
<#case "createdDate">
created_date AS createdDate
<#break>
<#case "dataStateCode">
data_state_code AS dataStateCode
<#break>
<#case "departmentCode">
department_code AS departmentCode
<#break>
<#case "endDate">
end_date AS endDate
<#break>
<#case "flagCode">
flag_code AS flagCode
<#break>
<#case "flagObjectCode">
flag_object_code AS flagObjectCode
<#break>
<#case "isDefault">
is_default AS isDefault
<#break>
<#case "jsonData">
json_data AS jsonData
<#break>
<#case "lastModifiedByCode">
last_modified_by_code AS lastModifiedByCode
<#break>
<#case "lastModifiedDate">
last_modified_date AS lastModifiedDate
<#break>
<#case "order">
order_ AS order
<#break>
<#case "orgCode">
org_code AS orgCode
<#break>
<#case "provinceCode">
province_code AS provinceCode
<#break>
<#case "regionCode">
region_code AS regionCode
<#break>
<#case "siteCode">
site_code AS siteCode
<#break>
<#case "stateCode">
state_code AS stateCode
<#break>
<#case "systemInfoCode">
system_info_code AS systemInfoCode
<#break>
<#case "typeCode">
type_code AS typeCode
<#break>
<#case "userAddressId">
user_address_id AS userAddressId
<#break>
<#case "userCode">
user_code AS userCode
<#break>
<#case "version">
version_ AS version
<#break>
<#default>
COUNT(1) AS COUNT_
</#switch>
FROM c1_user_address
<#include "where.ftl">