SELECT
<#switch (object_id!)>
<#case "address">
address AS address
<#break>
<#case "age">
age AS age
<#break>
<#case "aliasName">
alias_name AS aliasName
<#break>
<#case "areaCode">
area_code AS areaCode
<#break>
<#case "beginDate">
begin_date AS beginDate
<#break>
<#case "birthday">
birthday AS birthday
<#break>
<#case "callName">
call_name AS callName
<#break>
<#case "cityCode">
city_code AS cityCode
<#break>
<#case "companyName">
company_name AS companyName
<#break>
<#case "contact">
contact AS contact
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
<#case "diplomaCode">
diploma_code AS diplomaCode
<#break>
<#case "email">
email AS email
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
<#case "folkCode">
folk_code AS folkCode
<#break>
<#case "idCardCode">
id_card_code AS idCardCode
<#break>
<#case "idCardNo">
id_card_no AS idCardNo
<#break>
<#case "intro">
intro AS intro
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
<#case "locus">
locus AS locus
<#break>
<#case "marryStateCode">
marry_state_code AS marryStateCode
<#break>
<#case "mobilePhone">
mobile_phone AS mobilePhone
<#break>
<#case "name">
name AS name
<#break>
<#case "namePinyin">
name_pinyin AS namePinyin
<#break>
<#case "order">
order_ AS order
<#break>
<#case "orgCode">
org_code AS orgCode
<#break>
<#case "password">
password_ AS password
<#break>
<#case "passwordSalt">
password_salt AS passwordSalt
<#break>
<#case "portraitUrl">
portrait_url AS portraitUrl
<#break>
<#case "privatePassword">
private_password AS privatePassword
<#break>
<#case "privatePasswordSalt">
private_password_salt AS privatePasswordSalt
<#break>
<#case "professionCode">
profession_code AS professionCode
<#break>
<#case "provinceCode">
province_code AS provinceCode
<#break>
<#case "qq">
qq AS qq
<#break>
<#case "regionCode">
region_code AS regionCode
<#break>
<#case "remark">
remark AS remark
<#break>
<#case "sexCode">
sex_code AS sexCode
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
<#case "telephone">
telephone AS telephone
<#break>
<#case "userCode">
user_code AS userCode
<#break>
<#case "userId">
user_id AS userId
<#break>
<#case "version">
version_ AS version
<#break>
<#default>
COUNT(1) AS COUNT_
</#switch>
FROM c1_user
<#include "where.ftl">