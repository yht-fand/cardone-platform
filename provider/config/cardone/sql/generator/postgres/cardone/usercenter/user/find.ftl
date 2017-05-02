SELECT
<#assign prefixName = ' '>
<#if (select_address??)>
${prefixName} address
<#assign prefixName = ','>
</#if>
<#if (select_age??)>
${prefixName} age
<#assign prefixName = ','>
</#if>
<#if (select_aliasName??)>
${prefixName} alias_name
<#assign prefixName = ','>
</#if>
<#if (select_areaCode??)>
${prefixName} area_code
<#assign prefixName = ','>
</#if>
<#if (select_batchNo??)>
${prefixName} batch_no
<#assign prefixName = ','>
</#if>
<#if (select_beginDate??)>
${prefixName} begin_date
<#assign prefixName = ','>
</#if>
<#if (select_birthday??)>
${prefixName} birthday
<#assign prefixName = ','>
</#if>
<#if (select_callName??)>
${prefixName} call_name
<#assign prefixName = ','>
</#if>
<#if (select_cityCode??)>
${prefixName} city_code
<#assign prefixName = ','>
</#if>
<#if (select_companyName??)>
${prefixName} company_name
<#assign prefixName = ','>
</#if>
<#if (select_contact??)>
${prefixName} contact
<#assign prefixName = ','>
</#if>
<#if (select_countryCode??)>
${prefixName} country_code
<#assign prefixName = ','>
</#if>
<#if (select_createdByCode??)>
${prefixName} created_by_code
<#assign prefixName = ','>
</#if>
<#if (select_createdDate??)>
${prefixName} created_date
<#assign prefixName = ','>
</#if>
<#if (select_dataStateCode??)>
${prefixName} data_state_code
<#assign prefixName = ','>
</#if>
<#if (select_departmentCode??)>
${prefixName} department_code
<#assign prefixName = ','>
</#if>
<#if (select_diplomaCode??)>
${prefixName} diploma_code
<#assign prefixName = ','>
</#if>
<#if (select_email??)>
${prefixName} email
<#assign prefixName = ','>
</#if>
<#if (select_endDate??)>
${prefixName} end_date
<#assign prefixName = ','>
</#if>
<#if (select_firstName??)>
${prefixName} first_name
<#assign prefixName = ','>
</#if>
<#if (select_flagCode??)>
${prefixName} flag_code
<#assign prefixName = ','>
</#if>
<#if (select_flagObjectCode??)>
${prefixName} flag_object_code
<#assign prefixName = ','>
</#if>
<#if (select_folkCode??)>
${prefixName} folk_code
<#assign prefixName = ','>
</#if>
<#if (select_idCardCode??)>
${prefixName} id_card_code
<#assign prefixName = ','>
</#if>
<#if (select_idCardNo??)>
${prefixName} id_card_no
<#assign prefixName = ','>
</#if>
<#if (select_intro??)>
${prefixName} intro
<#assign prefixName = ','>
</#if>
<#if (select_jsonData??)>
${prefixName} json_data
<#assign prefixName = ','>
</#if>
<#if (select_lastModifiedByCode??)>
${prefixName} last_modified_by_code
<#assign prefixName = ','>
</#if>
<#if (select_lastModifiedDate??)>
${prefixName} last_modified_date
<#assign prefixName = ','>
</#if>
<#if (select_lastName??)>
${prefixName} last_name
<#assign prefixName = ','>
</#if>
<#if (select_locus??)>
${prefixName} locus
<#assign prefixName = ','>
</#if>
<#if (select_marryStateCode??)>
${prefixName} marry_state_code
<#assign prefixName = ','>
</#if>
<#if (select_mobilePhone??)>
${prefixName} mobile_phone
<#assign prefixName = ','>
</#if>
<#if (select_name??)>
${prefixName} name
<#assign prefixName = ','>
</#if>
<#if (select_namePinyin??)>
${prefixName} name_pinyin
<#assign prefixName = ','>
</#if>
<#if (select_orderBy??)>
${prefixName} order_by_
<#assign prefixName = ','>
</#if>
<#if (select_orgCode??)>
${prefixName} org_code
<#assign prefixName = ','>
</#if>
<#if (select_password??)>
${prefixName} password_
<#assign prefixName = ','>
</#if>
<#if (select_passwordSalt??)>
${prefixName} password_salt
<#assign prefixName = ','>
</#if>
<#if (select_personalCode??)>
${prefixName} personal_code
<#assign prefixName = ','>
</#if>
<#if (select_portraitUrl??)>
${prefixName} portrait_url
<#assign prefixName = ','>
</#if>
<#if (select_privatePassword??)>
${prefixName} private_password
<#assign prefixName = ','>
</#if>
<#if (select_privatePasswordSalt??)>
${prefixName} private_password_salt
<#assign prefixName = ','>
</#if>
<#if (select_professionCode??)>
${prefixName} profession_code
<#assign prefixName = ','>
</#if>
<#if (select_provinceCode??)>
${prefixName} province_code
<#assign prefixName = ','>
</#if>
<#if (select_qq??)>
${prefixName} qq
<#assign prefixName = ','>
</#if>
<#if (select_regionCode??)>
${prefixName} region_code
<#assign prefixName = ','>
</#if>
<#if (select_remark??)>
${prefixName} remark
<#assign prefixName = ','>
</#if>
<#if (select_sexCode??)>
${prefixName} sex_code
<#assign prefixName = ','>
</#if>
<#if (select_siteCode??)>
${prefixName} site_code
<#assign prefixName = ','>
</#if>
<#if (select_stateCode??)>
${prefixName} state_code
<#assign prefixName = ','>
</#if>
<#if (select_systemInfoCode??)>
${prefixName} system_info_code
<#assign prefixName = ','>
</#if>
<#if (select_telephone??)>
${prefixName} telephone
<#assign prefixName = ','>
</#if>
<#if (select_userCode??)>
${prefixName} user_code
<#assign prefixName = ','>
</#if>
<#if (select_userId??)>
${prefixName} user_id
<#assign prefixName = ','>
</#if>
<#if (select_version??)>
${prefixName} version_
<#assign prefixName = ','>
</#if>
<#if prefixName ==  ' '>
*
</#if>
FROM c1_user
<#include "where.ftl">
<#assign prefixName = 'ORDER BY'>
<#if (order_by_address??)>
${prefixName} address ${order_by_address_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_age??)>
${prefixName} age ${order_by_age_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_aliasName??)>
${prefixName} alias_name ${order_by_aliasName_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_areaCode??)>
${prefixName} area_code ${order_by_areaCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_batchNo??)>
${prefixName} batch_no ${order_by_batchNo_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_beginDate??)>
${prefixName} begin_date ${order_by_beginDate_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_birthday??)>
${prefixName} birthday ${order_by_birthday_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_callName??)>
${prefixName} call_name ${order_by_callName_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_cityCode??)>
${prefixName} city_code ${order_by_cityCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_companyName??)>
${prefixName} company_name ${order_by_companyName_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_contact??)>
${prefixName} contact ${order_by_contact_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_countryCode??)>
${prefixName} country_code ${order_by_countryCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_createdByCode??)>
${prefixName} created_by_code ${order_by_createdByCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_createdDate??)>
${prefixName} created_date ${order_by_createdDate_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_dataStateCode??)>
${prefixName} data_state_code ${order_by_dataStateCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_departmentCode??)>
${prefixName} department_code ${order_by_departmentCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_diplomaCode??)>
${prefixName} diploma_code ${order_by_diplomaCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_email??)>
${prefixName} email ${order_by_email_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_endDate??)>
${prefixName} end_date ${order_by_endDate_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_firstName??)>
${prefixName} first_name ${order_by_firstName_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_flagCode??)>
${prefixName} flag_code ${order_by_flagCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_flagObjectCode??)>
${prefixName} flag_object_code ${order_by_flagObjectCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_folkCode??)>
${prefixName} folk_code ${order_by_folkCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_idCardCode??)>
${prefixName} id_card_code ${order_by_idCardCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_idCardNo??)>
${prefixName} id_card_no ${order_by_idCardNo_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_intro??)>
${prefixName} intro ${order_by_intro_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_jsonData??)>
${prefixName} json_data ${order_by_jsonData_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_lastModifiedByCode??)>
${prefixName} last_modified_by_code ${order_by_lastModifiedByCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_lastModifiedDate??)>
${prefixName} last_modified_date ${order_by_lastModifiedDate_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_lastName??)>
${prefixName} last_name ${order_by_lastName_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_locus??)>
${prefixName} locus ${order_by_locus_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_marryStateCode??)>
${prefixName} marry_state_code ${order_by_marryStateCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_mobilePhone??)>
${prefixName} mobile_phone ${order_by_mobilePhone_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_name??)>
${prefixName} name ${order_by_name_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_namePinyin??)>
${prefixName} name_pinyin ${order_by_namePinyin_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_orderBy??)>
${prefixName} order_by_ ${order_by_orderBy_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_orgCode??)>
${prefixName} org_code ${order_by_orgCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_password??)>
${prefixName} password_ ${order_by_password_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_passwordSalt??)>
${prefixName} password_salt ${order_by_passwordSalt_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_personalCode??)>
${prefixName} personal_code ${order_by_personalCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_portraitUrl??)>
${prefixName} portrait_url ${order_by_portraitUrl_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_privatePassword??)>
${prefixName} private_password ${order_by_privatePassword_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_privatePasswordSalt??)>
${prefixName} private_password_salt ${order_by_privatePasswordSalt_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_professionCode??)>
${prefixName} profession_code ${order_by_professionCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_provinceCode??)>
${prefixName} province_code ${order_by_provinceCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_qq??)>
${prefixName} qq ${order_by_qq_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_regionCode??)>
${prefixName} region_code ${order_by_regionCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_remark??)>
${prefixName} remark ${order_by_remark_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_sexCode??)>
${prefixName} sex_code ${order_by_sexCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_siteCode??)>
${prefixName} site_code ${order_by_siteCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_stateCode??)>
${prefixName} state_code ${order_by_stateCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_systemInfoCode??)>
${prefixName} system_info_code ${order_by_systemInfoCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_telephone??)>
${prefixName} telephone ${order_by_telephone_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_userCode??)>
${prefixName} user_code ${order_by_userCode_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_userId??)>
${prefixName} user_id ${order_by_userId_value!}
<#assign prefixName = ','>
</#if>
<#if (order_by_version??)>
${prefixName} version_ ${order_by_version_value!}
<#assign prefixName = ','>
</#if>
