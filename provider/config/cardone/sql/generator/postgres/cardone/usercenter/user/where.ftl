<#assign prefixName = 'WHERE'>
<#if (where_and_eq_address??)>
<#if (where_and_eq_address_value??)>
${prefixName} address = :where_and_eq_address_value
<#else>
${prefixName} address IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_age??)>
<#if (where_and_eq_age_value??)>
${prefixName} age = :where_and_eq_age_value
<#else>
${prefixName} age IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_aliasName??)>
<#if (where_and_eq_aliasName_value??)>
${prefixName} alias_name = :where_and_eq_aliasName_value
<#else>
${prefixName} alias_name IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_areaCode??)>
<#if (where_and_eq_areaCode_value??)>
${prefixName} area_code = :where_and_eq_areaCode_value
<#else>
${prefixName} area_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_beginDate??)>
<#if (where_and_eq_beginDate_value??)>
${prefixName} begin_date = :where_and_eq_beginDate_value
<#else>
${prefixName} begin_date IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_birthday??)>
<#if (where_and_eq_birthday_value??)>
${prefixName} birthday = :where_and_eq_birthday_value
<#else>
${prefixName} birthday IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_callName??)>
<#if (where_and_eq_callName_value??)>
${prefixName} call_name = :where_and_eq_callName_value
<#else>
${prefixName} call_name IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_cityCode??)>
<#if (where_and_eq_cityCode_value??)>
${prefixName} city_code = :where_and_eq_cityCode_value
<#else>
${prefixName} city_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_companyName??)>
<#if (where_and_eq_companyName_value??)>
${prefixName} company_name = :where_and_eq_companyName_value
<#else>
${prefixName} company_name IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_contact??)>
<#if (where_and_eq_contact_value??)>
${prefixName} contact = :where_and_eq_contact_value
<#else>
${prefixName} contact IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_countryCode??)>
<#if (where_and_eq_countryCode_value??)>
${prefixName} country_code = :where_and_eq_countryCode_value
<#else>
${prefixName} country_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_createdByCode??)>
<#if (where_and_eq_createdByCode_value??)>
${prefixName} created_by_code = :where_and_eq_createdByCode_value
<#else>
${prefixName} created_by_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_createdDate??)>
<#if (where_and_eq_createdDate_value??)>
${prefixName} created_date = :where_and_eq_createdDate_value
<#else>
${prefixName} created_date IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_dataStateCode??)>
<#if (where_and_eq_dataStateCode_value??)>
${prefixName} data_state_code = :where_and_eq_dataStateCode_value
<#else>
${prefixName} data_state_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_departmentCode??)>
<#if (where_and_eq_departmentCode_value??)>
${prefixName} department_code = :where_and_eq_departmentCode_value
<#else>
${prefixName} department_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_diplomaCode??)>
<#if (where_and_eq_diplomaCode_value??)>
${prefixName} diploma_code = :where_and_eq_diplomaCode_value
<#else>
${prefixName} diploma_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_email??)>
<#if (where_and_eq_email_value??)>
${prefixName} email = :where_and_eq_email_value
<#else>
${prefixName} email IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_endDate??)>
<#if (where_and_eq_endDate_value??)>
${prefixName} end_date = :where_and_eq_endDate_value
<#else>
${prefixName} end_date IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_flagCode??)>
<#if (where_and_eq_flagCode_value??)>
${prefixName} flag_code = :where_and_eq_flagCode_value
<#else>
${prefixName} flag_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_flagObjectCode??)>
<#if (where_and_eq_flagObjectCode_value??)>
${prefixName} flag_object_code = :where_and_eq_flagObjectCode_value
<#else>
${prefixName} flag_object_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_folkCode??)>
<#if (where_and_eq_folkCode_value??)>
${prefixName} folk_code = :where_and_eq_folkCode_value
<#else>
${prefixName} folk_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_idCardCode??)>
<#if (where_and_eq_idCardCode_value??)>
${prefixName} id_card_code = :where_and_eq_idCardCode_value
<#else>
${prefixName} id_card_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_idCardNo??)>
<#if (where_and_eq_idCardNo_value??)>
${prefixName} id_card_no = :where_and_eq_idCardNo_value
<#else>
${prefixName} id_card_no IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_intro??)>
<#if (where_and_eq_intro_value??)>
${prefixName} intro = :where_and_eq_intro_value
<#else>
${prefixName} intro IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_jsonData??)>
<#if (where_and_eq_jsonData_value??)>
${prefixName} json_data = :where_and_eq_jsonData_value
<#else>
${prefixName} json_data IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_lastModifiedByCode??)>
<#if (where_and_eq_lastModifiedByCode_value??)>
${prefixName} last_modified_by_code = :where_and_eq_lastModifiedByCode_value
<#else>
${prefixName} last_modified_by_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_lastModifiedDate??)>
<#if (where_and_eq_lastModifiedDate_value??)>
${prefixName} last_modified_date = :where_and_eq_lastModifiedDate_value
<#else>
${prefixName} last_modified_date IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_locus??)>
<#if (where_and_eq_locus_value??)>
${prefixName} locus = :where_and_eq_locus_value
<#else>
${prefixName} locus IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_marryStateCode??)>
<#if (where_and_eq_marryStateCode_value??)>
${prefixName} marry_state_code = :where_and_eq_marryStateCode_value
<#else>
${prefixName} marry_state_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_mobilePhone??)>
<#if (where_and_eq_mobilePhone_value??)>
${prefixName} mobile_phone = :where_and_eq_mobilePhone_value
<#else>
${prefixName} mobile_phone IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_name??)>
<#if (where_and_eq_name_value??)>
${prefixName} name = :where_and_eq_name_value
<#else>
${prefixName} name IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_namePinyin??)>
<#if (where_and_eq_namePinyin_value??)>
${prefixName} name_pinyin = :where_and_eq_namePinyin_value
<#else>
${prefixName} name_pinyin IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_order??)>
<#if (where_and_eq_order_value??)>
${prefixName} order_ = :where_and_eq_order_value
<#else>
${prefixName} order_ IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_orgCode??)>
<#if (where_and_eq_orgCode_value??)>
${prefixName} org_code = :where_and_eq_orgCode_value
<#else>
${prefixName} org_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_password??)>
<#if (where_and_eq_password_value??)>
${prefixName} password_ = :where_and_eq_password_value
<#else>
${prefixName} password_ IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_passwordSalt??)>
<#if (where_and_eq_passwordSalt_value??)>
${prefixName} password_salt = :where_and_eq_passwordSalt_value
<#else>
${prefixName} password_salt IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_portraitUrl??)>
<#if (where_and_eq_portraitUrl_value??)>
${prefixName} portrait_url = :where_and_eq_portraitUrl_value
<#else>
${prefixName} portrait_url IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_privatePassword??)>
<#if (where_and_eq_privatePassword_value??)>
${prefixName} private_password = :where_and_eq_privatePassword_value
<#else>
${prefixName} private_password IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_privatePasswordSalt??)>
<#if (where_and_eq_privatePasswordSalt_value??)>
${prefixName} private_password_salt = :where_and_eq_privatePasswordSalt_value
<#else>
${prefixName} private_password_salt IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_professionCode??)>
<#if (where_and_eq_professionCode_value??)>
${prefixName} profession_code = :where_and_eq_professionCode_value
<#else>
${prefixName} profession_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_provinceCode??)>
<#if (where_and_eq_provinceCode_value??)>
${prefixName} province_code = :where_and_eq_provinceCode_value
<#else>
${prefixName} province_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_qq??)>
<#if (where_and_eq_qq_value??)>
${prefixName} qq = :where_and_eq_qq_value
<#else>
${prefixName} qq IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_regionCode??)>
<#if (where_and_eq_regionCode_value??)>
${prefixName} region_code = :where_and_eq_regionCode_value
<#else>
${prefixName} region_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_remark??)>
<#if (where_and_eq_remark_value??)>
${prefixName} remark = :where_and_eq_remark_value
<#else>
${prefixName} remark IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_sexCode??)>
<#if (where_and_eq_sexCode_value??)>
${prefixName} sex_code = :where_and_eq_sexCode_value
<#else>
${prefixName} sex_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_siteCode??)>
<#if (where_and_eq_siteCode_value??)>
${prefixName} site_code = :where_and_eq_siteCode_value
<#else>
${prefixName} site_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_stateCode??)>
<#if (where_and_eq_stateCode_value??)>
${prefixName} state_code = :where_and_eq_stateCode_value
<#else>
${prefixName} state_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_systemInfoCode??)>
<#if (where_and_eq_systemInfoCode_value??)>
${prefixName} system_info_code = :where_and_eq_systemInfoCode_value
<#else>
${prefixName} system_info_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_telephone??)>
<#if (where_and_eq_telephone_value??)>
${prefixName} telephone = :where_and_eq_telephone_value
<#else>
${prefixName} telephone IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_userCode??)>
<#if (where_and_eq_userCode_value??)>
${prefixName} user_code = :where_and_eq_userCode_value
<#else>
${prefixName} user_code IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_userId??)>
<#if (where_and_eq_userId_value??)>
${prefixName} user_id = :where_and_eq_userId_value
<#else>
${prefixName} user_id IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_version??)>
<#if (where_and_eq_version_value??)>
${prefixName} version_ = :where_and_eq_version_value
<#else>
${prefixName} version_ IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
