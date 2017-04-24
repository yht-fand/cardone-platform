INSERT
INTO
c1_user
(<#assign prefixName = ' '>
<#if (insert_address??) && (insert_address_value??)>
${prefixName} address
<#assign prefixName = ','>
</#if>
<#if (insert_age??) && (insert_age_value??)>
${prefixName} age
<#assign prefixName = ','>
</#if>
<#if (insert_aliasName??) && (insert_aliasName_value??)>
${prefixName} alias_name
<#assign prefixName = ','>
</#if>
<#if (insert_areaCode??) && (insert_areaCode_value??)>
${prefixName} area_code
<#assign prefixName = ','>
</#if>
<#if (insert_beginDate??) && (insert_beginDate_value??)>
${prefixName} begin_date
<#assign prefixName = ','>
</#if>
<#if (insert_birthday??) && (insert_birthday_value??)>
${prefixName} birthday
<#assign prefixName = ','>
</#if>
<#if (insert_callName??) && (insert_callName_value??)>
${prefixName} call_name
<#assign prefixName = ','>
</#if>
<#if (insert_cityCode??) && (insert_cityCode_value??)>
${prefixName} city_code
<#assign prefixName = ','>
</#if>
<#if (insert_companyName??) && (insert_companyName_value??)>
${prefixName} company_name
<#assign prefixName = ','>
</#if>
<#if (insert_contact??) && (insert_contact_value??)>
${prefixName} contact
<#assign prefixName = ','>
</#if>
<#if (insert_countryCode??) && (insert_countryCode_value??)>
${prefixName} country_code
<#assign prefixName = ','>
</#if>
<#if (insert_createdByCode??) && (insert_createdByCode_value??)>
${prefixName} created_by_code
<#assign prefixName = ','>
</#if>
<#if (insert_createdDate??) && (insert_createdDate_value??)>
${prefixName} created_date
<#assign prefixName = ','>
</#if>
<#if (insert_dataStateCode??) && (insert_dataStateCode_value??)>
${prefixName} data_state_code
<#assign prefixName = ','>
</#if>
<#if (insert_departmentCode??) && (insert_departmentCode_value??)>
${prefixName} department_code
<#assign prefixName = ','>
</#if>
<#if (insert_diplomaCode??) && (insert_diplomaCode_value??)>
${prefixName} diploma_code
<#assign prefixName = ','>
</#if>
<#if (insert_email??) && (insert_email_value??)>
${prefixName} email
<#assign prefixName = ','>
</#if>
<#if (insert_endDate??) && (insert_endDate_value??)>
${prefixName} end_date
<#assign prefixName = ','>
</#if>
<#if (insert_firstName??) && (insert_firstName_value??)>
${prefixName} first_name
<#assign prefixName = ','>
</#if>
<#if (insert_flagCode??) && (insert_flagCode_value??)>
${prefixName} flag_code
<#assign prefixName = ','>
</#if>
<#if (insert_flagObjectCode??) && (insert_flagObjectCode_value??)>
${prefixName} flag_object_code
<#assign prefixName = ','>
</#if>
<#if (insert_folkCode??) && (insert_folkCode_value??)>
${prefixName} folk_code
<#assign prefixName = ','>
</#if>
<#if (insert_idCardCode??) && (insert_idCardCode_value??)>
${prefixName} id_card_code
<#assign prefixName = ','>
</#if>
<#if (insert_idCardNo??) && (insert_idCardNo_value??)>
${prefixName} id_card_no
<#assign prefixName = ','>
</#if>
<#if (insert_intro??) && (insert_intro_value??)>
${prefixName} intro
<#assign prefixName = ','>
</#if>
<#if (insert_jsonData??) && (insert_jsonData_value??)>
${prefixName} json_data
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedByCode??) && (insert_lastModifiedByCode_value??)>
${prefixName} last_modified_by_code
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedDate??) && (insert_lastModifiedDate_value??)>
${prefixName} last_modified_date
<#assign prefixName = ','>
</#if>
<#if (insert_lastName??) && (insert_lastName_value??)>
${prefixName} last_name
<#assign prefixName = ','>
</#if>
<#if (insert_locus??) && (insert_locus_value??)>
${prefixName} locus
<#assign prefixName = ','>
</#if>
<#if (insert_marryStateCode??) && (insert_marryStateCode_value??)>
${prefixName} marry_state_code
<#assign prefixName = ','>
</#if>
<#if (insert_mobilePhone??) && (insert_mobilePhone_value??)>
${prefixName} mobile_phone
<#assign prefixName = ','>
</#if>
<#if (insert_name??) && (insert_name_value??)>
${prefixName} name
<#assign prefixName = ','>
</#if>
<#if (insert_namePinyin??) && (insert_namePinyin_value??)>
${prefixName} name_pinyin
<#assign prefixName = ','>
</#if>
<#if (insert_order??) && (insert_order_value??)>
${prefixName} order_
<#assign prefixName = ','>
</#if>
<#if (insert_orgCode??) && (insert_orgCode_value??)>
${prefixName} org_code
<#assign prefixName = ','>
</#if>
<#if (insert_password??) && (insert_password_value??)>
${prefixName} password_
<#assign prefixName = ','>
</#if>
<#if (insert_passwordSalt??) && (insert_passwordSalt_value??)>
${prefixName} password_salt
<#assign prefixName = ','>
</#if>
<#if (insert_portraitUrl??) && (insert_portraitUrl_value??)>
${prefixName} portrait_url
<#assign prefixName = ','>
</#if>
<#if (insert_privatePassword??) && (insert_privatePassword_value??)>
${prefixName} private_password
<#assign prefixName = ','>
</#if>
<#if (insert_privatePasswordSalt??) && (insert_privatePasswordSalt_value??)>
${prefixName} private_password_salt
<#assign prefixName = ','>
</#if>
<#if (insert_professionCode??) && (insert_professionCode_value??)>
${prefixName} profession_code
<#assign prefixName = ','>
</#if>
<#if (insert_provinceCode??) && (insert_provinceCode_value??)>
${prefixName} province_code
<#assign prefixName = ','>
</#if>
<#if (insert_qq??) && (insert_qq_value??)>
${prefixName} qq
<#assign prefixName = ','>
</#if>
<#if (insert_regionCode??) && (insert_regionCode_value??)>
${prefixName} region_code
<#assign prefixName = ','>
</#if>
<#if (insert_remark??) && (insert_remark_value??)>
${prefixName} remark
<#assign prefixName = ','>
</#if>
<#if (insert_sexCode??) && (insert_sexCode_value??)>
${prefixName} sex_code
<#assign prefixName = ','>
</#if>
<#if (insert_siteCode??) && (insert_siteCode_value??)>
${prefixName} site_code
<#assign prefixName = ','>
</#if>
<#if (insert_stateCode??) && (insert_stateCode_value??)>
${prefixName} state_code
<#assign prefixName = ','>
</#if>
<#if (insert_systemInfoCode??) && (insert_systemInfoCode_value??)>
${prefixName} system_info_code
<#assign prefixName = ','>
</#if>
<#if (insert_telephone??) && (insert_telephone_value??)>
${prefixName} telephone
<#assign prefixName = ','>
</#if>
<#if (insert_userCode??) && (insert_userCode_value??)>
${prefixName} user_code
<#assign prefixName = ','>
</#if>
<#if (insert_userId??) && (insert_userId_value??)>
${prefixName} user_id
<#assign prefixName = ','>
</#if>
<#if (insert_version??) && (insert_version_value??)>
${prefixName} version_
<#assign prefixName = ','>
</#if>
)
(SELECT
<#assign prefixName = ' '>
<#if (insert_address??) && (insert_address_value??)>
${prefixName} :insert_address_value
<#assign prefixName = ','>
</#if>
<#if (insert_age??) && (insert_age_value??)>
${prefixName} :insert_age_value
<#assign prefixName = ','>
</#if>
<#if (insert_aliasName??) && (insert_aliasName_value??)>
${prefixName} :insert_aliasName_value
<#assign prefixName = ','>
</#if>
<#if (insert_areaCode??) && (insert_areaCode_value??)>
${prefixName} :insert_areaCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_beginDate??) && (insert_beginDate_value??)>
${prefixName} :insert_beginDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_birthday??) && (insert_birthday_value??)>
${prefixName} :insert_birthday_value
<#assign prefixName = ','>
</#if>
<#if (insert_callName??) && (insert_callName_value??)>
${prefixName} :insert_callName_value
<#assign prefixName = ','>
</#if>
<#if (insert_cityCode??) && (insert_cityCode_value??)>
${prefixName} :insert_cityCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_companyName??) && (insert_companyName_value??)>
${prefixName} :insert_companyName_value
<#assign prefixName = ','>
</#if>
<#if (insert_contact??) && (insert_contact_value??)>
${prefixName} :insert_contact_value
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
<#if (insert_diplomaCode??) && (insert_diplomaCode_value??)>
${prefixName} :insert_diplomaCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_email??) && (insert_email_value??)>
${prefixName} :insert_email_value
<#assign prefixName = ','>
</#if>
<#if (insert_endDate??) && (insert_endDate_value??)>
${prefixName} :insert_endDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_firstName??) && (insert_firstName_value??)>
${prefixName} :insert_firstName_value
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
<#if (insert_folkCode??) && (insert_folkCode_value??)>
${prefixName} :insert_folkCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_idCardCode??) && (insert_idCardCode_value??)>
${prefixName} :insert_idCardCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_idCardNo??) && (insert_idCardNo_value??)>
${prefixName} :insert_idCardNo_value
<#assign prefixName = ','>
</#if>
<#if (insert_intro??) && (insert_intro_value??)>
${prefixName} :insert_intro_value
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
<#if (insert_lastName??) && (insert_lastName_value??)>
${prefixName} :insert_lastName_value
<#assign prefixName = ','>
</#if>
<#if (insert_locus??) && (insert_locus_value??)>
${prefixName} :insert_locus_value
<#assign prefixName = ','>
</#if>
<#if (insert_marryStateCode??) && (insert_marryStateCode_value??)>
${prefixName} :insert_marryStateCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_mobilePhone??) && (insert_mobilePhone_value??)>
${prefixName} :insert_mobilePhone_value
<#assign prefixName = ','>
</#if>
<#if (insert_name??) && (insert_name_value??)>
${prefixName} :insert_name_value
<#assign prefixName = ','>
</#if>
<#if (insert_namePinyin??) && (insert_namePinyin_value??)>
${prefixName} :insert_namePinyin_value
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
<#if (insert_password??) && (insert_password_value??)>
${prefixName} :insert_password_value
<#assign prefixName = ','>
</#if>
<#if (insert_passwordSalt??) && (insert_passwordSalt_value??)>
${prefixName} :insert_passwordSalt_value
<#assign prefixName = ','>
</#if>
<#if (insert_portraitUrl??) && (insert_portraitUrl_value??)>
${prefixName} :insert_portraitUrl_value
<#assign prefixName = ','>
</#if>
<#if (insert_privatePassword??) && (insert_privatePassword_value??)>
${prefixName} :insert_privatePassword_value
<#assign prefixName = ','>
</#if>
<#if (insert_privatePasswordSalt??) && (insert_privatePasswordSalt_value??)>
${prefixName} :insert_privatePasswordSalt_value
<#assign prefixName = ','>
</#if>
<#if (insert_professionCode??) && (insert_professionCode_value??)>
${prefixName} :insert_professionCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_provinceCode??) && (insert_provinceCode_value??)>
${prefixName} :insert_provinceCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_qq??) && (insert_qq_value??)>
${prefixName} :insert_qq_value
<#assign prefixName = ','>
</#if>
<#if (insert_regionCode??) && (insert_regionCode_value??)>
${prefixName} :insert_regionCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_remark??) && (insert_remark_value??)>
${prefixName} :insert_remark_value
<#assign prefixName = ','>
</#if>
<#if (insert_sexCode??) && (insert_sexCode_value??)>
${prefixName} :insert_sexCode_value
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
<#if (insert_telephone??) && (insert_telephone_value??)>
${prefixName} :insert_telephone_value
<#assign prefixName = ','>
</#if>
<#if (insert_userCode??) && (insert_userCode_value??)>
${prefixName} :insert_userCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_userId??) && (insert_userId_value??)>
${prefixName} :insert_userId_value
<#assign prefixName = ','>
</#if>
<#if (insert_version??) && (insert_version_value??)>
${prefixName} :insert_version_value
<#assign prefixName = ','>
</#if>
WHERE NOT EXISTS (SELECT 1 FROM c1_user E
<#assign prefixName = 'WHERE'>
<#if (where_and_eq_address??)>
<#if (where_and_eq_address_value??)>
${prefixName} E.address = :where_and_eq_address_value
<#else>
${prefixName} E.address IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_age??)>
<#if (where_and_eq_age_value??)>
${prefixName} E.age = :where_and_eq_age_value
<#else>
${prefixName} E.age IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_aliasName??)>
<#if (where_and_eq_aliasName_value??)>
${prefixName} E.alias_name = :where_and_eq_aliasName_value
<#else>
${prefixName} E.alias_name IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_areaCode??)>
<#if (where_and_eq_areaCode_value??)>
${prefixName} E.area_code = :where_and_eq_areaCode_value
<#else>
${prefixName} E.area_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_beginDate??)>
<#if (where_and_eq_beginDate_value??)>
${prefixName} E.begin_date = :where_and_eq_beginDate_value
<#else>
${prefixName} E.begin_date IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_birthday??)>
<#if (where_and_eq_birthday_value??)>
${prefixName} E.birthday = :where_and_eq_birthday_value
<#else>
${prefixName} E.birthday IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_callName??)>
<#if (where_and_eq_callName_value??)>
${prefixName} E.call_name = :where_and_eq_callName_value
<#else>
${prefixName} E.call_name IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_cityCode??)>
<#if (where_and_eq_cityCode_value??)>
${prefixName} E.city_code = :where_and_eq_cityCode_value
<#else>
${prefixName} E.city_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_companyName??)>
<#if (where_and_eq_companyName_value??)>
${prefixName} E.company_name = :where_and_eq_companyName_value
<#else>
${prefixName} E.company_name IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_contact??)>
<#if (where_and_eq_contact_value??)>
${prefixName} E.contact = :where_and_eq_contact_value
<#else>
${prefixName} E.contact IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_countryCode??)>
<#if (where_and_eq_countryCode_value??)>
${prefixName} E.country_code = :where_and_eq_countryCode_value
<#else>
${prefixName} E.country_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_createdByCode??)>
<#if (where_and_eq_createdByCode_value??)>
${prefixName} E.created_by_code = :where_and_eq_createdByCode_value
<#else>
${prefixName} E.created_by_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_createdDate??)>
<#if (where_and_eq_createdDate_value??)>
${prefixName} E.created_date = :where_and_eq_createdDate_value
<#else>
${prefixName} E.created_date IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_dataStateCode??)>
<#if (where_and_eq_dataStateCode_value??)>
${prefixName} E.data_state_code = :where_and_eq_dataStateCode_value
<#else>
${prefixName} E.data_state_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_departmentCode??)>
<#if (where_and_eq_departmentCode_value??)>
${prefixName} E.department_code = :where_and_eq_departmentCode_value
<#else>
${prefixName} E.department_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_diplomaCode??)>
<#if (where_and_eq_diplomaCode_value??)>
${prefixName} E.diploma_code = :where_and_eq_diplomaCode_value
<#else>
${prefixName} E.diploma_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_email??)>
<#if (where_and_eq_email_value??)>
${prefixName} E.email = :where_and_eq_email_value
<#else>
${prefixName} E.email IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_endDate??)>
<#if (where_and_eq_endDate_value??)>
${prefixName} E.end_date = :where_and_eq_endDate_value
<#else>
${prefixName} E.end_date IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_firstName??)>
<#if (where_and_eq_firstName_value??)>
${prefixName} E.first_name = :where_and_eq_firstName_value
<#else>
${prefixName} E.first_name IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_flagCode??)>
<#if (where_and_eq_flagCode_value??)>
${prefixName} E.flag_code = :where_and_eq_flagCode_value
<#else>
${prefixName} E.flag_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_flagObjectCode??)>
<#if (where_and_eq_flagObjectCode_value??)>
${prefixName} E.flag_object_code = :where_and_eq_flagObjectCode_value
<#else>
${prefixName} E.flag_object_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_folkCode??)>
<#if (where_and_eq_folkCode_value??)>
${prefixName} E.folk_code = :where_and_eq_folkCode_value
<#else>
${prefixName} E.folk_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_idCardCode??)>
<#if (where_and_eq_idCardCode_value??)>
${prefixName} E.id_card_code = :where_and_eq_idCardCode_value
<#else>
${prefixName} E.id_card_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_idCardNo??)>
<#if (where_and_eq_idCardNo_value??)>
${prefixName} E.id_card_no = :where_and_eq_idCardNo_value
<#else>
${prefixName} E.id_card_no IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_intro??)>
<#if (where_and_eq_intro_value??)>
${prefixName} E.intro = :where_and_eq_intro_value
<#else>
${prefixName} E.intro IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_jsonData??)>
<#if (where_and_eq_jsonData_value??)>
${prefixName} E.json_data = :where_and_eq_jsonData_value
<#else>
${prefixName} E.json_data IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_lastModifiedByCode??)>
<#if (where_and_eq_lastModifiedByCode_value??)>
${prefixName} E.last_modified_by_code = :where_and_eq_lastModifiedByCode_value
<#else>
${prefixName} E.last_modified_by_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_lastModifiedDate??)>
<#if (where_and_eq_lastModifiedDate_value??)>
${prefixName} E.last_modified_date = :where_and_eq_lastModifiedDate_value
<#else>
${prefixName} E.last_modified_date IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_lastName??)>
<#if (where_and_eq_lastName_value??)>
${prefixName} E.last_name = :where_and_eq_lastName_value
<#else>
${prefixName} E.last_name IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_locus??)>
<#if (where_and_eq_locus_value??)>
${prefixName} E.locus = :where_and_eq_locus_value
<#else>
${prefixName} E.locus IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_marryStateCode??)>
<#if (where_and_eq_marryStateCode_value??)>
${prefixName} E.marry_state_code = :where_and_eq_marryStateCode_value
<#else>
${prefixName} E.marry_state_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_mobilePhone??)>
<#if (where_and_eq_mobilePhone_value??)>
${prefixName} E.mobile_phone = :where_and_eq_mobilePhone_value
<#else>
${prefixName} E.mobile_phone IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_name??)>
<#if (where_and_eq_name_value??)>
${prefixName} E.name = :where_and_eq_name_value
<#else>
${prefixName} E.name IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_namePinyin??)>
<#if (where_and_eq_namePinyin_value??)>
${prefixName} E.name_pinyin = :where_and_eq_namePinyin_value
<#else>
${prefixName} E.name_pinyin IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_order??)>
<#if (where_and_eq_order_value??)>
${prefixName} E.order_ = :where_and_eq_order_value
<#else>
${prefixName} E.order_ IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_orgCode??)>
<#if (where_and_eq_orgCode_value??)>
${prefixName} E.org_code = :where_and_eq_orgCode_value
<#else>
${prefixName} E.org_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_password??)>
<#if (where_and_eq_password_value??)>
${prefixName} E.password_ = :where_and_eq_password_value
<#else>
${prefixName} E.password_ IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_passwordSalt??)>
<#if (where_and_eq_passwordSalt_value??)>
${prefixName} E.password_salt = :where_and_eq_passwordSalt_value
<#else>
${prefixName} E.password_salt IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_portraitUrl??)>
<#if (where_and_eq_portraitUrl_value??)>
${prefixName} E.portrait_url = :where_and_eq_portraitUrl_value
<#else>
${prefixName} E.portrait_url IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_privatePassword??)>
<#if (where_and_eq_privatePassword_value??)>
${prefixName} E.private_password = :where_and_eq_privatePassword_value
<#else>
${prefixName} E.private_password IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_privatePasswordSalt??)>
<#if (where_and_eq_privatePasswordSalt_value??)>
${prefixName} E.private_password_salt = :where_and_eq_privatePasswordSalt_value
<#else>
${prefixName} E.private_password_salt IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_professionCode??)>
<#if (where_and_eq_professionCode_value??)>
${prefixName} E.profession_code = :where_and_eq_professionCode_value
<#else>
${prefixName} E.profession_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_provinceCode??)>
<#if (where_and_eq_provinceCode_value??)>
${prefixName} E.province_code = :where_and_eq_provinceCode_value
<#else>
${prefixName} E.province_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_qq??)>
<#if (where_and_eq_qq_value??)>
${prefixName} E.qq = :where_and_eq_qq_value
<#else>
${prefixName} E.qq IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_regionCode??)>
<#if (where_and_eq_regionCode_value??)>
${prefixName} E.region_code = :where_and_eq_regionCode_value
<#else>
${prefixName} E.region_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_remark??)>
<#if (where_and_eq_remark_value??)>
${prefixName} E.remark = :where_and_eq_remark_value
<#else>
${prefixName} E.remark IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_sexCode??)>
<#if (where_and_eq_sexCode_value??)>
${prefixName} E.sex_code = :where_and_eq_sexCode_value
<#else>
${prefixName} E.sex_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_siteCode??)>
<#if (where_and_eq_siteCode_value??)>
${prefixName} E.site_code = :where_and_eq_siteCode_value
<#else>
${prefixName} E.site_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_stateCode??)>
<#if (where_and_eq_stateCode_value??)>
${prefixName} E.state_code = :where_and_eq_stateCode_value
<#else>
${prefixName} E.state_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_systemInfoCode??)>
<#if (where_and_eq_systemInfoCode_value??)>
${prefixName} E.system_info_code = :where_and_eq_systemInfoCode_value
<#else>
${prefixName} E.system_info_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_telephone??)>
<#if (where_and_eq_telephone_value??)>
${prefixName} E.telephone = :where_and_eq_telephone_value
<#else>
${prefixName} E.telephone IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_userCode??)>
<#if (where_and_eq_userCode_value??)>
${prefixName} E.user_code = :where_and_eq_userCode_value
<#else>
${prefixName} E.user_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_userId??)>
<#if (where_and_eq_userId_value??)>
${prefixName} E.user_id = :where_and_eq_userId_value
<#else>
${prefixName} E.user_id IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_version??)>
<#if (where_and_eq_version_value??)>
${prefixName} E.version_ = :where_and_eq_version_value
<#else>
${prefixName} E.version_ IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
))