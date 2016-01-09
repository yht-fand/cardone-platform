<#assign prefixName = 'WHERE'>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_address??)>
<#if (where_and_eq_address_value??)>
${prefixName} `ADDRESS` = :where_and_eq_address_value
<#else>
${prefixName} `ADDRESS` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_address??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_address_value??)>
${prefixName} `ADDRESS` <> :where_and_nq_address_value
<#else>
${prefixName} `ADDRESS` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_address??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_address_value??)>
${prefixName} `ADDRESS` <> :where_and_like_address_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_address??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_address_value??)>
${prefixName} `ADDRESS` = :where_or_eq_address_value
<#else>
${prefixName} `ADDRESS` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_address??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_address_value??)>
${prefixName} `ADDRESS` <> :where_or_nq_address_value
<#else>
${prefixName} `ADDRESS` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_address??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_address_value??)>
${prefixName} `ADDRESS` like :where_or_like_address_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_age??)>
<#if (where_and_eq_age_value??)>
${prefixName} `AGE` = :where_and_eq_age_value
<#else>
${prefixName} `AGE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_age??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_age_value??)>
${prefixName} `AGE` <> :where_and_nq_age_value
<#else>
${prefixName} `AGE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_age??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_age_value??)>
${prefixName} `AGE` <> :where_and_like_age_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_age??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_age_value??)>
${prefixName} `AGE` = :where_or_eq_age_value
<#else>
${prefixName} `AGE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_age??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_age_value??)>
${prefixName} `AGE` <> :where_or_nq_age_value
<#else>
${prefixName} `AGE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_age??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_age_value??)>
${prefixName} `AGE` like :where_or_like_age_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_areaCode??)>
<#if (where_and_eq_areaCode_value??)>
${prefixName} `AREA_CODE` = :where_and_eq_areaCode_value
<#else>
${prefixName} `AREA_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_areaCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_areaCode_value??)>
${prefixName} `AREA_CODE` <> :where_and_nq_areaCode_value
<#else>
${prefixName} `AREA_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_areaCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_areaCode_value??)>
${prefixName} `AREA_CODE` <> :where_and_like_areaCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_areaCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_areaCode_value??)>
${prefixName} `AREA_CODE` = :where_or_eq_areaCode_value
<#else>
${prefixName} `AREA_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_areaCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_areaCode_value??)>
${prefixName} `AREA_CODE` <> :where_or_nq_areaCode_value
<#else>
${prefixName} `AREA_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_areaCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_areaCode_value??)>
${prefixName} `AREA_CODE` like :where_or_like_areaCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_beginDate??)>
<#if (where_and_eq_beginDate_value??)>
${prefixName} `BEGIN_DATE` = :where_and_eq_beginDate_value
<#else>
${prefixName} `BEGIN_DATE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_beginDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_beginDate_value??)>
${prefixName} `BEGIN_DATE` <> :where_and_nq_beginDate_value
<#else>
${prefixName} `BEGIN_DATE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_beginDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_beginDate_value??)>
${prefixName} `BEGIN_DATE` <> :where_and_like_beginDate_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_beginDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_beginDate_value??)>
${prefixName} `BEGIN_DATE` = :where_or_eq_beginDate_value
<#else>
${prefixName} `BEGIN_DATE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_beginDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_beginDate_value??)>
${prefixName} `BEGIN_DATE` <> :where_or_nq_beginDate_value
<#else>
${prefixName} `BEGIN_DATE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_beginDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_beginDate_value??)>
${prefixName} `BEGIN_DATE` like :where_or_like_beginDate_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_birthday??)>
<#if (where_and_eq_birthday_value??)>
${prefixName} `BIRTHDAY` = :where_and_eq_birthday_value
<#else>
${prefixName} `BIRTHDAY` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_birthday??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_birthday_value??)>
${prefixName} `BIRTHDAY` <> :where_and_nq_birthday_value
<#else>
${prefixName} `BIRTHDAY` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_birthday??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_birthday_value??)>
${prefixName} `BIRTHDAY` <> :where_and_like_birthday_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_birthday??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_birthday_value??)>
${prefixName} `BIRTHDAY` = :where_or_eq_birthday_value
<#else>
${prefixName} `BIRTHDAY` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_birthday??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_birthday_value??)>
${prefixName} `BIRTHDAY` <> :where_or_nq_birthday_value
<#else>
${prefixName} `BIRTHDAY` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_birthday??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_birthday_value??)>
${prefixName} `BIRTHDAY` like :where_or_like_birthday_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_callName??)>
<#if (where_and_eq_callName_value??)>
${prefixName} `CALL_NAME` = :where_and_eq_callName_value
<#else>
${prefixName} `CALL_NAME` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_callName??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_callName_value??)>
${prefixName} `CALL_NAME` <> :where_and_nq_callName_value
<#else>
${prefixName} `CALL_NAME` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_callName??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_callName_value??)>
${prefixName} `CALL_NAME` <> :where_and_like_callName_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_callName??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_callName_value??)>
${prefixName} `CALL_NAME` = :where_or_eq_callName_value
<#else>
${prefixName} `CALL_NAME` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_callName??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_callName_value??)>
${prefixName} `CALL_NAME` <> :where_or_nq_callName_value
<#else>
${prefixName} `CALL_NAME` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_callName??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_callName_value??)>
${prefixName} `CALL_NAME` like :where_or_like_callName_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_cityCode??)>
<#if (where_and_eq_cityCode_value??)>
${prefixName} `CITY_CODE` = :where_and_eq_cityCode_value
<#else>
${prefixName} `CITY_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_cityCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_cityCode_value??)>
${prefixName} `CITY_CODE` <> :where_and_nq_cityCode_value
<#else>
${prefixName} `CITY_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_cityCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_cityCode_value??)>
${prefixName} `CITY_CODE` <> :where_and_like_cityCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_cityCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_cityCode_value??)>
${prefixName} `CITY_CODE` = :where_or_eq_cityCode_value
<#else>
${prefixName} `CITY_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_cityCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_cityCode_value??)>
${prefixName} `CITY_CODE` <> :where_or_nq_cityCode_value
<#else>
${prefixName} `CITY_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_cityCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_cityCode_value??)>
${prefixName} `CITY_CODE` like :where_or_like_cityCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_companyName??)>
<#if (where_and_eq_companyName_value??)>
${prefixName} `COMPANY_NAME` = :where_and_eq_companyName_value
<#else>
${prefixName} `COMPANY_NAME` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_companyName??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_companyName_value??)>
${prefixName} `COMPANY_NAME` <> :where_and_nq_companyName_value
<#else>
${prefixName} `COMPANY_NAME` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_companyName??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_companyName_value??)>
${prefixName} `COMPANY_NAME` <> :where_and_like_companyName_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_companyName??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_companyName_value??)>
${prefixName} `COMPANY_NAME` = :where_or_eq_companyName_value
<#else>
${prefixName} `COMPANY_NAME` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_companyName??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_companyName_value??)>
${prefixName} `COMPANY_NAME` <> :where_or_nq_companyName_value
<#else>
${prefixName} `COMPANY_NAME` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_companyName??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_companyName_value??)>
${prefixName} `COMPANY_NAME` like :where_or_like_companyName_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_countryCode??)>
<#if (where_and_eq_countryCode_value??)>
${prefixName} `COUNTRY_CODE` = :where_and_eq_countryCode_value
<#else>
${prefixName} `COUNTRY_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_countryCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_countryCode_value??)>
${prefixName} `COUNTRY_CODE` <> :where_and_nq_countryCode_value
<#else>
${prefixName} `COUNTRY_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_countryCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_countryCode_value??)>
${prefixName} `COUNTRY_CODE` <> :where_and_like_countryCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_countryCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_countryCode_value??)>
${prefixName} `COUNTRY_CODE` = :where_or_eq_countryCode_value
<#else>
${prefixName} `COUNTRY_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_countryCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_countryCode_value??)>
${prefixName} `COUNTRY_CODE` <> :where_or_nq_countryCode_value
<#else>
${prefixName} `COUNTRY_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_countryCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_countryCode_value??)>
${prefixName} `COUNTRY_CODE` like :where_or_like_countryCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_createdByCode??)>
<#if (where_and_eq_createdByCode_value??)>
${prefixName} `CREATED_BY_CODE` = :where_and_eq_createdByCode_value
<#else>
${prefixName} `CREATED_BY_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_createdByCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_createdByCode_value??)>
${prefixName} `CREATED_BY_CODE` <> :where_and_nq_createdByCode_value
<#else>
${prefixName} `CREATED_BY_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_createdByCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_createdByCode_value??)>
${prefixName} `CREATED_BY_CODE` <> :where_and_like_createdByCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_createdByCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_createdByCode_value??)>
${prefixName} `CREATED_BY_CODE` = :where_or_eq_createdByCode_value
<#else>
${prefixName} `CREATED_BY_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_createdByCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_createdByCode_value??)>
${prefixName} `CREATED_BY_CODE` <> :where_or_nq_createdByCode_value
<#else>
${prefixName} `CREATED_BY_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_createdByCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_createdByCode_value??)>
${prefixName} `CREATED_BY_CODE` like :where_or_like_createdByCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_createdDate??)>
<#if (where_and_eq_createdDate_value??)>
${prefixName} `CREATED_DATE` = :where_and_eq_createdDate_value
<#else>
${prefixName} `CREATED_DATE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_createdDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_createdDate_value??)>
${prefixName} `CREATED_DATE` <> :where_and_nq_createdDate_value
<#else>
${prefixName} `CREATED_DATE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_createdDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_createdDate_value??)>
${prefixName} `CREATED_DATE` <> :where_and_like_createdDate_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_createdDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_createdDate_value??)>
${prefixName} `CREATED_DATE` = :where_or_eq_createdDate_value
<#else>
${prefixName} `CREATED_DATE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_createdDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_createdDate_value??)>
${prefixName} `CREATED_DATE` <> :where_or_nq_createdDate_value
<#else>
${prefixName} `CREATED_DATE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_createdDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_createdDate_value??)>
${prefixName} `CREATED_DATE` like :where_or_like_createdDate_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_dataStateCode??)>
<#if (where_and_eq_dataStateCode_value??)>
${prefixName} `DATA_STATE_CODE` = :where_and_eq_dataStateCode_value
<#else>
${prefixName} `DATA_STATE_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_dataStateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_dataStateCode_value??)>
${prefixName} `DATA_STATE_CODE` <> :where_and_nq_dataStateCode_value
<#else>
${prefixName} `DATA_STATE_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_dataStateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_dataStateCode_value??)>
${prefixName} `DATA_STATE_CODE` <> :where_and_like_dataStateCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_dataStateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_dataStateCode_value??)>
${prefixName} `DATA_STATE_CODE` = :where_or_eq_dataStateCode_value
<#else>
${prefixName} `DATA_STATE_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_dataStateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_dataStateCode_value??)>
${prefixName} `DATA_STATE_CODE` <> :where_or_nq_dataStateCode_value
<#else>
${prefixName} `DATA_STATE_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_dataStateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_dataStateCode_value??)>
${prefixName} `DATA_STATE_CODE` like :where_or_like_dataStateCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_departmentCode??)>
<#if (where_and_eq_departmentCode_value??)>
${prefixName} `DEPARTMENT_CODE` = :where_and_eq_departmentCode_value
<#else>
${prefixName} `DEPARTMENT_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_departmentCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_departmentCode_value??)>
${prefixName} `DEPARTMENT_CODE` <> :where_and_nq_departmentCode_value
<#else>
${prefixName} `DEPARTMENT_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_departmentCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_departmentCode_value??)>
${prefixName} `DEPARTMENT_CODE` <> :where_and_like_departmentCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_departmentCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_departmentCode_value??)>
${prefixName} `DEPARTMENT_CODE` = :where_or_eq_departmentCode_value
<#else>
${prefixName} `DEPARTMENT_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_departmentCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_departmentCode_value??)>
${prefixName} `DEPARTMENT_CODE` <> :where_or_nq_departmentCode_value
<#else>
${prefixName} `DEPARTMENT_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_departmentCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_departmentCode_value??)>
${prefixName} `DEPARTMENT_CODE` like :where_or_like_departmentCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_diplomaCode??)>
<#if (where_and_eq_diplomaCode_value??)>
${prefixName} `DIPLOMA_CODE` = :where_and_eq_diplomaCode_value
<#else>
${prefixName} `DIPLOMA_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_diplomaCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_diplomaCode_value??)>
${prefixName} `DIPLOMA_CODE` <> :where_and_nq_diplomaCode_value
<#else>
${prefixName} `DIPLOMA_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_diplomaCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_diplomaCode_value??)>
${prefixName} `DIPLOMA_CODE` <> :where_and_like_diplomaCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_diplomaCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_diplomaCode_value??)>
${prefixName} `DIPLOMA_CODE` = :where_or_eq_diplomaCode_value
<#else>
${prefixName} `DIPLOMA_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_diplomaCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_diplomaCode_value??)>
${prefixName} `DIPLOMA_CODE` <> :where_or_nq_diplomaCode_value
<#else>
${prefixName} `DIPLOMA_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_diplomaCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_diplomaCode_value??)>
${prefixName} `DIPLOMA_CODE` like :where_or_like_diplomaCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_email??)>
<#if (where_and_eq_email_value??)>
${prefixName} `EMAIL` = :where_and_eq_email_value
<#else>
${prefixName} `EMAIL` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_email??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_email_value??)>
${prefixName} `EMAIL` <> :where_and_nq_email_value
<#else>
${prefixName} `EMAIL` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_email??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_email_value??)>
${prefixName} `EMAIL` <> :where_and_like_email_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_email??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_email_value??)>
${prefixName} `EMAIL` = :where_or_eq_email_value
<#else>
${prefixName} `EMAIL` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_email??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_email_value??)>
${prefixName} `EMAIL` <> :where_or_nq_email_value
<#else>
${prefixName} `EMAIL` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_email??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_email_value??)>
${prefixName} `EMAIL` like :where_or_like_email_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_endDate??)>
<#if (where_and_eq_endDate_value??)>
${prefixName} `END_DATE` = :where_and_eq_endDate_value
<#else>
${prefixName} `END_DATE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_endDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_endDate_value??)>
${prefixName} `END_DATE` <> :where_and_nq_endDate_value
<#else>
${prefixName} `END_DATE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_endDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_endDate_value??)>
${prefixName} `END_DATE` <> :where_and_like_endDate_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_endDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_endDate_value??)>
${prefixName} `END_DATE` = :where_or_eq_endDate_value
<#else>
${prefixName} `END_DATE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_endDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_endDate_value??)>
${prefixName} `END_DATE` <> :where_or_nq_endDate_value
<#else>
${prefixName} `END_DATE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_endDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_endDate_value??)>
${prefixName} `END_DATE` like :where_or_like_endDate_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_flagCode??)>
<#if (where_and_eq_flagCode_value??)>
${prefixName} `FLAG_CODE` = :where_and_eq_flagCode_value
<#else>
${prefixName} `FLAG_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_flagCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_flagCode_value??)>
${prefixName} `FLAG_CODE` <> :where_and_nq_flagCode_value
<#else>
${prefixName} `FLAG_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_flagCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_flagCode_value??)>
${prefixName} `FLAG_CODE` <> :where_and_like_flagCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_flagCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_flagCode_value??)>
${prefixName} `FLAG_CODE` = :where_or_eq_flagCode_value
<#else>
${prefixName} `FLAG_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_flagCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_flagCode_value??)>
${prefixName} `FLAG_CODE` <> :where_or_nq_flagCode_value
<#else>
${prefixName} `FLAG_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_flagCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_flagCode_value??)>
${prefixName} `FLAG_CODE` like :where_or_like_flagCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_folkCode??)>
<#if (where_and_eq_folkCode_value??)>
${prefixName} `FOLK_CODE` = :where_and_eq_folkCode_value
<#else>
${prefixName} `FOLK_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_folkCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_folkCode_value??)>
${prefixName} `FOLK_CODE` <> :where_and_nq_folkCode_value
<#else>
${prefixName} `FOLK_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_folkCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_folkCode_value??)>
${prefixName} `FOLK_CODE` <> :where_and_like_folkCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_folkCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_folkCode_value??)>
${prefixName} `FOLK_CODE` = :where_or_eq_folkCode_value
<#else>
${prefixName} `FOLK_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_folkCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_folkCode_value??)>
${prefixName} `FOLK_CODE` <> :where_or_nq_folkCode_value
<#else>
${prefixName} `FOLK_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_folkCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_folkCode_value??)>
${prefixName} `FOLK_CODE` like :where_or_like_folkCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_idCardNo??)>
<#if (where_and_eq_idCardNo_value??)>
${prefixName} `ID_CARD_NO` = :where_and_eq_idCardNo_value
<#else>
${prefixName} `ID_CARD_NO` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_idCardNo??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_idCardNo_value??)>
${prefixName} `ID_CARD_NO` <> :where_and_nq_idCardNo_value
<#else>
${prefixName} `ID_CARD_NO` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_idCardNo??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_idCardNo_value??)>
${prefixName} `ID_CARD_NO` <> :where_and_like_idCardNo_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_idCardNo??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_idCardNo_value??)>
${prefixName} `ID_CARD_NO` = :where_or_eq_idCardNo_value
<#else>
${prefixName} `ID_CARD_NO` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_idCardNo??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_idCardNo_value??)>
${prefixName} `ID_CARD_NO` <> :where_or_nq_idCardNo_value
<#else>
${prefixName} `ID_CARD_NO` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_idCardNo??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_idCardNo_value??)>
${prefixName} `ID_CARD_NO` like :where_or_like_idCardNo_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_intro??)>
<#if (where_and_eq_intro_value??)>
${prefixName} `INTRO` = :where_and_eq_intro_value
<#else>
${prefixName} `INTRO` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_intro??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_intro_value??)>
${prefixName} `INTRO` <> :where_and_nq_intro_value
<#else>
${prefixName} `INTRO` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_intro??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_intro_value??)>
${prefixName} `INTRO` <> :where_and_like_intro_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_intro??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_intro_value??)>
${prefixName} `INTRO` = :where_or_eq_intro_value
<#else>
${prefixName} `INTRO` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_intro??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_intro_value??)>
${prefixName} `INTRO` <> :where_or_nq_intro_value
<#else>
${prefixName} `INTRO` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_intro??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_intro_value??)>
${prefixName} `INTRO` like :where_or_like_intro_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_lastModifiedByCode??)>
<#if (where_and_eq_lastModifiedByCode_value??)>
${prefixName} `LAST_MODIFIED_BY_CODE` = :where_and_eq_lastModifiedByCode_value
<#else>
${prefixName} `LAST_MODIFIED_BY_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_lastModifiedByCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_lastModifiedByCode_value??)>
${prefixName} `LAST_MODIFIED_BY_CODE` <> :where_and_nq_lastModifiedByCode_value
<#else>
${prefixName} `LAST_MODIFIED_BY_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_lastModifiedByCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_lastModifiedByCode_value??)>
${prefixName} `LAST_MODIFIED_BY_CODE` <> :where_and_like_lastModifiedByCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_lastModifiedByCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_lastModifiedByCode_value??)>
${prefixName} `LAST_MODIFIED_BY_CODE` = :where_or_eq_lastModifiedByCode_value
<#else>
${prefixName} `LAST_MODIFIED_BY_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_lastModifiedByCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_lastModifiedByCode_value??)>
${prefixName} `LAST_MODIFIED_BY_CODE` <> :where_or_nq_lastModifiedByCode_value
<#else>
${prefixName} `LAST_MODIFIED_BY_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_lastModifiedByCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_lastModifiedByCode_value??)>
${prefixName} `LAST_MODIFIED_BY_CODE` like :where_or_like_lastModifiedByCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_lastModifiedDate??)>
<#if (where_and_eq_lastModifiedDate_value??)>
${prefixName} `LAST_MODIFIED_DATE` = :where_and_eq_lastModifiedDate_value
<#else>
${prefixName} `LAST_MODIFIED_DATE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_lastModifiedDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_lastModifiedDate_value??)>
${prefixName} `LAST_MODIFIED_DATE` <> :where_and_nq_lastModifiedDate_value
<#else>
${prefixName} `LAST_MODIFIED_DATE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_lastModifiedDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_lastModifiedDate_value??)>
${prefixName} `LAST_MODIFIED_DATE` <> :where_and_like_lastModifiedDate_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_lastModifiedDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_lastModifiedDate_value??)>
${prefixName} `LAST_MODIFIED_DATE` = :where_or_eq_lastModifiedDate_value
<#else>
${prefixName} `LAST_MODIFIED_DATE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_lastModifiedDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_lastModifiedDate_value??)>
${prefixName} `LAST_MODIFIED_DATE` <> :where_or_nq_lastModifiedDate_value
<#else>
${prefixName} `LAST_MODIFIED_DATE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_lastModifiedDate??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_lastModifiedDate_value??)>
${prefixName} `LAST_MODIFIED_DATE` like :where_or_like_lastModifiedDate_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_locus??)>
<#if (where_and_eq_locus_value??)>
${prefixName} `LOCUS` = :where_and_eq_locus_value
<#else>
${prefixName} `LOCUS` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_locus??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_locus_value??)>
${prefixName} `LOCUS` <> :where_and_nq_locus_value
<#else>
${prefixName} `LOCUS` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_locus??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_locus_value??)>
${prefixName} `LOCUS` <> :where_and_like_locus_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_locus??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_locus_value??)>
${prefixName} `LOCUS` = :where_or_eq_locus_value
<#else>
${prefixName} `LOCUS` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_locus??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_locus_value??)>
${prefixName} `LOCUS` <> :where_or_nq_locus_value
<#else>
${prefixName} `LOCUS` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_locus??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_locus_value??)>
${prefixName} `LOCUS` like :where_or_like_locus_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_marryStateCode??)>
<#if (where_and_eq_marryStateCode_value??)>
${prefixName} `MARRY_STATE_CODE` = :where_and_eq_marryStateCode_value
<#else>
${prefixName} `MARRY_STATE_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_marryStateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_marryStateCode_value??)>
${prefixName} `MARRY_STATE_CODE` <> :where_and_nq_marryStateCode_value
<#else>
${prefixName} `MARRY_STATE_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_marryStateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_marryStateCode_value??)>
${prefixName} `MARRY_STATE_CODE` <> :where_and_like_marryStateCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_marryStateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_marryStateCode_value??)>
${prefixName} `MARRY_STATE_CODE` = :where_or_eq_marryStateCode_value
<#else>
${prefixName} `MARRY_STATE_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_marryStateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_marryStateCode_value??)>
${prefixName} `MARRY_STATE_CODE` <> :where_or_nq_marryStateCode_value
<#else>
${prefixName} `MARRY_STATE_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_marryStateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_marryStateCode_value??)>
${prefixName} `MARRY_STATE_CODE` like :where_or_like_marryStateCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_mobilePhone??)>
<#if (where_and_eq_mobilePhone_value??)>
${prefixName} `MOBILE_PHONE` = :where_and_eq_mobilePhone_value
<#else>
${prefixName} `MOBILE_PHONE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_mobilePhone??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_mobilePhone_value??)>
${prefixName} `MOBILE_PHONE` <> :where_and_nq_mobilePhone_value
<#else>
${prefixName} `MOBILE_PHONE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_mobilePhone??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_mobilePhone_value??)>
${prefixName} `MOBILE_PHONE` <> :where_and_like_mobilePhone_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_mobilePhone??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_mobilePhone_value??)>
${prefixName} `MOBILE_PHONE` = :where_or_eq_mobilePhone_value
<#else>
${prefixName} `MOBILE_PHONE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_mobilePhone??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_mobilePhone_value??)>
${prefixName} `MOBILE_PHONE` <> :where_or_nq_mobilePhone_value
<#else>
${prefixName} `MOBILE_PHONE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_mobilePhone??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_mobilePhone_value??)>
${prefixName} `MOBILE_PHONE` like :where_or_like_mobilePhone_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_name??)>
<#if (where_and_eq_name_value??)>
${prefixName} `NAME` = :where_and_eq_name_value
<#else>
${prefixName} `NAME` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_name??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_name_value??)>
${prefixName} `NAME` <> :where_and_nq_name_value
<#else>
${prefixName} `NAME` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_name??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_name_value??)>
${prefixName} `NAME` <> :where_and_like_name_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_name??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_name_value??)>
${prefixName} `NAME` = :where_or_eq_name_value
<#else>
${prefixName} `NAME` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_name??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_name_value??)>
${prefixName} `NAME` <> :where_or_nq_name_value
<#else>
${prefixName} `NAME` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_name??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_name_value??)>
${prefixName} `NAME` like :where_or_like_name_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_orgCode??)>
<#if (where_and_eq_orgCode_value??)>
${prefixName} `ORG_CODE` = :where_and_eq_orgCode_value
<#else>
${prefixName} `ORG_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_orgCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_orgCode_value??)>
${prefixName} `ORG_CODE` <> :where_and_nq_orgCode_value
<#else>
${prefixName} `ORG_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_orgCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_orgCode_value??)>
${prefixName} `ORG_CODE` <> :where_and_like_orgCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_orgCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_orgCode_value??)>
${prefixName} `ORG_CODE` = :where_or_eq_orgCode_value
<#else>
${prefixName} `ORG_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_orgCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_orgCode_value??)>
${prefixName} `ORG_CODE` <> :where_or_nq_orgCode_value
<#else>
${prefixName} `ORG_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_orgCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_orgCode_value??)>
${prefixName} `ORG_CODE` like :where_or_like_orgCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_password??)>
<#if (where_and_eq_password_value??)>
${prefixName} `PASSWORD_` = :where_and_eq_password_value
<#else>
${prefixName} `PASSWORD_` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_password??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_password_value??)>
${prefixName} `PASSWORD_` <> :where_and_nq_password_value
<#else>
${prefixName} `PASSWORD_` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_password??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_password_value??)>
${prefixName} `PASSWORD_` <> :where_and_like_password_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_password??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_password_value??)>
${prefixName} `PASSWORD_` = :where_or_eq_password_value
<#else>
${prefixName} `PASSWORD_` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_password??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_password_value??)>
${prefixName} `PASSWORD_` <> :where_or_nq_password_value
<#else>
${prefixName} `PASSWORD_` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_password??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_password_value??)>
${prefixName} `PASSWORD_` like :where_or_like_password_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_passwordSalt??)>
<#if (where_and_eq_passwordSalt_value??)>
${prefixName} `PASSWORD_SALT` = :where_and_eq_passwordSalt_value
<#else>
${prefixName} `PASSWORD_SALT` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_passwordSalt??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_passwordSalt_value??)>
${prefixName} `PASSWORD_SALT` <> :where_and_nq_passwordSalt_value
<#else>
${prefixName} `PASSWORD_SALT` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_passwordSalt??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_passwordSalt_value??)>
${prefixName} `PASSWORD_SALT` <> :where_and_like_passwordSalt_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_passwordSalt??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_passwordSalt_value??)>
${prefixName} `PASSWORD_SALT` = :where_or_eq_passwordSalt_value
<#else>
${prefixName} `PASSWORD_SALT` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_passwordSalt??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_passwordSalt_value??)>
${prefixName} `PASSWORD_SALT` <> :where_or_nq_passwordSalt_value
<#else>
${prefixName} `PASSWORD_SALT` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_passwordSalt??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_passwordSalt_value??)>
${prefixName} `PASSWORD_SALT` like :where_or_like_passwordSalt_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_permissionCodes??)>
<#if (where_and_eq_permissionCodes_value??)>
${prefixName} `PERMISSION_CODES` = :where_and_eq_permissionCodes_value
<#else>
${prefixName} `PERMISSION_CODES` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_permissionCodes??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_permissionCodes_value??)>
${prefixName} `PERMISSION_CODES` <> :where_and_nq_permissionCodes_value
<#else>
${prefixName} `PERMISSION_CODES` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_permissionCodes??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_permissionCodes_value??)>
${prefixName} `PERMISSION_CODES` <> :where_and_like_permissionCodes_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_permissionCodes??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_permissionCodes_value??)>
${prefixName} `PERMISSION_CODES` = :where_or_eq_permissionCodes_value
<#else>
${prefixName} `PERMISSION_CODES` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_permissionCodes??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_permissionCodes_value??)>
${prefixName} `PERMISSION_CODES` <> :where_or_nq_permissionCodes_value
<#else>
${prefixName} `PERMISSION_CODES` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_permissionCodes??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_permissionCodes_value??)>
${prefixName} `PERMISSION_CODES` like :where_or_like_permissionCodes_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_portraitUrl??)>
<#if (where_and_eq_portraitUrl_value??)>
${prefixName} `PORTRAIT_URL` = :where_and_eq_portraitUrl_value
<#else>
${prefixName} `PORTRAIT_URL` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_portraitUrl??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_portraitUrl_value??)>
${prefixName} `PORTRAIT_URL` <> :where_and_nq_portraitUrl_value
<#else>
${prefixName} `PORTRAIT_URL` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_portraitUrl??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_portraitUrl_value??)>
${prefixName} `PORTRAIT_URL` <> :where_and_like_portraitUrl_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_portraitUrl??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_portraitUrl_value??)>
${prefixName} `PORTRAIT_URL` = :where_or_eq_portraitUrl_value
<#else>
${prefixName} `PORTRAIT_URL` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_portraitUrl??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_portraitUrl_value??)>
${prefixName} `PORTRAIT_URL` <> :where_or_nq_portraitUrl_value
<#else>
${prefixName} `PORTRAIT_URL` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_portraitUrl??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_portraitUrl_value??)>
${prefixName} `PORTRAIT_URL` like :where_or_like_portraitUrl_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_privatePassword??)>
<#if (where_and_eq_privatePassword_value??)>
${prefixName} `PRIVATE_PASSWORD` = :where_and_eq_privatePassword_value
<#else>
${prefixName} `PRIVATE_PASSWORD` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_privatePassword??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_privatePassword_value??)>
${prefixName} `PRIVATE_PASSWORD` <> :where_and_nq_privatePassword_value
<#else>
${prefixName} `PRIVATE_PASSWORD` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_privatePassword??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_privatePassword_value??)>
${prefixName} `PRIVATE_PASSWORD` <> :where_and_like_privatePassword_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_privatePassword??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_privatePassword_value??)>
${prefixName} `PRIVATE_PASSWORD` = :where_or_eq_privatePassword_value
<#else>
${prefixName} `PRIVATE_PASSWORD` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_privatePassword??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_privatePassword_value??)>
${prefixName} `PRIVATE_PASSWORD` <> :where_or_nq_privatePassword_value
<#else>
${prefixName} `PRIVATE_PASSWORD` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_privatePassword??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_privatePassword_value??)>
${prefixName} `PRIVATE_PASSWORD` like :where_or_like_privatePassword_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_privatePasswordSalt??)>
<#if (where_and_eq_privatePasswordSalt_value??)>
${prefixName} `PRIVATE_PASSWORD_SALT` = :where_and_eq_privatePasswordSalt_value
<#else>
${prefixName} `PRIVATE_PASSWORD_SALT` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_privatePasswordSalt??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_privatePasswordSalt_value??)>
${prefixName} `PRIVATE_PASSWORD_SALT` <> :where_and_nq_privatePasswordSalt_value
<#else>
${prefixName} `PRIVATE_PASSWORD_SALT` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_privatePasswordSalt??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_privatePasswordSalt_value??)>
${prefixName} `PRIVATE_PASSWORD_SALT` <> :where_and_like_privatePasswordSalt_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_privatePasswordSalt??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_privatePasswordSalt_value??)>
${prefixName} `PRIVATE_PASSWORD_SALT` = :where_or_eq_privatePasswordSalt_value
<#else>
${prefixName} `PRIVATE_PASSWORD_SALT` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_privatePasswordSalt??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_privatePasswordSalt_value??)>
${prefixName} `PRIVATE_PASSWORD_SALT` <> :where_or_nq_privatePasswordSalt_value
<#else>
${prefixName} `PRIVATE_PASSWORD_SALT` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_privatePasswordSalt??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_privatePasswordSalt_value??)>
${prefixName} `PRIVATE_PASSWORD_SALT` like :where_or_like_privatePasswordSalt_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_professionCode??)>
<#if (where_and_eq_professionCode_value??)>
${prefixName} `PROFESSION_CODE` = :where_and_eq_professionCode_value
<#else>
${prefixName} `PROFESSION_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_professionCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_professionCode_value??)>
${prefixName} `PROFESSION_CODE` <> :where_and_nq_professionCode_value
<#else>
${prefixName} `PROFESSION_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_professionCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_professionCode_value??)>
${prefixName} `PROFESSION_CODE` <> :where_and_like_professionCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_professionCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_professionCode_value??)>
${prefixName} `PROFESSION_CODE` = :where_or_eq_professionCode_value
<#else>
${prefixName} `PROFESSION_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_professionCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_professionCode_value??)>
${prefixName} `PROFESSION_CODE` <> :where_or_nq_professionCode_value
<#else>
${prefixName} `PROFESSION_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_professionCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_professionCode_value??)>
${prefixName} `PROFESSION_CODE` like :where_or_like_professionCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_provinceCode??)>
<#if (where_and_eq_provinceCode_value??)>
${prefixName} `PROVINCE_CODE` = :where_and_eq_provinceCode_value
<#else>
${prefixName} `PROVINCE_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_provinceCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_provinceCode_value??)>
${prefixName} `PROVINCE_CODE` <> :where_and_nq_provinceCode_value
<#else>
${prefixName} `PROVINCE_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_provinceCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_provinceCode_value??)>
${prefixName} `PROVINCE_CODE` <> :where_and_like_provinceCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_provinceCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_provinceCode_value??)>
${prefixName} `PROVINCE_CODE` = :where_or_eq_provinceCode_value
<#else>
${prefixName} `PROVINCE_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_provinceCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_provinceCode_value??)>
${prefixName} `PROVINCE_CODE` <> :where_or_nq_provinceCode_value
<#else>
${prefixName} `PROVINCE_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_provinceCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_provinceCode_value??)>
${prefixName} `PROVINCE_CODE` like :where_or_like_provinceCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_qq??)>
<#if (where_and_eq_qq_value??)>
${prefixName} `QQ` = :where_and_eq_qq_value
<#else>
${prefixName} `QQ` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_qq??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_qq_value??)>
${prefixName} `QQ` <> :where_and_nq_qq_value
<#else>
${prefixName} `QQ` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_qq??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_qq_value??)>
${prefixName} `QQ` <> :where_and_like_qq_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_qq??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_qq_value??)>
${prefixName} `QQ` = :where_or_eq_qq_value
<#else>
${prefixName} `QQ` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_qq??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_qq_value??)>
${prefixName} `QQ` <> :where_or_nq_qq_value
<#else>
${prefixName} `QQ` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_qq??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_qq_value??)>
${prefixName} `QQ` like :where_or_like_qq_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_roleCodes??)>
<#if (where_and_eq_roleCodes_value??)>
${prefixName} `ROLE_CODES` = :where_and_eq_roleCodes_value
<#else>
${prefixName} `ROLE_CODES` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_roleCodes??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_roleCodes_value??)>
${prefixName} `ROLE_CODES` <> :where_and_nq_roleCodes_value
<#else>
${prefixName} `ROLE_CODES` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_roleCodes??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_roleCodes_value??)>
${prefixName} `ROLE_CODES` <> :where_and_like_roleCodes_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_roleCodes??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_roleCodes_value??)>
${prefixName} `ROLE_CODES` = :where_or_eq_roleCodes_value
<#else>
${prefixName} `ROLE_CODES` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_roleCodes??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_roleCodes_value??)>
${prefixName} `ROLE_CODES` <> :where_or_nq_roleCodes_value
<#else>
${prefixName} `ROLE_CODES` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_roleCodes??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_roleCodes_value??)>
${prefixName} `ROLE_CODES` like :where_or_like_roleCodes_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_sexCode??)>
<#if (where_and_eq_sexCode_value??)>
${prefixName} `SEX_CODE` = :where_and_eq_sexCode_value
<#else>
${prefixName} `SEX_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_sexCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_sexCode_value??)>
${prefixName} `SEX_CODE` <> :where_and_nq_sexCode_value
<#else>
${prefixName} `SEX_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_sexCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_sexCode_value??)>
${prefixName} `SEX_CODE` <> :where_and_like_sexCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_sexCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_sexCode_value??)>
${prefixName} `SEX_CODE` = :where_or_eq_sexCode_value
<#else>
${prefixName} `SEX_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_sexCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_sexCode_value??)>
${prefixName} `SEX_CODE` <> :where_or_nq_sexCode_value
<#else>
${prefixName} `SEX_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_sexCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_sexCode_value??)>
${prefixName} `SEX_CODE` like :where_or_like_sexCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_stateCode??)>
<#if (where_and_eq_stateCode_value??)>
${prefixName} `STATE_CODE` = :where_and_eq_stateCode_value
<#else>
${prefixName} `STATE_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_stateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_stateCode_value??)>
${prefixName} `STATE_CODE` <> :where_and_nq_stateCode_value
<#else>
${prefixName} `STATE_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_stateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_stateCode_value??)>
${prefixName} `STATE_CODE` <> :where_and_like_stateCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_stateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_stateCode_value??)>
${prefixName} `STATE_CODE` = :where_or_eq_stateCode_value
<#else>
${prefixName} `STATE_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_stateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_stateCode_value??)>
${prefixName} `STATE_CODE` <> :where_or_nq_stateCode_value
<#else>
${prefixName} `STATE_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_stateCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_stateCode_value??)>
${prefixName} `STATE_CODE` like :where_or_like_stateCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_telephone??)>
<#if (where_and_eq_telephone_value??)>
${prefixName} `TELEPHONE` = :where_and_eq_telephone_value
<#else>
${prefixName} `TELEPHONE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_telephone??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_telephone_value??)>
${prefixName} `TELEPHONE` <> :where_and_nq_telephone_value
<#else>
${prefixName} `TELEPHONE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_telephone??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_telephone_value??)>
${prefixName} `TELEPHONE` <> :where_and_like_telephone_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_telephone??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_telephone_value??)>
${prefixName} `TELEPHONE` = :where_or_eq_telephone_value
<#else>
${prefixName} `TELEPHONE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_telephone??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_telephone_value??)>
${prefixName} `TELEPHONE` <> :where_or_nq_telephone_value
<#else>
${prefixName} `TELEPHONE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_telephone??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_telephone_value??)>
${prefixName} `TELEPHONE` like :where_or_like_telephone_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_userCode??)>
<#if (where_and_eq_userCode_value??)>
${prefixName} `USER_CODE` = :where_and_eq_userCode_value
<#else>
${prefixName} `USER_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_userCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_userCode_value??)>
${prefixName} `USER_CODE` <> :where_and_nq_userCode_value
<#else>
${prefixName} `USER_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_userCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_userCode_value??)>
${prefixName} `USER_CODE` <> :where_and_like_userCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_userCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_userCode_value??)>
${prefixName} `USER_CODE` = :where_or_eq_userCode_value
<#else>
${prefixName} `USER_CODE` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_userCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_userCode_value??)>
${prefixName} `USER_CODE` <> :where_or_nq_userCode_value
<#else>
${prefixName} `USER_CODE` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_userCode??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_userCode_value??)>
${prefixName} `USER_CODE` like :where_or_like_userCode_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_userId??)>
<#if (where_and_eq_userId_value??)>
${prefixName} `USER_ID` = :where_and_eq_userId_value
<#else>
${prefixName} `USER_ID` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_userId??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_userId_value??)>
${prefixName} `USER_ID` <> :where_and_nq_userId_value
<#else>
${prefixName} `USER_ID` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_userId??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_userId_value??)>
${prefixName} `USER_ID` <> :where_and_like_userId_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_userId??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_userId_value??)>
${prefixName} `USER_ID` = :where_or_eq_userId_value
<#else>
${prefixName} `USER_ID` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_userId??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_userId_value??)>
${prefixName} `USER_ID` <> :where_or_nq_userId_value
<#else>
${prefixName} `USER_ID` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_userId??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_userId_value??)>
${prefixName} `USER_ID` like :where_or_like_userId_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_version??)>
<#if (where_and_eq_version_value??)>
${prefixName} `VERSION_` = :where_and_eq_version_value
<#else>
${prefixName} `VERSION_` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_version??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_version_value??)>
${prefixName} `VERSION_` <> :where_and_nq_version_value
<#else>
${prefixName} `VERSION_` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_version??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_version_value??)>
${prefixName} `VERSION_` <> :where_and_like_version_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_version??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_version_value??)>
${prefixName} `VERSION_` = :where_or_eq_version_value
<#else>
${prefixName} `VERSION_` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_version??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_version_value??)>
${prefixName} `VERSION_` <> :where_or_nq_version_value
<#else>
${prefixName} `VERSION_` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_version??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_version_value??)>
${prefixName} `VERSION_` like :where_or_like_version_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_wfId??)>
<#if (where_and_eq_wfId_value??)>
${prefixName} `WF_ID` = :where_and_eq_wfId_value
<#else>
${prefixName} `WF_ID` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_nq_wfId??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_nq_wfId_value??)>
${prefixName} `WF_ID` <> :where_and_nq_wfId_value
<#else>
${prefixName} `WF_ID` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_and_like_wfId??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_like_wfId_value??)>
${prefixName} `WF_ID` <> :where_and_like_wfId_value
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_eq_wfId??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_eq_wfId_value??)>
${prefixName} `WF_ID` = :where_or_eq_wfId_value
<#else>
${prefixName} `WF_ID` IS NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_nq_wfId??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_nq_wfId_value??)>
${prefixName} `WF_ID` <> :where_or_nq_wfId_value
<#else>
${prefixName} `WF_ID` IS NOT NULL
</#if>
<#assign prefixName = ''>
</#if>
<#if (where_or_like_wfId??)>
<#if (prefixName!) != 'WHERE'>
<#assign prefixName = 'OR'>
</#if>
<#if (where_or_like_wfId_value??)>
${prefixName} `WF_ID` like :where_or_like_wfId_value
</#if>
<#assign prefixName = ''>
</#if>
