INSERT
INTO
c1_user
(<#assign prefixName = true>
<#if (insert_address??) && (insert_address_value??)>
${prefixName?string('  ', ', ')}"address"
<#assign prefixName = false>
</#if>
<#if (insert_age??) && (insert_age_value??)>
${prefixName?string('  ', ', ')}"age"
<#assign prefixName = false>
</#if>
<#if (insert_aliasName??) && (insert_aliasName_value??)>
${prefixName?string('  ', ', ')}"alias_name"
<#assign prefixName = false>
</#if>
<#if (insert_areaCode??) && (insert_areaCode_value??)>
${prefixName?string('  ', ', ')}"area_code"
<#assign prefixName = false>
</#if>
<#if (insert_batchNo??) && (insert_batchNo_value??)>
${prefixName?string('  ', ', ')}"batch_no"
<#assign prefixName = false>
</#if>
<#if (insert_beginDate??) && (insert_beginDate_value??)>
${prefixName?string('  ', ', ')}"begin_date"
<#assign prefixName = false>
</#if>
<#if (insert_birthday??) && (insert_birthday_value??)>
${prefixName?string('  ', ', ')}"birthday"
<#assign prefixName = false>
</#if>
<#if (insert_callName??) && (insert_callName_value??)>
${prefixName?string('  ', ', ')}"call_name"
<#assign prefixName = false>
</#if>
<#if (insert_cityCode??) && (insert_cityCode_value??)>
${prefixName?string('  ', ', ')}"city_code"
<#assign prefixName = false>
</#if>
<#if (insert_companyName??) && (insert_companyName_value??)>
${prefixName?string('  ', ', ')}"company_name"
<#assign prefixName = false>
</#if>
<#if (insert_contact??) && (insert_contact_value??)>
${prefixName?string('  ', ', ')}"contact"
<#assign prefixName = false>
</#if>
<#if (insert_countryCode??) && (insert_countryCode_value??)>
${prefixName?string('  ', ', ')}"country_code"
<#assign prefixName = false>
</#if>
<#if (insert_createdByCode??) && (insert_createdByCode_value??)>
${prefixName?string('  ', ', ')}"created_by_code"
<#assign prefixName = false>
</#if>
<#if (insert_createdDate??) && (insert_createdDate_value??)>
${prefixName?string('  ', ', ')}"created_date"
<#assign prefixName = false>
</#if>
<#if (insert_dataStateCode??) && (insert_dataStateCode_value??)>
${prefixName?string('  ', ', ')}"data_state_code"
<#assign prefixName = false>
</#if>
<#if (insert_departmentCode??) && (insert_departmentCode_value??)>
${prefixName?string('  ', ', ')}"department_code"
<#assign prefixName = false>
</#if>
<#if (insert_diplomaCode??) && (insert_diplomaCode_value??)>
${prefixName?string('  ', ', ')}"diploma_code"
<#assign prefixName = false>
</#if>
<#if (insert_email??) && (insert_email_value??)>
${prefixName?string('  ', ', ')}"email"
<#assign prefixName = false>
</#if>
<#if (insert_endDate??) && (insert_endDate_value??)>
${prefixName?string('  ', ', ')}"end_date"
<#assign prefixName = false>
</#if>
<#if (insert_firstName??) && (insert_firstName_value??)>
${prefixName?string('  ', ', ')}"first_name"
<#assign prefixName = false>
</#if>
<#if (insert_flagCode??) && (insert_flagCode_value??)>
${prefixName?string('  ', ', ')}"flag_code"
<#assign prefixName = false>
</#if>
<#if (insert_flagObjectCode??) && (insert_flagObjectCode_value??)>
${prefixName?string('  ', ', ')}"flag_object_code"
<#assign prefixName = false>
</#if>
<#if (insert_folkCode??) && (insert_folkCode_value??)>
${prefixName?string('  ', ', ')}"folk_code"
<#assign prefixName = false>
</#if>
<#if (insert_idCardCode??) && (insert_idCardCode_value??)>
${prefixName?string('  ', ', ')}"id_card_code"
<#assign prefixName = false>
</#if>
<#if (insert_idCardNo??) && (insert_idCardNo_value??)>
${prefixName?string('  ', ', ')}"id_card_no"
<#assign prefixName = false>
</#if>
<#if (insert_intro??) && (insert_intro_value??)>
${prefixName?string('  ', ', ')}"intro"
<#assign prefixName = false>
</#if>
<#if (insert_jsonData??) && (insert_jsonData_value??)>
${prefixName?string('  ', ', ')}"json_data"
<#assign prefixName = false>
</#if>
<#if (insert_lastModifiedByCode??) && (insert_lastModifiedByCode_value??)>
${prefixName?string('  ', ', ')}"last_modified_by_code"
<#assign prefixName = false>
</#if>
<#if (insert_lastModifiedDate??) && (insert_lastModifiedDate_value??)>
${prefixName?string('  ', ', ')}"last_modified_date"
<#assign prefixName = false>
</#if>
<#if (insert_lastName??) && (insert_lastName_value??)>
${prefixName?string('  ', ', ')}"last_name"
<#assign prefixName = false>
</#if>
<#if (insert_locus??) && (insert_locus_value??)>
${prefixName?string('  ', ', ')}"locus"
<#assign prefixName = false>
</#if>
<#if (insert_marryStateCode??) && (insert_marryStateCode_value??)>
${prefixName?string('  ', ', ')}"marry_state_code"
<#assign prefixName = false>
</#if>
<#if (insert_mobilePhone??) && (insert_mobilePhone_value??)>
${prefixName?string('  ', ', ')}"mobile_phone"
<#assign prefixName = false>
</#if>
<#if (insert_name??) && (insert_name_value??)>
${prefixName?string('  ', ', ')}"name"
<#assign prefixName = false>
</#if>
<#if (insert_namePinyin??) && (insert_namePinyin_value??)>
${prefixName?string('  ', ', ')}"name_pinyin"
<#assign prefixName = false>
</#if>
<#if (insert_orderBy??) && (insert_orderBy_value??)>
${prefixName?string('  ', ', ')}"order_by_"
<#assign prefixName = false>
</#if>
<#if (insert_orgCode??) && (insert_orgCode_value??)>
${prefixName?string('  ', ', ')}"org_code"
<#assign prefixName = false>
</#if>
<#if (insert_password??) && (insert_password_value??)>
${prefixName?string('  ', ', ')}"password_"
<#assign prefixName = false>
</#if>
<#if (insert_passwordSalt??) && (insert_passwordSalt_value??)>
${prefixName?string('  ', ', ')}"password_salt"
<#assign prefixName = false>
</#if>
<#if (insert_personalCode??) && (insert_personalCode_value??)>
${prefixName?string('  ', ', ')}"personal_code"
<#assign prefixName = false>
</#if>
<#if (insert_portraitUrl??) && (insert_portraitUrl_value??)>
${prefixName?string('  ', ', ')}"portrait_url"
<#assign prefixName = false>
</#if>
<#if (insert_privatePassword??) && (insert_privatePassword_value??)>
${prefixName?string('  ', ', ')}"private_password"
<#assign prefixName = false>
</#if>
<#if (insert_privatePasswordSalt??) && (insert_privatePasswordSalt_value??)>
${prefixName?string('  ', ', ')}"private_password_salt"
<#assign prefixName = false>
</#if>
<#if (insert_professionCode??) && (insert_professionCode_value??)>
${prefixName?string('  ', ', ')}"profession_code"
<#assign prefixName = false>
</#if>
<#if (insert_provinceCode??) && (insert_provinceCode_value??)>
${prefixName?string('  ', ', ')}"province_code"
<#assign prefixName = false>
</#if>
<#if (insert_qq??) && (insert_qq_value??)>
${prefixName?string('  ', ', ')}"qq"
<#assign prefixName = false>
</#if>
<#if (insert_regionCode??) && (insert_regionCode_value??)>
${prefixName?string('  ', ', ')}"region_code"
<#assign prefixName = false>
</#if>
<#if (insert_remark??) && (insert_remark_value??)>
${prefixName?string('  ', ', ')}"remark"
<#assign prefixName = false>
</#if>
<#if (insert_sexCode??) && (insert_sexCode_value??)>
${prefixName?string('  ', ', ')}"sex_code"
<#assign prefixName = false>
</#if>
<#if (insert_siteCode??) && (insert_siteCode_value??)>
${prefixName?string('  ', ', ')}"site_code"
<#assign prefixName = false>
</#if>
<#if (insert_stateCode??) && (insert_stateCode_value??)>
${prefixName?string('  ', ', ')}"state_code"
<#assign prefixName = false>
</#if>
<#if (insert_systemInfoCode??) && (insert_systemInfoCode_value??)>
${prefixName?string('  ', ', ')}"system_info_code"
<#assign prefixName = false>
</#if>
<#if (insert_telephone??) && (insert_telephone_value??)>
${prefixName?string('  ', ', ')}"telephone"
<#assign prefixName = false>
</#if>
<#if (insert_userCode??) && (insert_userCode_value??)>
${prefixName?string('  ', ', ')}"user_code"
<#assign prefixName = false>
</#if>
<#if (insert_userId??) && (insert_userId_value??)>
${prefixName?string('  ', ', ')}"user_id"
<#assign prefixName = false>
</#if>
<#if (insert_version??) && (insert_version_value??)>
${prefixName?string('  ', ', ')}"version_"
<#assign prefixName = false>
</#if>
)
(SELECT
<#assign prefixName = true>
<#if (insert_address??) && (insert_address_value??)>
${prefixName?string('  ', ', ')}:insert_address_value
<#assign prefixName = false>
</#if>
<#if (insert_age??) && (insert_age_value??)>
${prefixName?string('  ', ', ')}:insert_age_value
<#assign prefixName = false>
</#if>
<#if (insert_aliasName??) && (insert_aliasName_value??)>
${prefixName?string('  ', ', ')}:insert_aliasName_value
<#assign prefixName = false>
</#if>
<#if (insert_areaCode??) && (insert_areaCode_value??)>
${prefixName?string('  ', ', ')}:insert_areaCode_value
<#assign prefixName = false>
</#if>
<#if (insert_batchNo??) && (insert_batchNo_value??)>
${prefixName?string('  ', ', ')}:insert_batchNo_value
<#assign prefixName = false>
</#if>
<#if (insert_beginDate??) && (insert_beginDate_value??)>
${prefixName?string('  ', ', ')}:insert_beginDate_value
<#assign prefixName = false>
</#if>
<#if (insert_birthday??) && (insert_birthday_value??)>
${prefixName?string('  ', ', ')}:insert_birthday_value
<#assign prefixName = false>
</#if>
<#if (insert_callName??) && (insert_callName_value??)>
${prefixName?string('  ', ', ')}:insert_callName_value
<#assign prefixName = false>
</#if>
<#if (insert_cityCode??) && (insert_cityCode_value??)>
${prefixName?string('  ', ', ')}:insert_cityCode_value
<#assign prefixName = false>
</#if>
<#if (insert_companyName??) && (insert_companyName_value??)>
${prefixName?string('  ', ', ')}:insert_companyName_value
<#assign prefixName = false>
</#if>
<#if (insert_contact??) && (insert_contact_value??)>
${prefixName?string('  ', ', ')}:insert_contact_value
<#assign prefixName = false>
</#if>
<#if (insert_countryCode??) && (insert_countryCode_value??)>
${prefixName?string('  ', ', ')}:insert_countryCode_value
<#assign prefixName = false>
</#if>
<#if (insert_createdByCode??) && (insert_createdByCode_value??)>
${prefixName?string('  ', ', ')}:insert_createdByCode_value
<#assign prefixName = false>
</#if>
<#if (insert_createdDate??) && (insert_createdDate_value??)>
${prefixName?string('  ', ', ')}:insert_createdDate_value
<#assign prefixName = false>
</#if>
<#if (insert_dataStateCode??) && (insert_dataStateCode_value??)>
${prefixName?string('  ', ', ')}:insert_dataStateCode_value
<#assign prefixName = false>
</#if>
<#if (insert_departmentCode??) && (insert_departmentCode_value??)>
${prefixName?string('  ', ', ')}:insert_departmentCode_value
<#assign prefixName = false>
</#if>
<#if (insert_diplomaCode??) && (insert_diplomaCode_value??)>
${prefixName?string('  ', ', ')}:insert_diplomaCode_value
<#assign prefixName = false>
</#if>
<#if (insert_email??) && (insert_email_value??)>
${prefixName?string('  ', ', ')}:insert_email_value
<#assign prefixName = false>
</#if>
<#if (insert_endDate??) && (insert_endDate_value??)>
${prefixName?string('  ', ', ')}:insert_endDate_value
<#assign prefixName = false>
</#if>
<#if (insert_firstName??) && (insert_firstName_value??)>
${prefixName?string('  ', ', ')}:insert_firstName_value
<#assign prefixName = false>
</#if>
<#if (insert_flagCode??) && (insert_flagCode_value??)>
${prefixName?string('  ', ', ')}:insert_flagCode_value
<#assign prefixName = false>
</#if>
<#if (insert_flagObjectCode??) && (insert_flagObjectCode_value??)>
${prefixName?string('  ', ', ')}:insert_flagObjectCode_value
<#assign prefixName = false>
</#if>
<#if (insert_folkCode??) && (insert_folkCode_value??)>
${prefixName?string('  ', ', ')}:insert_folkCode_value
<#assign prefixName = false>
</#if>
<#if (insert_idCardCode??) && (insert_idCardCode_value??)>
${prefixName?string('  ', ', ')}:insert_idCardCode_value
<#assign prefixName = false>
</#if>
<#if (insert_idCardNo??) && (insert_idCardNo_value??)>
${prefixName?string('  ', ', ')}:insert_idCardNo_value
<#assign prefixName = false>
</#if>
<#if (insert_intro??) && (insert_intro_value??)>
${prefixName?string('  ', ', ')}:insert_intro_value
<#assign prefixName = false>
</#if>
<#if (insert_jsonData??) && (insert_jsonData_value??)>
${prefixName?string('  ', ', ')}:insert_jsonData_value
<#assign prefixName = false>
</#if>
<#if (insert_lastModifiedByCode??) && (insert_lastModifiedByCode_value??)>
${prefixName?string('  ', ', ')}:insert_lastModifiedByCode_value
<#assign prefixName = false>
</#if>
<#if (insert_lastModifiedDate??) && (insert_lastModifiedDate_value??)>
${prefixName?string('  ', ', ')}:insert_lastModifiedDate_value
<#assign prefixName = false>
</#if>
<#if (insert_lastName??) && (insert_lastName_value??)>
${prefixName?string('  ', ', ')}:insert_lastName_value
<#assign prefixName = false>
</#if>
<#if (insert_locus??) && (insert_locus_value??)>
${prefixName?string('  ', ', ')}:insert_locus_value
<#assign prefixName = false>
</#if>
<#if (insert_marryStateCode??) && (insert_marryStateCode_value??)>
${prefixName?string('  ', ', ')}:insert_marryStateCode_value
<#assign prefixName = false>
</#if>
<#if (insert_mobilePhone??) && (insert_mobilePhone_value??)>
${prefixName?string('  ', ', ')}:insert_mobilePhone_value
<#assign prefixName = false>
</#if>
<#if (insert_name??) && (insert_name_value??)>
${prefixName?string('  ', ', ')}:insert_name_value
<#assign prefixName = false>
</#if>
<#if (insert_namePinyin??) && (insert_namePinyin_value??)>
${prefixName?string('  ', ', ')}:insert_namePinyin_value
<#assign prefixName = false>
</#if>
<#if (insert_orderBy??) && (insert_orderBy_value??)>
${prefixName?string('  ', ', ')}:insert_orderBy_value
<#assign prefixName = false>
</#if>
<#if (insert_orgCode??) && (insert_orgCode_value??)>
${prefixName?string('  ', ', ')}:insert_orgCode_value
<#assign prefixName = false>
</#if>
<#if (insert_password??) && (insert_password_value??)>
${prefixName?string('  ', ', ')}:insert_password_value
<#assign prefixName = false>
</#if>
<#if (insert_passwordSalt??) && (insert_passwordSalt_value??)>
${prefixName?string('  ', ', ')}:insert_passwordSalt_value
<#assign prefixName = false>
</#if>
<#if (insert_personalCode??) && (insert_personalCode_value??)>
${prefixName?string('  ', ', ')}:insert_personalCode_value
<#assign prefixName = false>
</#if>
<#if (insert_portraitUrl??) && (insert_portraitUrl_value??)>
${prefixName?string('  ', ', ')}:insert_portraitUrl_value
<#assign prefixName = false>
</#if>
<#if (insert_privatePassword??) && (insert_privatePassword_value??)>
${prefixName?string('  ', ', ')}:insert_privatePassword_value
<#assign prefixName = false>
</#if>
<#if (insert_privatePasswordSalt??) && (insert_privatePasswordSalt_value??)>
${prefixName?string('  ', ', ')}:insert_privatePasswordSalt_value
<#assign prefixName = false>
</#if>
<#if (insert_professionCode??) && (insert_professionCode_value??)>
${prefixName?string('  ', ', ')}:insert_professionCode_value
<#assign prefixName = false>
</#if>
<#if (insert_provinceCode??) && (insert_provinceCode_value??)>
${prefixName?string('  ', ', ')}:insert_provinceCode_value
<#assign prefixName = false>
</#if>
<#if (insert_qq??) && (insert_qq_value??)>
${prefixName?string('  ', ', ')}:insert_qq_value
<#assign prefixName = false>
</#if>
<#if (insert_regionCode??) && (insert_regionCode_value??)>
${prefixName?string('  ', ', ')}:insert_regionCode_value
<#assign prefixName = false>
</#if>
<#if (insert_remark??) && (insert_remark_value??)>
${prefixName?string('  ', ', ')}:insert_remark_value
<#assign prefixName = false>
</#if>
<#if (insert_sexCode??) && (insert_sexCode_value??)>
${prefixName?string('  ', ', ')}:insert_sexCode_value
<#assign prefixName = false>
</#if>
<#if (insert_siteCode??) && (insert_siteCode_value??)>
${prefixName?string('  ', ', ')}:insert_siteCode_value
<#assign prefixName = false>
</#if>
<#if (insert_stateCode??) && (insert_stateCode_value??)>
${prefixName?string('  ', ', ')}:insert_stateCode_value
<#assign prefixName = false>
</#if>
<#if (insert_systemInfoCode??) && (insert_systemInfoCode_value??)>
${prefixName?string('  ', ', ')}:insert_systemInfoCode_value
<#assign prefixName = false>
</#if>
<#if (insert_telephone??) && (insert_telephone_value??)>
${prefixName?string('  ', ', ')}:insert_telephone_value
<#assign prefixName = false>
</#if>
<#if (insert_userCode??) && (insert_userCode_value??)>
${prefixName?string('  ', ', ')}:insert_userCode_value
<#assign prefixName = false>
</#if>
<#if (insert_userId??) && (insert_userId_value??)>
${prefixName?string('  ', ', ')}:insert_userId_value
<#assign prefixName = false>
</#if>
<#if (insert_version??) && (insert_version_value??)>
${prefixName?string('  ', ', ')}:insert_version_value
<#assign prefixName = false>
</#if>
WHERE NOT EXISTS (SELECT 1 FROM c1_user E
<#assign prefixName = true>
<#if (where_and_eq_address??)>
<#if (where_and_eq_address_value??)>
${prefixName?string('WHERE ', 'AND ')}E."address" = :where_and_eq_address_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."address" IS NULL OR E."address" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_age??)>
<#if (where_and_eq_age_value??)>
${prefixName?string('WHERE ', 'AND ')}E."age" = :where_and_eq_age_value
<#else>
${prefixName?string('WHERE ', 'AND ')}E."age" IS NULL
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_aliasName??)>
<#if (where_and_eq_aliasName_value??)>
${prefixName?string('WHERE ', 'AND ')}E."alias_name" = :where_and_eq_aliasName_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."alias_name" IS NULL OR E."alias_name" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_areaCode??)>
<#if (where_and_eq_areaCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."area_code" = :where_and_eq_areaCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."area_code" IS NULL OR E."area_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_batchNo??)>
<#if (where_and_eq_batchNo_value??)>
${prefixName?string('WHERE ', 'AND ')}E."batch_no" = :where_and_eq_batchNo_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."batch_no" IS NULL OR E."batch_no" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_beginDate??)>
<#if (where_and_eq_beginDate_value??)>
${prefixName?string('WHERE ', 'AND ')}E."begin_date" = :where_and_eq_beginDate_value
<#else>
${prefixName?string('WHERE ', 'AND ')}E."begin_date" IS NULL
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_birthday??)>
<#if (where_and_eq_birthday_value??)>
${prefixName?string('WHERE ', 'AND ')}E."birthday" = :where_and_eq_birthday_value
<#else>
${prefixName?string('WHERE ', 'AND ')}E."birthday" IS NULL
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_callName??)>
<#if (where_and_eq_callName_value??)>
${prefixName?string('WHERE ', 'AND ')}E."call_name" = :where_and_eq_callName_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."call_name" IS NULL OR E."call_name" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_cityCode??)>
<#if (where_and_eq_cityCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."city_code" = :where_and_eq_cityCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."city_code" IS NULL OR E."city_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_companyName??)>
<#if (where_and_eq_companyName_value??)>
${prefixName?string('WHERE ', 'AND ')}E."company_name" = :where_and_eq_companyName_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."company_name" IS NULL OR E."company_name" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_contact??)>
<#if (where_and_eq_contact_value??)>
${prefixName?string('WHERE ', 'AND ')}E."contact" = :where_and_eq_contact_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."contact" IS NULL OR E."contact" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_countryCode??)>
<#if (where_and_eq_countryCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."country_code" = :where_and_eq_countryCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."country_code" IS NULL OR E."country_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_createdByCode??)>
<#if (where_and_eq_createdByCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."created_by_code" = :where_and_eq_createdByCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."created_by_code" IS NULL OR E."created_by_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_createdDate??)>
<#if (where_and_eq_createdDate_value??)>
${prefixName?string('WHERE ', 'AND ')}E."created_date" = :where_and_eq_createdDate_value
<#else>
${prefixName?string('WHERE ', 'AND ')}E."created_date" IS NULL
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_dataStateCode??)>
<#if (where_and_eq_dataStateCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."data_state_code" = :where_and_eq_dataStateCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."data_state_code" IS NULL OR E."data_state_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_departmentCode??)>
<#if (where_and_eq_departmentCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."department_code" = :where_and_eq_departmentCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."department_code" IS NULL OR E."department_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_diplomaCode??)>
<#if (where_and_eq_diplomaCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."diploma_code" = :where_and_eq_diplomaCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."diploma_code" IS NULL OR E."diploma_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_email??)>
<#if (where_and_eq_email_value??)>
${prefixName?string('WHERE ', 'AND ')}E."email" = :where_and_eq_email_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."email" IS NULL OR E."email" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_endDate??)>
<#if (where_and_eq_endDate_value??)>
${prefixName?string('WHERE ', 'AND ')}E."end_date" = :where_and_eq_endDate_value
<#else>
${prefixName?string('WHERE ', 'AND ')}E."end_date" IS NULL
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_firstName??)>
<#if (where_and_eq_firstName_value??)>
${prefixName?string('WHERE ', 'AND ')}E."first_name" = :where_and_eq_firstName_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."first_name" IS NULL OR E."first_name" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_flagCode??)>
<#if (where_and_eq_flagCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."flag_code" = :where_and_eq_flagCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."flag_code" IS NULL OR E."flag_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_flagObjectCode??)>
<#if (where_and_eq_flagObjectCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."flag_object_code" = :where_and_eq_flagObjectCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."flag_object_code" IS NULL OR E."flag_object_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_folkCode??)>
<#if (where_and_eq_folkCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."folk_code" = :where_and_eq_folkCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."folk_code" IS NULL OR E."folk_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_idCardCode??)>
<#if (where_and_eq_idCardCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."id_card_code" = :where_and_eq_idCardCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."id_card_code" IS NULL OR E."id_card_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_idCardNo??)>
<#if (where_and_eq_idCardNo_value??)>
${prefixName?string('WHERE ', 'AND ')}E."id_card_no" = :where_and_eq_idCardNo_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."id_card_no" IS NULL OR E."id_card_no" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_intro??)>
<#if (where_and_eq_intro_value??)>
${prefixName?string('WHERE ', 'AND ')}E."intro" = :where_and_eq_intro_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."intro" IS NULL OR E."intro" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_jsonData??)>
<#if (where_and_eq_jsonData_value??)>
${prefixName?string('WHERE ', 'AND ')}E."json_data" = :where_and_eq_jsonData_value
<#else>
${prefixName?string('WHERE ', 'AND ')}E."json_data" IS NULL
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_lastModifiedByCode??)>
<#if (where_and_eq_lastModifiedByCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."last_modified_by_code" = :where_and_eq_lastModifiedByCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."last_modified_by_code" IS NULL OR E."last_modified_by_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_lastModifiedDate??)>
<#if (where_and_eq_lastModifiedDate_value??)>
${prefixName?string('WHERE ', 'AND ')}E."last_modified_date" = :where_and_eq_lastModifiedDate_value
<#else>
${prefixName?string('WHERE ', 'AND ')}E."last_modified_date" IS NULL
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_lastName??)>
<#if (where_and_eq_lastName_value??)>
${prefixName?string('WHERE ', 'AND ')}E."last_name" = :where_and_eq_lastName_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."last_name" IS NULL OR E."last_name" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_locus??)>
<#if (where_and_eq_locus_value??)>
${prefixName?string('WHERE ', 'AND ')}E."locus" = :where_and_eq_locus_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."locus" IS NULL OR E."locus" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_marryStateCode??)>
<#if (where_and_eq_marryStateCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."marry_state_code" = :where_and_eq_marryStateCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."marry_state_code" IS NULL OR E."marry_state_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_mobilePhone??)>
<#if (where_and_eq_mobilePhone_value??)>
${prefixName?string('WHERE ', 'AND ')}E."mobile_phone" = :where_and_eq_mobilePhone_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."mobile_phone" IS NULL OR E."mobile_phone" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_name??)>
<#if (where_and_eq_name_value??)>
${prefixName?string('WHERE ', 'AND ')}E."name" = :where_and_eq_name_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."name" IS NULL OR E."name" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_namePinyin??)>
<#if (where_and_eq_namePinyin_value??)>
${prefixName?string('WHERE ', 'AND ')}E."name_pinyin" = :where_and_eq_namePinyin_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."name_pinyin" IS NULL OR E."name_pinyin" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_orderBy??)>
<#if (where_and_eq_orderBy_value??)>
${prefixName?string('WHERE ', 'AND ')}E."order_by_" = :where_and_eq_orderBy_value
<#else>
${prefixName?string('WHERE ', 'AND ')}E."order_by_" IS NULL
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_orgCode??)>
<#if (where_and_eq_orgCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."org_code" = :where_and_eq_orgCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."org_code" IS NULL OR E."org_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_password??)>
<#if (where_and_eq_password_value??)>
${prefixName?string('WHERE ', 'AND ')}E."password_" = :where_and_eq_password_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."password_" IS NULL OR E."password_" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_passwordSalt??)>
<#if (where_and_eq_passwordSalt_value??)>
${prefixName?string('WHERE ', 'AND ')}E."password_salt" = :where_and_eq_passwordSalt_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."password_salt" IS NULL OR E."password_salt" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_personalCode??)>
<#if (where_and_eq_personalCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."personal_code" = :where_and_eq_personalCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."personal_code" IS NULL OR E."personal_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_portraitUrl??)>
<#if (where_and_eq_portraitUrl_value??)>
${prefixName?string('WHERE ', 'AND ')}E."portrait_url" = :where_and_eq_portraitUrl_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."portrait_url" IS NULL OR E."portrait_url" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_privatePassword??)>
<#if (where_and_eq_privatePassword_value??)>
${prefixName?string('WHERE ', 'AND ')}E."private_password" = :where_and_eq_privatePassword_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."private_password" IS NULL OR E."private_password" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_privatePasswordSalt??)>
<#if (where_and_eq_privatePasswordSalt_value??)>
${prefixName?string('WHERE ', 'AND ')}E."private_password_salt" = :where_and_eq_privatePasswordSalt_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."private_password_salt" IS NULL OR E."private_password_salt" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_professionCode??)>
<#if (where_and_eq_professionCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."profession_code" = :where_and_eq_professionCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."profession_code" IS NULL OR E."profession_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_provinceCode??)>
<#if (where_and_eq_provinceCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."province_code" = :where_and_eq_provinceCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."province_code" IS NULL OR E."province_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_qq??)>
<#if (where_and_eq_qq_value??)>
${prefixName?string('WHERE ', 'AND ')}E."qq" = :where_and_eq_qq_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."qq" IS NULL OR E."qq" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_regionCode??)>
<#if (where_and_eq_regionCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."region_code" = :where_and_eq_regionCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."region_code" IS NULL OR E."region_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_remark??)>
<#if (where_and_eq_remark_value??)>
${prefixName?string('WHERE ', 'AND ')}E."remark" = :where_and_eq_remark_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."remark" IS NULL OR E."remark" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_sexCode??)>
<#if (where_and_eq_sexCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."sex_code" = :where_and_eq_sexCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."sex_code" IS NULL OR E."sex_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_siteCode??)>
<#if (where_and_eq_siteCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."site_code" = :where_and_eq_siteCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."site_code" IS NULL OR E."site_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_stateCode??)>
<#if (where_and_eq_stateCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."state_code" = :where_and_eq_stateCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."state_code" IS NULL OR E."state_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_systemInfoCode??)>
<#if (where_and_eq_systemInfoCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."system_info_code" = :where_and_eq_systemInfoCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."system_info_code" IS NULL OR E."system_info_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_telephone??)>
<#if (where_and_eq_telephone_value??)>
${prefixName?string('WHERE ', 'AND ')}E."telephone" = :where_and_eq_telephone_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."telephone" IS NULL OR E."telephone" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_userCode??)>
<#if (where_and_eq_userCode_value??)>
${prefixName?string('WHERE ', 'AND ')}E."user_code" = :where_and_eq_userCode_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."user_code" IS NULL OR E."user_code" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_userId??)>
<#if (where_and_eq_userId_value??)>
${prefixName?string('WHERE ', 'AND ')}E."user_id" = :where_and_eq_userId_value
<#else>
${prefixName?string('WHERE ', 'AND ')}(E."user_id" IS NULL OR E."user_id" = '')
</#if>
<#assign prefixName = false>
</#if>
<#if (where_and_eq_version??)>
<#if (where_and_eq_version_value??)>
${prefixName?string('WHERE ', 'AND ')}E."version_" = :where_and_eq_version_value
<#else>
${prefixName?string('WHERE ', 'AND ')}E."version_" IS NULL
</#if>
<#assign prefixName = false>
</#if>
))