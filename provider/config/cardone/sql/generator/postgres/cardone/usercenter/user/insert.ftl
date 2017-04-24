INSERT
INTO c1_user
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
VALUES
(<#assign prefixName = ' '>
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
)