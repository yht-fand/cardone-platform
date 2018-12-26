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
<#if (index_compatibleDepartmentCode1??)>
${prefixName?string('', ', ')}"compatible_department_code_1"
<#assign prefixName = false>
</#if>
<#if (index_compatibleDepartmentCode2??)>
${prefixName?string('', ', ')}"compatible_department_code_2"
<#assign prefixName = false>
</#if>
<#if (index_compatiblePassword1??)>
${prefixName?string('', ', ')}"compatible_password_1"
<#assign prefixName = false>
</#if>
<#if (index_compatiblePassword2??)>
${prefixName?string('', ', ')}"compatible_password_2"
<#assign prefixName = false>
</#if>
<#if (index_compatibleUserCode1??)>
${prefixName?string('', ', ')}"compatible_user_code_1"
<#assign prefixName = false>
</#if>
<#if (index_compatibleUserCode2??)>
${prefixName?string('', ', ')}"compatible_user_code_2"
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
<#if (index_lastSyncTime??)>
${prefixName?string('', ', ')}"last_sync_time"
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
<#if (index_syncReturnCode??)>
${prefixName?string('', ', ')}"sync_return_code"
<#assign prefixName = false>
</#if>
<#if (index_syncReturnMessage??)>
${prefixName?string('', ', ')}"sync_return_message"
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
) do nothing