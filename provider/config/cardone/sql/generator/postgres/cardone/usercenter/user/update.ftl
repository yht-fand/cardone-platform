UPDATE "c1_user"
<#assign prefixName = true>
<#if (update_address??)>
${prefixName?string('SET ', ', ')}"address" = :update_address_value
<#assign prefixName = false>
</#if>
<#if (update_age??)>
${prefixName?string('SET ', ', ')}"age" = :update_age_value
<#assign prefixName = false>
</#if>
<#if (update_aliasName??)>
${prefixName?string('SET ', ', ')}"alias_name" = :update_aliasName_value
<#assign prefixName = false>
</#if>
<#if (update_areaCode??)>
${prefixName?string('SET ', ', ')}"area_code" = :update_areaCode_value
<#assign prefixName = false>
</#if>
<#if (update_batchNo??)>
${prefixName?string('SET ', ', ')}"batch_no" = :update_batchNo_value
<#assign prefixName = false>
</#if>
<#if (update_beginDate??)>
${prefixName?string('SET ', ', ')}"begin_date" = :update_beginDate_value
<#assign prefixName = false>
</#if>
<#if (update_birthday??)>
${prefixName?string('SET ', ', ')}"birthday" = :update_birthday_value
<#assign prefixName = false>
</#if>
<#if (update_callName??)>
${prefixName?string('SET ', ', ')}"call_name" = :update_callName_value
<#assign prefixName = false>
</#if>
<#if (update_cityCode??)>
${prefixName?string('SET ', ', ')}"city_code" = :update_cityCode_value
<#assign prefixName = false>
</#if>
<#if (update_companyName??)>
${prefixName?string('SET ', ', ')}"company_name" = :update_companyName_value
<#assign prefixName = false>
</#if>
<#if (update_contact??)>
${prefixName?string('SET ', ', ')}"contact" = :update_contact_value
<#assign prefixName = false>
</#if>
<#if (update_countryCode??)>
${prefixName?string('SET ', ', ')}"country_code" = :update_countryCode_value
<#assign prefixName = false>
</#if>
<#if (update_createdByCode??)>
${prefixName?string('SET ', ', ')}"created_by_code" = :update_createdByCode_value
<#assign prefixName = false>
</#if>
<#if (update_createdById??)>
${prefixName?string('SET ', ', ')}"created_by_id" = :update_createdById_value
<#assign prefixName = false>
</#if>
<#if (update_createdDate??)>
${prefixName?string('SET ', ', ')}"created_date" = :update_createdDate_value
<#assign prefixName = false>
</#if>
<#if (update_dataStateCode??)>
${prefixName?string('SET ', ', ')}"data_state_code" = :update_dataStateCode_value
<#assign prefixName = false>
</#if>
<#if (update_departmentCode??)>
${prefixName?string('SET ', ', ')}"department_code" = :update_departmentCode_value
<#assign prefixName = false>
</#if>
<#if (update_departmentId??)>
${prefixName?string('SET ', ', ')}"department_id" = :update_departmentId_value
<#assign prefixName = false>
</#if>
<#if (update_diplomaCode??)>
${prefixName?string('SET ', ', ')}"diploma_code" = :update_diplomaCode_value
<#assign prefixName = false>
</#if>
<#if (update_email??)>
${prefixName?string('SET ', ', ')}"email" = :update_email_value
<#assign prefixName = false>
</#if>
<#if (update_endDate??)>
${prefixName?string('SET ', ', ')}"end_date" = :update_endDate_value
<#assign prefixName = false>
</#if>
<#if (update_firstName??)>
${prefixName?string('SET ', ', ')}"first_name" = :update_firstName_value
<#assign prefixName = false>
</#if>
<#if (update_flagCode??)>
${prefixName?string('SET ', ', ')}"flag_code" = :update_flagCode_value
<#assign prefixName = false>
</#if>
<#if (update_flagObjectCode??)>
${prefixName?string('SET ', ', ')}"flag_object_code" = :update_flagObjectCode_value
<#assign prefixName = false>
</#if>
<#if (update_folkCode??)>
${prefixName?string('SET ', ', ')}"folk_code" = :update_folkCode_value
<#assign prefixName = false>
</#if>
<#if (update_idCardCode??)>
${prefixName?string('SET ', ', ')}"id_card_code" = :update_idCardCode_value
<#assign prefixName = false>
</#if>
<#if (update_idCardNo??)>
${prefixName?string('SET ', ', ')}"id_card_no" = :update_idCardNo_value
<#assign prefixName = false>
</#if>
<#if (update_intro??)>
${prefixName?string('SET ', ', ')}"intro" = :update_intro_value
<#assign prefixName = false>
</#if>
<#if (update_jsonData??)>
${prefixName?string('SET ', ', ')}"json_data" = :update_jsonData_value
<#assign prefixName = false>
</#if>
<#if (update_lastModifiedByCode??)>
${prefixName?string('SET ', ', ')}"last_modified_by_code" = :update_lastModifiedByCode_value
<#assign prefixName = false>
</#if>
<#if (update_lastModifiedById??)>
${prefixName?string('SET ', ', ')}"last_modified_by_id" = :update_lastModifiedById_value
<#assign prefixName = false>
</#if>
<#if (update_lastModifiedDate??)>
${prefixName?string('SET ', ', ')}"last_modified_date" = :update_lastModifiedDate_value
<#assign prefixName = false>
</#if>
<#if (update_lastName??)>
${prefixName?string('SET ', ', ')}"last_name" = :update_lastName_value
<#assign prefixName = false>
</#if>
<#if (update_locus??)>
${prefixName?string('SET ', ', ')}"locus" = :update_locus_value
<#assign prefixName = false>
</#if>
<#if (update_marryStateCode??)>
${prefixName?string('SET ', ', ')}"marry_state_code" = :update_marryStateCode_value
<#assign prefixName = false>
</#if>
<#if (update_mobilePhone??)>
${prefixName?string('SET ', ', ')}"mobile_phone" = :update_mobilePhone_value
<#assign prefixName = false>
</#if>
<#if (update_name??)>
${prefixName?string('SET ', ', ')}"name" = :update_name_value
<#assign prefixName = false>
</#if>
<#if (update_namePinyin??)>
${prefixName?string('SET ', ', ')}"name_pinyin" = :update_namePinyin_value
<#assign prefixName = false>
</#if>
<#if (update_orderBy??)>
${prefixName?string('SET ', ', ')}"order_by_" = :update_orderBy_value
<#assign prefixName = false>
</#if>
<#if (update_orgCode??)>
${prefixName?string('SET ', ', ')}"org_code" = :update_orgCode_value
<#assign prefixName = false>
</#if>
<#if (update_password??)>
${prefixName?string('SET ', ', ')}"password_" = :update_password_value
<#assign prefixName = false>
</#if>
<#if (update_passwordSalt??)>
${prefixName?string('SET ', ', ')}"password_salt" = :update_passwordSalt_value
<#assign prefixName = false>
</#if>
<#if (update_personalCode??)>
${prefixName?string('SET ', ', ')}"personal_code" = :update_personalCode_value
<#assign prefixName = false>
</#if>
<#if (update_personalId??)>
${prefixName?string('SET ', ', ')}"personal_id" = :update_personalId_value
<#assign prefixName = false>
</#if>
<#if (update_portraitUrl??)>
${prefixName?string('SET ', ', ')}"portrait_url" = :update_portraitUrl_value
<#assign prefixName = false>
</#if>
<#if (update_privatePassword??)>
${prefixName?string('SET ', ', ')}"private_password" = :update_privatePassword_value
<#assign prefixName = false>
</#if>
<#if (update_privatePasswordSalt??)>
${prefixName?string('SET ', ', ')}"private_password_salt" = :update_privatePasswordSalt_value
<#assign prefixName = false>
</#if>
<#if (update_professionCode??)>
${prefixName?string('SET ', ', ')}"profession_code" = :update_professionCode_value
<#assign prefixName = false>
</#if>
<#if (update_provinceCode??)>
${prefixName?string('SET ', ', ')}"province_code" = :update_provinceCode_value
<#assign prefixName = false>
</#if>
<#if (update_qq??)>
${prefixName?string('SET ', ', ')}"qq" = :update_qq_value
<#assign prefixName = false>
</#if>
<#if (update_regionCode??)>
${prefixName?string('SET ', ', ')}"region_code" = :update_regionCode_value
<#assign prefixName = false>
</#if>
<#if (update_remark??)>
${prefixName?string('SET ', ', ')}"remark" = :update_remark_value
<#assign prefixName = false>
</#if>
<#if (update_sexCode??)>
${prefixName?string('SET ', ', ')}"sex_code" = :update_sexCode_value
<#assign prefixName = false>
</#if>
<#if (update_siteCode??)>
${prefixName?string('SET ', ', ')}"site_code" = :update_siteCode_value
<#assign prefixName = false>
</#if>
<#if (update_stateCode??)>
${prefixName?string('SET ', ', ')}"state_code" = :update_stateCode_value
<#assign prefixName = false>
</#if>
<#if (update_systemInfoCode??)>
${prefixName?string('SET ', ', ')}"system_info_code" = :update_systemInfoCode_value
<#assign prefixName = false>
</#if>
<#if (update_telephone??)>
${prefixName?string('SET ', ', ')}"telephone" = :update_telephone_value
<#assign prefixName = false>
</#if>
<#if (update_userCode??)>
${prefixName?string('SET ', ', ')}"user_code" = :update_userCode_value
<#assign prefixName = false>
</#if>
<#if (update_userId??)>
${prefixName?string('SET ', ', ')}"user_id" = :update_userId_value
<#assign prefixName = false>
</#if>
<#if (update_version??)>
${prefixName?string('SET ', ', ')}"version_" = :update_version_value
<#assign prefixName = false>
</#if>
<#include "where.ftl">