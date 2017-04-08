SELECT
<#switch (object_id!)>
<#case "address">
address AS address
<#break>
<#case "areaCode">
area_code AS areaCode
<#break>
<#case "beginDate">
begin_date AS beginDate
<#break>
<#case "cityCode">
city_code AS cityCode
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
<#case "departmentId">
department_id AS departmentId
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
<#case "jsonData">
json_data AS jsonData
<#break>
<#case "lastModifiedByCode">
last_modified_by_code AS lastModifiedByCode
<#break>
<#case "lastModifiedDate">
last_modified_date AS lastModifiedDate
<#break>
<#case "name">
name AS name
<#break>
<#case "order">
order_ AS order
<#break>
<#case "orgCode">
org_code AS orgCode
<#break>
<#case "parentCode">
parent_code AS parentCode
<#break>
<#case "parentTreeCode">
parent_tree_code AS parentTreeCode
<#break>
<#case "parentTreeName">
parent_tree_name AS parentTreeName
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
<#case "version">
version_ AS version
<#break>
<#default>
COUNT(1) AS COUNT_
</#switch>
FROM c1_department
<#include "where.ftl">