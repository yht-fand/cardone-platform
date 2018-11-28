<#include "insert.ftl">
on conflict (
<#assign prefixName = true>
<#if (index_address??)>
${prefixName?string('', ', ')}"address"
<#assign prefixName = false>
</#if>
<#if (index_age??)>
${prefixName?string('', ', ')}"age"
<#assign prefixName = false>
</#if>
<#if (index_aliasName??)>
${prefixName?string('', ', ')}"alias_name"
<#assign prefixName = false>
</#if>
<#if (index_areaCode??)>
${prefixName?string('', ', ')}"area_code"
<#assign prefixName = false>
</#if>
<#if (index_batchNo??)>
${prefixName?string('', ', ')}"batch_no"
<#assign prefixName = false>
</#if>
<#if (index_beginDate??)>
${prefixName?string('', ', ')}"begin_date"
<#assign prefixName = false>
</#if>
<#if (index_birthday??)>
${prefixName?string('', ', ')}"birthday"
<#assign prefixName = false>
</#if>
<#if (index_callName??)>
${prefixName?string('', ', ')}"call_name"
<#assign prefixName = false>
</#if>
<#if (index_cityCode??)>
${prefixName?string('', ', ')}"city_code"
<#assign prefixName = false>
</#if>
<#if (index_companyName??)>
${prefixName?string('', ', ')}"company_name"
<#assign prefixName = false>
</#if>
<#if (index_contact??)>
${prefixName?string('', ', ')}"contact"
<#assign prefixName = false>
</#if>
<#if (index_countryCode??)>
${prefixName?string('', ', ')}"country_code"
<#assign prefixName = false>
</#if>
<#if (index_createdByCode??)>
${prefixName?string('', ', ')}"created_by_code"
<#assign prefixName = false>
</#if>
<#if (index_createdById??)>
${prefixName?string('', ', ')}"created_by_id"
<#assign prefixName = false>
</#if>
<#if (index_createdDate??)>
${prefixName?string('', ', ')}"created_date"
<#assign prefixName = false>
</#if>
<#if (index_dataStateCode??)>
${prefixName?string('', ', ')}"data_state_code"
<#assign prefixName = false>
</#if>
<#if (index_departmentCode??)>
${prefixName?string('', ', ')}"department_code"
<#assign prefixName = false>
</#if>
<#if (index_departmentId??)>
${prefixName?string('', ', ')}"department_id"
<#assign prefixName = false>
</#if>
<#if (index_diplomaCode??)>
${prefixName?string('', ', ')}"diploma_code"
<#assign prefixName = false>
</#if>
<#if (index_email??)>
${prefixName?string('', ', ')}"email"
<#assign prefixName = false>
</#if>
<#if (index_endDate??)>
${prefixName?string('', ', ')}"end_date"
<#assign prefixName = false>
</#if>
<#if (index_firstName??)>
${prefixName?string('', ', ')}"first_name"
<#assign prefixName = false>
</#if>
<#if (index_flagCode??)>
${prefixName?string('', ', ')}"flag_code"
<#assign prefixName = false>
</#if>
<#if (index_flagObjectCode??)>
${prefixName?string('', ', ')}"flag_object_code"
<#assign prefixName = false>
</#if>
<#if (index_folkCode??)>
${prefixName?string('', ', ')}"folk_code"
<#assign prefixName = false>
</#if>
<#if (index_idCardCode??)>
${prefixName?string('', ', ')}"id_card_code"
<#assign prefixName = false>
</#if>
<#if (index_idCardNo??)>
${prefixName?string('', ', ')}"id_card_no"
<#assign prefixName = false>
</#if>
<#if (index_intro??)>
${prefixName?string('', ', ')}"intro"
<#assign prefixName = false>
</#if>
<#if (index_jsonData??)>
${prefixName?string('', ', ')}"json_data"
<#assign prefixName = false>
</#if>
<#if (index_lastModifiedByCode??)>
${prefixName?string('', ', ')}"last_modified_by_code"
<#assign prefixName = false>
</#if>
<#if (index_lastModifiedById??)>
${prefixName?string('', ', ')}"last_modified_by_id"
<#assign prefixName = false>
</#if>
<#if (index_lastModifiedDate??)>
${prefixName?string('', ', ')}"last_modified_date"
<#assign prefixName = false>
</#if>
<#if (index_lastName??)>
${prefixName?string('', ', ')}"last_name"
<#assign prefixName = false>
</#if>
<#if (index_locus??)>
${prefixName?string('', ', ')}"locus"
<#assign prefixName = false>
</#if>
<#if (index_marryStateCode??)>
${prefixName?string('', ', ')}"marry_state_code"
<#assign prefixName = false>
</#if>
<#if (index_mobilePhone??)>
${prefixName?string('', ', ')}"mobile_phone"
<#assign prefixName = false>
</#if>
<#if (index_name??)>
${prefixName?string('', ', ')}"name"
<#assign prefixName = false>
</#if>
<#if (index_namePinyin??)>
${prefixName?string('', ', ')}"name_pinyin"
<#assign prefixName = false>
</#if>
<#if (index_orderBy??)>
${prefixName?string('', ', ')}"order_by_"
<#assign prefixName = false>
</#if>
<#if (index_orgCode??)>
${prefixName?string('', ', ')}"org_code"
<#assign prefixName = false>
</#if>
<#if (index_password??)>
${prefixName?string('', ', ')}"password_"
<#assign prefixName = false>
</#if>
<#if (index_passwordSalt??)>
${prefixName?string('', ', ')}"password_salt"
<#assign prefixName = false>
</#if>
<#if (index_personalCode??)>
${prefixName?string('', ', ')}"personal_code"
<#assign prefixName = false>
</#if>
<#if (index_personalId??)>
${prefixName?string('', ', ')}"personal_id"
<#assign prefixName = false>
</#if>
<#if (index_portraitUrl??)>
${prefixName?string('', ', ')}"portrait_url"
<#assign prefixName = false>
</#if>
<#if (index_privatePassword??)>
${prefixName?string('', ', ')}"private_password"
<#assign prefixName = false>
</#if>
<#if (index_privatePasswordSalt??)>
${prefixName?string('', ', ')}"private_password_salt"
<#assign prefixName = false>
</#if>
<#if (index_professionCode??)>
${prefixName?string('', ', ')}"profession_code"
<#assign prefixName = false>
</#if>
<#if (index_provinceCode??)>
${prefixName?string('', ', ')}"province_code"
<#assign prefixName = false>
</#if>
<#if (index_qq??)>
${prefixName?string('', ', ')}"qq"
<#assign prefixName = false>
</#if>
<#if (index_regionCode??)>
${prefixName?string('', ', ')}"region_code"
<#assign prefixName = false>
</#if>
<#if (index_remark??)>
${prefixName?string('', ', ')}"remark"
<#assign prefixName = false>
</#if>
<#if (index_sexCode??)>
${prefixName?string('', ', ')}"sex_code"
<#assign prefixName = false>
</#if>
<#if (index_siteCode??)>
${prefixName?string('', ', ')}"site_code"
<#assign prefixName = false>
</#if>
<#if (index_sourceCode??)>
${prefixName?string('', ', ')}"source_code"
<#assign prefixName = false>
</#if>
<#if (index_stateCode??)>
${prefixName?string('', ', ')}"state_code"
<#assign prefixName = false>
</#if>
<#if (index_systemInfoCode??)>
${prefixName?string('', ', ')}"system_info_code"
<#assign prefixName = false>
</#if>
<#if (index_telephone??)>
${prefixName?string('', ', ')}"telephone"
<#assign prefixName = false>
</#if>
<#if (index_thirdPartyCode??)>
${prefixName?string('', ', ')}"third_party_code"
<#assign prefixName = false>
</#if>
<#if (index_userCode??)>
${prefixName?string('', ', ')}"user_code"
<#assign prefixName = false>
</#if>
<#if (index_userId??)>
${prefixName?string('', ', ')}"user_id"
<#assign prefixName = false>
</#if>
<#if (index_version??)>
${prefixName?string('', ', ')}"version_"
<#assign prefixName = false>
</#if>
) do update set
<#assign prefixName = true>
<#if (update_address??)>
${prefixName?string('', ', ')}"address" = :update_address_value
<#assign prefixName = false>
</#if>
<#if (update_age??)>
${prefixName?string('', ', ')}"age" = :update_age_value
<#assign prefixName = false>
</#if>
<#if (update_aliasName??)>
${prefixName?string('', ', ')}"alias_name" = :update_aliasName_value
<#assign prefixName = false>
</#if>
<#if (update_areaCode??)>
${prefixName?string('', ', ')}"area_code" = :update_areaCode_value
<#assign prefixName = false>
</#if>
<#if (update_batchNo??)>
${prefixName?string('', ', ')}"batch_no" = :update_batchNo_value
<#assign prefixName = false>
</#if>
<#if (update_beginDate??)>
${prefixName?string('', ', ')}"begin_date" = :update_beginDate_value
<#assign prefixName = false>
</#if>
<#if (update_birthday??)>
${prefixName?string('', ', ')}"birthday" = :update_birthday_value
<#assign prefixName = false>
</#if>
<#if (update_callName??)>
${prefixName?string('', ', ')}"call_name" = :update_callName_value
<#assign prefixName = false>
</#if>
<#if (update_cityCode??)>
${prefixName?string('', ', ')}"city_code" = :update_cityCode_value
<#assign prefixName = false>
</#if>
<#if (update_companyName??)>
${prefixName?string('', ', ')}"company_name" = :update_companyName_value
<#assign prefixName = false>
</#if>
<#if (update_contact??)>
${prefixName?string('', ', ')}"contact" = :update_contact_value
<#assign prefixName = false>
</#if>
<#if (update_countryCode??)>
${prefixName?string('', ', ')}"country_code" = :update_countryCode_value
<#assign prefixName = false>
</#if>
<#if (update_createdByCode??)>
${prefixName?string('', ', ')}"created_by_code" = :update_createdByCode_value
<#assign prefixName = false>
</#if>
<#if (update_createdById??)>
${prefixName?string('', ', ')}"created_by_id" = :update_createdById_value
<#assign prefixName = false>
</#if>
<#if (update_createdDate??)>
${prefixName?string('', ', ')}"created_date" = :update_createdDate_value
<#assign prefixName = false>
</#if>
<#if (update_dataStateCode??)>
${prefixName?string('', ', ')}"data_state_code" = :update_dataStateCode_value
<#assign prefixName = false>
</#if>
<#if (update_departmentCode??)>
${prefixName?string('', ', ')}"department_code" = :update_departmentCode_value
<#assign prefixName = false>
</#if>
<#if (update_departmentId??)>
${prefixName?string('', ', ')}"department_id" = :update_departmentId_value
<#assign prefixName = false>
</#if>
<#if (update_diplomaCode??)>
${prefixName?string('', ', ')}"diploma_code" = :update_diplomaCode_value
<#assign prefixName = false>
</#if>
<#if (update_email??)>
${prefixName?string('', ', ')}"email" = :update_email_value
<#assign prefixName = false>
</#if>
<#if (update_endDate??)>
${prefixName?string('', ', ')}"end_date" = :update_endDate_value
<#assign prefixName = false>
</#if>
<#if (update_firstName??)>
${prefixName?string('', ', ')}"first_name" = :update_firstName_value
<#assign prefixName = false>
</#if>
<#if (update_flagCode??)>
${prefixName?string('', ', ')}"flag_code" = :update_flagCode_value
<#assign prefixName = false>
</#if>
<#if (update_flagObjectCode??)>
${prefixName?string('', ', ')}"flag_object_code" = :update_flagObjectCode_value
<#assign prefixName = false>
</#if>
<#if (update_folkCode??)>
${prefixName?string('', ', ')}"folk_code" = :update_folkCode_value
<#assign prefixName = false>
</#if>
<#if (update_idCardCode??)>
${prefixName?string('', ', ')}"id_card_code" = :update_idCardCode_value
<#assign prefixName = false>
</#if>
<#if (update_idCardNo??)>
${prefixName?string('', ', ')}"id_card_no" = :update_idCardNo_value
<#assign prefixName = false>
</#if>
<#if (update_intro??)>
${prefixName?string('', ', ')}"intro" = :update_intro_value
<#assign prefixName = false>
</#if>
<#if (update_jsonData??)>
${prefixName?string('', ', ')}"json_data" = :update_jsonData_value
<#assign prefixName = false>
</#if>
<#if (update_lastModifiedByCode??)>
${prefixName?string('', ', ')}"last_modified_by_code" = :update_lastModifiedByCode_value
<#assign prefixName = false>
</#if>
<#if (update_lastModifiedById??)>
${prefixName?string('', ', ')}"last_modified_by_id" = :update_lastModifiedById_value
<#assign prefixName = false>
</#if>
<#if (update_lastModifiedDate??)>
${prefixName?string('', ', ')}"last_modified_date" = :update_lastModifiedDate_value
<#assign prefixName = false>
</#if>
<#if (update_lastName??)>
${prefixName?string('', ', ')}"last_name" = :update_lastName_value
<#assign prefixName = false>
</#if>
<#if (update_locus??)>
${prefixName?string('', ', ')}"locus" = :update_locus_value
<#assign prefixName = false>
</#if>
<#if (update_marryStateCode??)>
${prefixName?string('', ', ')}"marry_state_code" = :update_marryStateCode_value
<#assign prefixName = false>
</#if>
<#if (update_mobilePhone??)>
${prefixName?string('', ', ')}"mobile_phone" = :update_mobilePhone_value
<#assign prefixName = false>
</#if>
<#if (update_name??)>
${prefixName?string('', ', ')}"name" = :update_name_value
<#assign prefixName = false>
</#if>
<#if (update_namePinyin??)>
${prefixName?string('', ', ')}"name_pinyin" = :update_namePinyin_value
<#assign prefixName = false>
</#if>
<#if (update_orderBy??)>
${prefixName?string('', ', ')}"order_by_" = :update_orderBy_value
<#assign prefixName = false>
</#if>
<#if (update_orgCode??)>
${prefixName?string('', ', ')}"org_code" = :update_orgCode_value
<#assign prefixName = false>
</#if>
<#if (update_password??)>
${prefixName?string('', ', ')}"password_" = :update_password_value
<#assign prefixName = false>
</#if>
<#if (update_passwordSalt??)>
${prefixName?string('', ', ')}"password_salt" = :update_passwordSalt_value
<#assign prefixName = false>
</#if>
<#if (update_personalCode??)>
${prefixName?string('', ', ')}"personal_code" = :update_personalCode_value
<#assign prefixName = false>
</#if>
<#if (update_personalId??)>
${prefixName?string('', ', ')}"personal_id" = :update_personalId_value
<#assign prefixName = false>
</#if>
<#if (update_portraitUrl??)>
${prefixName?string('', ', ')}"portrait_url" = :update_portraitUrl_value
<#assign prefixName = false>
</#if>
<#if (update_privatePassword??)>
${prefixName?string('', ', ')}"private_password" = :update_privatePassword_value
<#assign prefixName = false>
</#if>
<#if (update_privatePasswordSalt??)>
${prefixName?string('', ', ')}"private_password_salt" = :update_privatePasswordSalt_value
<#assign prefixName = false>
</#if>
<#if (update_professionCode??)>
${prefixName?string('', ', ')}"profession_code" = :update_professionCode_value
<#assign prefixName = false>
</#if>
<#if (update_provinceCode??)>
${prefixName?string('', ', ')}"province_code" = :update_provinceCode_value
<#assign prefixName = false>
</#if>
<#if (update_qq??)>
${prefixName?string('', ', ')}"qq" = :update_qq_value
<#assign prefixName = false>
</#if>
<#if (update_regionCode??)>
${prefixName?string('', ', ')}"region_code" = :update_regionCode_value
<#assign prefixName = false>
</#if>
<#if (update_remark??)>
${prefixName?string('', ', ')}"remark" = :update_remark_value
<#assign prefixName = false>
</#if>
<#if (update_sexCode??)>
${prefixName?string('', ', ')}"sex_code" = :update_sexCode_value
<#assign prefixName = false>
</#if>
<#if (update_siteCode??)>
${prefixName?string('', ', ')}"site_code" = :update_siteCode_value
<#assign prefixName = false>
</#if>
<#if (update_sourceCode??)>
${prefixName?string('', ', ')}"source_code" = :update_sourceCode_value
<#assign prefixName = false>
</#if>
<#if (update_stateCode??)>
${prefixName?string('', ', ')}"state_code" = :update_stateCode_value
<#assign prefixName = false>
</#if>
<#if (update_systemInfoCode??)>
${prefixName?string('', ', ')}"system_info_code" = :update_systemInfoCode_value
<#assign prefixName = false>
</#if>
<#if (update_telephone??)>
${prefixName?string('', ', ')}"telephone" = :update_telephone_value
<#assign prefixName = false>
</#if>
<#if (update_thirdPartyCode??)>
${prefixName?string('', ', ')}"third_party_code" = :update_thirdPartyCode_value
<#assign prefixName = false>
</#if>
<#if (update_userCode??)>
${prefixName?string('', ', ')}"user_code" = :update_userCode_value
<#assign prefixName = false>
</#if>
<#if (update_userId??)>
${prefixName?string('', ', ')}"user_id" = :update_userId_value
<#assign prefixName = false>
</#if>
<#if (update_version??)>
${prefixName?string('', ', ')}"version_" = :update_version_value
<#assign prefixName = false>
</#if>
