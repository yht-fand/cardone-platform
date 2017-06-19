SELECT
<#assign prefixName = true>
<#if (select_address??)>
${prefixName?string('  ', ', ')}"address"
<#assign prefixName = false>
</#if>
<#if (select_age??)>
${prefixName?string('  ', ', ')}"age"
<#assign prefixName = false>
</#if>
<#if (select_aliasName??)>
${prefixName?string('  ', ', ')}"alias_name"
<#assign prefixName = false>
</#if>
<#if (select_areaCode??)>
${prefixName?string('  ', ', ')}"area_code"
<#assign prefixName = false>
</#if>
<#if (select_batchNo??)>
${prefixName?string('  ', ', ')}"batch_no"
<#assign prefixName = false>
</#if>
<#if (select_beginDate??)>
${prefixName?string('  ', ', ')}"begin_date"
<#assign prefixName = false>
</#if>
<#if (select_birthday??)>
${prefixName?string('  ', ', ')}"birthday"
<#assign prefixName = false>
</#if>
<#if (select_callName??)>
${prefixName?string('  ', ', ')}"call_name"
<#assign prefixName = false>
</#if>
<#if (select_cityCode??)>
${prefixName?string('  ', ', ')}"city_code"
<#assign prefixName = false>
</#if>
<#if (select_companyName??)>
${prefixName?string('  ', ', ')}"company_name"
<#assign prefixName = false>
</#if>
<#if (select_contact??)>
${prefixName?string('  ', ', ')}"contact"
<#assign prefixName = false>
</#if>
<#if (select_countryCode??)>
${prefixName?string('  ', ', ')}"country_code"
<#assign prefixName = false>
</#if>
<#if (select_createdByCode??)>
${prefixName?string('  ', ', ')}"created_by_code"
<#assign prefixName = false>
</#if>
<#if (select_createdDate??)>
${prefixName?string('  ', ', ')}"created_date"
<#assign prefixName = false>
</#if>
<#if (select_dataStateCode??)>
${prefixName?string('  ', ', ')}"data_state_code"
<#assign prefixName = false>
</#if>
<#if (select_departmentCode??)>
${prefixName?string('  ', ', ')}"department_code"
<#assign prefixName = false>
</#if>
<#if (select_diplomaCode??)>
${prefixName?string('  ', ', ')}"diploma_code"
<#assign prefixName = false>
</#if>
<#if (select_email??)>
${prefixName?string('  ', ', ')}"email"
<#assign prefixName = false>
</#if>
<#if (select_endDate??)>
${prefixName?string('  ', ', ')}"end_date"
<#assign prefixName = false>
</#if>
<#if (select_firstName??)>
${prefixName?string('  ', ', ')}"first_name"
<#assign prefixName = false>
</#if>
<#if (select_flagCode??)>
${prefixName?string('  ', ', ')}"flag_code"
<#assign prefixName = false>
</#if>
<#if (select_flagObjectCode??)>
${prefixName?string('  ', ', ')}"flag_object_code"
<#assign prefixName = false>
</#if>
<#if (select_folkCode??)>
${prefixName?string('  ', ', ')}"folk_code"
<#assign prefixName = false>
</#if>
<#if (select_idCardCode??)>
${prefixName?string('  ', ', ')}"id_card_code"
<#assign prefixName = false>
</#if>
<#if (select_idCardNo??)>
${prefixName?string('  ', ', ')}"id_card_no"
<#assign prefixName = false>
</#if>
<#if (select_intro??)>
${prefixName?string('  ', ', ')}"intro"
<#assign prefixName = false>
</#if>
<#if (select_jsonData??)>
${prefixName?string('  ', ', ')}"json_data"
<#assign prefixName = false>
</#if>
<#if (select_lastModifiedByCode??)>
${prefixName?string('  ', ', ')}"last_modified_by_code"
<#assign prefixName = false>
</#if>
<#if (select_lastModifiedDate??)>
${prefixName?string('  ', ', ')}"last_modified_date"
<#assign prefixName = false>
</#if>
<#if (select_lastName??)>
${prefixName?string('  ', ', ')}"last_name"
<#assign prefixName = false>
</#if>
<#if (select_locus??)>
${prefixName?string('  ', ', ')}"locus"
<#assign prefixName = false>
</#if>
<#if (select_marryStateCode??)>
${prefixName?string('  ', ', ')}"marry_state_code"
<#assign prefixName = false>
</#if>
<#if (select_mobilePhone??)>
${prefixName?string('  ', ', ')}"mobile_phone"
<#assign prefixName = false>
</#if>
<#if (select_name??)>
${prefixName?string('  ', ', ')}"name"
<#assign prefixName = false>
</#if>
<#if (select_namePinyin??)>
${prefixName?string('  ', ', ')}"name_pinyin"
<#assign prefixName = false>
</#if>
<#if (select_orderBy??)>
${prefixName?string('  ', ', ')}"order_by_"
<#assign prefixName = false>
</#if>
<#if (select_orgCode??)>
${prefixName?string('  ', ', ')}"org_code"
<#assign prefixName = false>
</#if>
<#if (select_password??)>
${prefixName?string('  ', ', ')}"password_"
<#assign prefixName = false>
</#if>
<#if (select_passwordSalt??)>
${prefixName?string('  ', ', ')}"password_salt"
<#assign prefixName = false>
</#if>
<#if (select_personalCode??)>
${prefixName?string('  ', ', ')}"personal_code"
<#assign prefixName = false>
</#if>
<#if (select_portraitUrl??)>
${prefixName?string('  ', ', ')}"portrait_url"
<#assign prefixName = false>
</#if>
<#if (select_privatePassword??)>
${prefixName?string('  ', ', ')}"private_password"
<#assign prefixName = false>
</#if>
<#if (select_privatePasswordSalt??)>
${prefixName?string('  ', ', ')}"private_password_salt"
<#assign prefixName = false>
</#if>
<#if (select_professionCode??)>
${prefixName?string('  ', ', ')}"profession_code"
<#assign prefixName = false>
</#if>
<#if (select_provinceCode??)>
${prefixName?string('  ', ', ')}"province_code"
<#assign prefixName = false>
</#if>
<#if (select_qq??)>
${prefixName?string('  ', ', ')}"qq"
<#assign prefixName = false>
</#if>
<#if (select_regionCode??)>
${prefixName?string('  ', ', ')}"region_code"
<#assign prefixName = false>
</#if>
<#if (select_remark??)>
${prefixName?string('  ', ', ')}"remark"
<#assign prefixName = false>
</#if>
<#if (select_sexCode??)>
${prefixName?string('  ', ', ')}"sex_code"
<#assign prefixName = false>
</#if>
<#if (select_siteCode??)>
${prefixName?string('  ', ', ')}"site_code"
<#assign prefixName = false>
</#if>
<#if (select_stateCode??)>
${prefixName?string('  ', ', ')}"state_code"
<#assign prefixName = false>
</#if>
<#if (select_systemInfoCode??)>
${prefixName?string('  ', ', ')}"system_info_code"
<#assign prefixName = false>
</#if>
<#if (select_telephone??)>
${prefixName?string('  ', ', ')}"telephone"
<#assign prefixName = false>
</#if>
<#if (select_userCode??)>
${prefixName?string('  ', ', ')}"user_code"
<#assign prefixName = false>
</#if>
<#if (select_userId??)>
${prefixName?string('  ', ', ')}"user_id"
<#assign prefixName = false>
</#if>
<#if (select_version??)>
${prefixName?string('  ', ', ')}"version_"
<#assign prefixName = false>
</#if>
<#if prefixName>
*
</#if>
FROM c1_user
<#include "where.ftl">
<#assign prefixName = true>
<#if (order_by_address??)>
${prefixName?string('ORDER BY ', ', ')}"address" ${order_by_address_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_age??)>
${prefixName?string('ORDER BY ', ', ')}"age" ${order_by_age_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_aliasName??)>
${prefixName?string('ORDER BY ', ', ')}"alias_name" ${order_by_aliasName_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_areaCode??)>
${prefixName?string('ORDER BY ', ', ')}"area_code" ${order_by_areaCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_batchNo??)>
${prefixName?string('ORDER BY ', ', ')}"batch_no" ${order_by_batchNo_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_beginDate??)>
${prefixName?string('ORDER BY ', ', ')}"begin_date" ${order_by_beginDate_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_birthday??)>
${prefixName?string('ORDER BY ', ', ')}"birthday" ${order_by_birthday_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_callName??)>
${prefixName?string('ORDER BY ', ', ')}"call_name" ${order_by_callName_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_cityCode??)>
${prefixName?string('ORDER BY ', ', ')}"city_code" ${order_by_cityCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_companyName??)>
${prefixName?string('ORDER BY ', ', ')}"company_name" ${order_by_companyName_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_contact??)>
${prefixName?string('ORDER BY ', ', ')}"contact" ${order_by_contact_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_countryCode??)>
${prefixName?string('ORDER BY ', ', ')}"country_code" ${order_by_countryCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_createdByCode??)>
${prefixName?string('ORDER BY ', ', ')}"created_by_code" ${order_by_createdByCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_createdDate??)>
${prefixName?string('ORDER BY ', ', ')}"created_date" ${order_by_createdDate_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_dataStateCode??)>
${prefixName?string('ORDER BY ', ', ')}"data_state_code" ${order_by_dataStateCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_departmentCode??)>
${prefixName?string('ORDER BY ', ', ')}"department_code" ${order_by_departmentCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_diplomaCode??)>
${prefixName?string('ORDER BY ', ', ')}"diploma_code" ${order_by_diplomaCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_email??)>
${prefixName?string('ORDER BY ', ', ')}"email" ${order_by_email_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_endDate??)>
${prefixName?string('ORDER BY ', ', ')}"end_date" ${order_by_endDate_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_firstName??)>
${prefixName?string('ORDER BY ', ', ')}"first_name" ${order_by_firstName_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_flagCode??)>
${prefixName?string('ORDER BY ', ', ')}"flag_code" ${order_by_flagCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_flagObjectCode??)>
${prefixName?string('ORDER BY ', ', ')}"flag_object_code" ${order_by_flagObjectCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_folkCode??)>
${prefixName?string('ORDER BY ', ', ')}"folk_code" ${order_by_folkCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_idCardCode??)>
${prefixName?string('ORDER BY ', ', ')}"id_card_code" ${order_by_idCardCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_idCardNo??)>
${prefixName?string('ORDER BY ', ', ')}"id_card_no" ${order_by_idCardNo_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_intro??)>
${prefixName?string('ORDER BY ', ', ')}"intro" ${order_by_intro_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_jsonData??)>
${prefixName?string('ORDER BY ', ', ')}"json_data" ${order_by_jsonData_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_lastModifiedByCode??)>
${prefixName?string('ORDER BY ', ', ')}"last_modified_by_code" ${order_by_lastModifiedByCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_lastModifiedDate??)>
${prefixName?string('ORDER BY ', ', ')}"last_modified_date" ${order_by_lastModifiedDate_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_lastName??)>
${prefixName?string('ORDER BY ', ', ')}"last_name" ${order_by_lastName_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_locus??)>
${prefixName?string('ORDER BY ', ', ')}"locus" ${order_by_locus_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_marryStateCode??)>
${prefixName?string('ORDER BY ', ', ')}"marry_state_code" ${order_by_marryStateCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_mobilePhone??)>
${prefixName?string('ORDER BY ', ', ')}"mobile_phone" ${order_by_mobilePhone_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_name??)>
${prefixName?string('ORDER BY ', ', ')}"name" ${order_by_name_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_namePinyin??)>
${prefixName?string('ORDER BY ', ', ')}"name_pinyin" ${order_by_namePinyin_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_orderBy??)>
${prefixName?string('ORDER BY ', ', ')}"order_by_" ${order_by_orderBy_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_orgCode??)>
${prefixName?string('ORDER BY ', ', ')}"org_code" ${order_by_orgCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_password??)>
${prefixName?string('ORDER BY ', ', ')}"password_" ${order_by_password_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_passwordSalt??)>
${prefixName?string('ORDER BY ', ', ')}"password_salt" ${order_by_passwordSalt_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_personalCode??)>
${prefixName?string('ORDER BY ', ', ')}"personal_code" ${order_by_personalCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_portraitUrl??)>
${prefixName?string('ORDER BY ', ', ')}"portrait_url" ${order_by_portraitUrl_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_privatePassword??)>
${prefixName?string('ORDER BY ', ', ')}"private_password" ${order_by_privatePassword_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_privatePasswordSalt??)>
${prefixName?string('ORDER BY ', ', ')}"private_password_salt" ${order_by_privatePasswordSalt_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_professionCode??)>
${prefixName?string('ORDER BY ', ', ')}"profession_code" ${order_by_professionCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_provinceCode??)>
${prefixName?string('ORDER BY ', ', ')}"province_code" ${order_by_provinceCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_qq??)>
${prefixName?string('ORDER BY ', ', ')}"qq" ${order_by_qq_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_regionCode??)>
${prefixName?string('ORDER BY ', ', ')}"region_code" ${order_by_regionCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_remark??)>
${prefixName?string('ORDER BY ', ', ')}"remark" ${order_by_remark_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_sexCode??)>
${prefixName?string('ORDER BY ', ', ')}"sex_code" ${order_by_sexCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_siteCode??)>
${prefixName?string('ORDER BY ', ', ')}"site_code" ${order_by_siteCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_stateCode??)>
${prefixName?string('ORDER BY ', ', ')}"state_code" ${order_by_stateCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_systemInfoCode??)>
${prefixName?string('ORDER BY ', ', ')}"system_info_code" ${order_by_systemInfoCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_telephone??)>
${prefixName?string('ORDER BY ', ', ')}"telephone" ${order_by_telephone_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_userCode??)>
${prefixName?string('ORDER BY ', ', ')}"user_code" ${order_by_userCode_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_userId??)>
${prefixName?string('ORDER BY ', ', ')}"user_id" ${order_by_userId_value!}
<#assign prefixName = false>
</#if>
<#if (order_by_version??)>
${prefixName?string('ORDER BY ', ', ')}"version_" ${order_by_version_value!}
<#assign prefixName = false>
</#if>
