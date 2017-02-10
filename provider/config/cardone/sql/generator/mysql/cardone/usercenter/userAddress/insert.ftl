INSERT
INTO c1_user_address
(<#assign prefixName = ' '>
<#if (insert_areaCode??) && (insert_areaCode_value??)>
${prefixName} `AREA_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_beginDate??) && (insert_beginDate_value??)>
${prefixName} `BEGIN_DATE`
<#assign prefixName = ','>
</#if>
<#if (insert_cityCode??) && (insert_cityCode_value??)>
${prefixName} `CITY_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_countryCode??) && (insert_countryCode_value??)>
${prefixName} `COUNTRY_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_createdByCode??) && (insert_createdByCode_value??)>
${prefixName} `CREATED_BY_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_createdDate??) && (insert_createdDate_value??)>
${prefixName} `CREATED_DATE`
<#assign prefixName = ','>
</#if>
<#if (insert_dataStateCode??) && (insert_dataStateCode_value??)>
${prefixName} `DATA_STATE_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_departmentCode??) && (insert_departmentCode_value??)>
${prefixName} `DEPARTMENT_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_endDate??) && (insert_endDate_value??)>
${prefixName} `END_DATE`
<#assign prefixName = ','>
</#if>
<#if (insert_flagCode??) && (insert_flagCode_value??)>
${prefixName} `FLAG_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_flagObjectCode??) && (insert_flagObjectCode_value??)>
${prefixName} `FLAG_OBJECT_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_isDefault??) && (insert_isDefault_value??)>
${prefixName} `IS_DEFAULT`
<#assign prefixName = ','>
</#if>
<#if (insert_jsonData??) && (insert_jsonData_value??)>
${prefixName} `JSON_DATA`
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedByCode??) && (insert_lastModifiedByCode_value??)>
${prefixName} `LAST_MODIFIED_BY_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedDate??) && (insert_lastModifiedDate_value??)>
${prefixName} `LAST_MODIFIED_DATE`
<#assign prefixName = ','>
</#if>
<#if (insert_order??) && (insert_order_value??)>
${prefixName} `ORDER_`
<#assign prefixName = ','>
</#if>
<#if (insert_orgCode??) && (insert_orgCode_value??)>
${prefixName} `ORG_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_provinceCode??) && (insert_provinceCode_value??)>
${prefixName} `PROVINCE_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_regionCode??) && (insert_regionCode_value??)>
${prefixName} `REGION_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_siteCode??) && (insert_siteCode_value??)>
${prefixName} `SITE_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_stateCode??) && (insert_stateCode_value??)>
${prefixName} `STATE_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_systemInfoCode??) && (insert_systemInfoCode_value??)>
${prefixName} `SYSTEM_INFO_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_typeCode??) && (insert_typeCode_value??)>
${prefixName} `TYPE_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_userAddressId??) && (insert_userAddressId_value??)>
${prefixName} `USER_ADDRESS_ID`
<#assign prefixName = ','>
</#if>
<#if (insert_userCode??) && (insert_userCode_value??)>
${prefixName} `USER_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_version??) && (insert_version_value??)>
${prefixName} `VERSION_`
<#assign prefixName = ','>
</#if>
)
VALUES
(<#assign prefixName = ' '>
<#if (insert_areaCode??) && (insert_areaCode_value??)>
${prefixName} :insert_areaCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_beginDate??) && (insert_beginDate_value??)>
${prefixName} :insert_beginDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_cityCode??) && (insert_cityCode_value??)>
${prefixName} :insert_cityCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_countryCode??) && (insert_countryCode_value??)>
${prefixName} :insert_countryCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_createdByCode??) && (insert_createdByCode_value??)>
${prefixName} :insert_createdByCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_createdDate??) && (insert_createdDate_value??)>
${prefixName} :insert_createdDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_dataStateCode??) && (insert_dataStateCode_value??)>
${prefixName} :insert_dataStateCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_departmentCode??) && (insert_departmentCode_value??)>
${prefixName} :insert_departmentCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_endDate??) && (insert_endDate_value??)>
${prefixName} :insert_endDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_flagCode??) && (insert_flagCode_value??)>
${prefixName} :insert_flagCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_flagObjectCode??) && (insert_flagObjectCode_value??)>
${prefixName} :insert_flagObjectCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_isDefault??) && (insert_isDefault_value??)>
${prefixName} :insert_isDefault_value
<#assign prefixName = ','>
</#if>
<#if (insert_jsonData??) && (insert_jsonData_value??)>
${prefixName} :insert_jsonData_value
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedByCode??) && (insert_lastModifiedByCode_value??)>
${prefixName} :insert_lastModifiedByCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedDate??) && (insert_lastModifiedDate_value??)>
${prefixName} :insert_lastModifiedDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_order??) && (insert_order_value??)>
${prefixName} :insert_order_value
<#assign prefixName = ','>
</#if>
<#if (insert_orgCode??) && (insert_orgCode_value??)>
${prefixName} :insert_orgCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_provinceCode??) && (insert_provinceCode_value??)>
${prefixName} :insert_provinceCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_regionCode??) && (insert_regionCode_value??)>
${prefixName} :insert_regionCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_siteCode??) && (insert_siteCode_value??)>
${prefixName} :insert_siteCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_stateCode??) && (insert_stateCode_value??)>
${prefixName} :insert_stateCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_systemInfoCode??) && (insert_systemInfoCode_value??)>
${prefixName} :insert_systemInfoCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_typeCode??) && (insert_typeCode_value??)>
${prefixName} :insert_typeCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_userAddressId??) && (insert_userAddressId_value??)>
${prefixName} :insert_userAddressId_value
<#assign prefixName = ','>
</#if>
<#if (insert_userCode??) && (insert_userCode_value??)>
${prefixName} :insert_userCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_version??) && (insert_version_value??)>
${prefixName} :insert_version_value
<#assign prefixName = ','>
</#if>
)