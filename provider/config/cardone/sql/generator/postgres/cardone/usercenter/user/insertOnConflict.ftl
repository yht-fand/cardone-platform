<#include "insert.ftl">
on conflict (
<#assign prefixName = true>
<#if (index_address??)>
${prefixName?string('', ', ')}"address"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_age??)>
${prefixName?string('', ', ')}"age"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_aliasName??)>
${prefixName?string('', ', ')}"alias_name"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_areaCode??)>
${prefixName?string('', ', ')}"area_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_batchNo??)>
${prefixName?string('', ', ')}"batch_no"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_beginDate??)>
${prefixName?string('', ', ')}"begin_date"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_birthday??)>
${prefixName?string('', ', ')}"birthday"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_callName??)>
${prefixName?string('', ', ')}"call_name"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_cityCode??)>
${prefixName?string('', ', ')}"city_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_companyName??)>
${prefixName?string('', ', ')}"company_name"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_contact??)>
${prefixName?string('', ', ')}"contact"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_countryCode??)>
${prefixName?string('', ', ')}"country_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_createdByCode??)>
${prefixName?string('', ', ')}"created_by_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_createdById??)>
${prefixName?string('', ', ')}"created_by_id"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_createdDate??)>
${prefixName?string('', ', ')}"created_date"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_dataStateCode??)>
${prefixName?string('', ', ')}"data_state_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_departmentCode??)>
${prefixName?string('', ', ')}"department_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_departmentId??)>
${prefixName?string('', ', ')}"department_id"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_diplomaCode??)>
${prefixName?string('', ', ')}"diploma_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_email??)>
${prefixName?string('', ', ')}"email"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_endDate??)>
${prefixName?string('', ', ')}"end_date"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_firstName??)>
${prefixName?string('', ', ')}"first_name"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_flagCode??)>
${prefixName?string('', ', ')}"flag_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_flagObjectCode??)>
${prefixName?string('', ', ')}"flag_object_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_folkCode??)>
${prefixName?string('', ', ')}"folk_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_idCardCode??)>
${prefixName?string('', ', ')}"id_card_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_idCardNo??)>
${prefixName?string('', ', ')}"id_card_no"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_intro??)>
${prefixName?string('', ', ')}"intro"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_jsonData??)>
${prefixName?string('', ', ')}"json_data"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_lastModifiedByCode??)>
${prefixName?string('', ', ')}"last_modified_by_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_lastModifiedById??)>
${prefixName?string('', ', ')}"last_modified_by_id"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_lastModifiedDate??)>
${prefixName?string('', ', ')}"last_modified_date"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_lastName??)>
${prefixName?string('', ', ')}"last_name"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_locus??)>
${prefixName?string('', ', ')}"locus"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_marryStateCode??)>
${prefixName?string('', ', ')}"marry_state_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_mobilePhone??)>
${prefixName?string('', ', ')}"mobile_phone"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_name??)>
${prefixName?string('', ', ')}"name"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_namePinyin??)>
${prefixName?string('', ', ')}"name_pinyin"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_orderBy??)>
${prefixName?string('', ', ')}"order_by_"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_orgCode??)>
${prefixName?string('', ', ')}"org_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_password??)>
${prefixName?string('', ', ')}"password_"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_passwordSalt??)>
${prefixName?string('', ', ')}"password_salt"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_personalCode??)>
${prefixName?string('', ', ')}"personal_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_personalId??)>
${prefixName?string('', ', ')}"personal_id"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_portraitUrl??)>
${prefixName?string('', ', ')}"portrait_url"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_privatePassword??)>
${prefixName?string('', ', ')}"private_password"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_privatePasswordSalt??)>
${prefixName?string('', ', ')}"private_password_salt"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_professionCode??)>
${prefixName?string('', ', ')}"profession_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_provinceCode??)>
${prefixName?string('', ', ')}"province_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_qq??)>
${prefixName?string('', ', ')}"qq"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_regionCode??)>
${prefixName?string('', ', ')}"region_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_remark??)>
${prefixName?string('', ', ')}"remark"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_sexCode??)>
${prefixName?string('', ', ')}"sex_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_siteCode??)>
${prefixName?string('', ', ')}"site_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_sourceCode??)>
${prefixName?string('', ', ')}"source_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_stateCode??)>
${prefixName?string('', ', ')}"state_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_systemInfoCode??)>
${prefixName?string('', ', ')}"system_info_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_telephone??)>
${prefixName?string('', ', ')}"telephone"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_thirdPartyCode??)>
${prefixName?string('', ', ')}"third_party_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_userCode??)>
${prefixName?string('', ', ')}"user_code"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_userId??)>
${prefixName?string('', ', ')}"user_id"
</#if>
<#assign prefixName = false>
</#if>
<#if (index_version??)>
${prefixName?string('', ', ')}"version_"
</#if>
<#assign prefixName = false>
</#if>
) do nothing