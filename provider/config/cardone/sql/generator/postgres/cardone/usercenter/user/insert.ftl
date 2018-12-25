INSERT
INTO "c1_user"
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
<#if (insert_createdById??) && (insert_createdById_value??)>
${prefixName?string('  ', ', ')}"created_by_id"
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
<#if (insert_departmentId??) && (insert_departmentId_value??)>
${prefixName?string('  ', ', ')}"department_id"
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
<#if (insert_lastModifiedById??) && (insert_lastModifiedById_value??)>
${prefixName?string('  ', ', ')}"last_modified_by_id"
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
<#if (insert_lastSyncTime??) && (insert_lastSyncTime_value??)>
${prefixName?string('  ', ', ')}"last_sync_time"
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
<#if (insert_password2??) && (insert_password2_value??)>
${prefixName?string('  ', ', ')}"password2"
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
<#if (insert_personalId??) && (insert_personalId_value??)>
${prefixName?string('  ', ', ')}"personal_id"
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
<#if (insert_sourceCode??) && (insert_sourceCode_value??)>
${prefixName?string('  ', ', ')}"source_code"
<#assign prefixName = false>
</#if>
<#if (insert_stateCode??) && (insert_stateCode_value??)>
${prefixName?string('  ', ', ')}"state_code"
<#assign prefixName = false>
</#if>
<#if (insert_syncReturnCode??) && (insert_syncReturnCode_value??)>
${prefixName?string('  ', ', ')}"sync_return_code"
<#assign prefixName = false>
</#if>
<#if (insert_syncReturnMessage??) && (insert_syncReturnMessage_value??)>
${prefixName?string('  ', ', ')}"sync_return_message"
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
<#if (insert_thirdPartyCode??) && (insert_thirdPartyCode_value??)>
${prefixName?string('  ', ', ')}"third_party_code"
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
VALUES
(<#assign prefixName = true>
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
<#if (insert_createdById??) && (insert_createdById_value??)>
${prefixName?string('  ', ', ')}:insert_createdById_value
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
<#if (insert_departmentId??) && (insert_departmentId_value??)>
${prefixName?string('  ', ', ')}:insert_departmentId_value
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
<#if (insert_lastModifiedById??) && (insert_lastModifiedById_value??)>
${prefixName?string('  ', ', ')}:insert_lastModifiedById_value
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
<#if (insert_lastSyncTime??) && (insert_lastSyncTime_value??)>
${prefixName?string('  ', ', ')}:insert_lastSyncTime_value
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
<#if (insert_password2??) && (insert_password2_value??)>
${prefixName?string('  ', ', ')}:insert_password2_value
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
<#if (insert_personalId??) && (insert_personalId_value??)>
${prefixName?string('  ', ', ')}:insert_personalId_value
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
<#if (insert_sourceCode??) && (insert_sourceCode_value??)>
${prefixName?string('  ', ', ')}:insert_sourceCode_value
<#assign prefixName = false>
</#if>
<#if (insert_stateCode??) && (insert_stateCode_value??)>
${prefixName?string('  ', ', ')}:insert_stateCode_value
<#assign prefixName = false>
</#if>
<#if (insert_syncReturnCode??) && (insert_syncReturnCode_value??)>
${prefixName?string('  ', ', ')}:insert_syncReturnCode_value
<#assign prefixName = false>
</#if>
<#if (insert_syncReturnMessage??) && (insert_syncReturnMessage_value??)>
${prefixName?string('  ', ', ')}:insert_syncReturnMessage_value
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
<#if (insert_thirdPartyCode??) && (insert_thirdPartyCode_value??)>
${prefixName?string('  ', ', ')}:insert_thirdPartyCode_value
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
)