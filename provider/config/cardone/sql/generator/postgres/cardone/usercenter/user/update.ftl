UPDATE c1_user
<#assign prefixName = 'SET'>
<#if (update_address??)>
${prefixName} address = :update_address_value
<#assign prefixName = ','>
</#if>
<#if (update_age??)>
${prefixName} age = :update_age_value
<#assign prefixName = ','>
</#if>
<#if (update_aliasName??)>
${prefixName} alias_name = :update_aliasName_value
<#assign prefixName = ','>
</#if>
<#if (update_areaCode??)>
${prefixName} area_code = :update_areaCode_value
<#assign prefixName = ','>
</#if>
<#if (update_beginDate??)>
${prefixName} begin_date = :update_beginDate_value
<#assign prefixName = ','>
</#if>
<#if (update_birthday??)>
${prefixName} birthday = :update_birthday_value
<#assign prefixName = ','>
</#if>
<#if (update_callName??)>
${prefixName} call_name = :update_callName_value
<#assign prefixName = ','>
</#if>
<#if (update_cityCode??)>
${prefixName} city_code = :update_cityCode_value
<#assign prefixName = ','>
</#if>
<#if (update_companyName??)>
${prefixName} company_name = :update_companyName_value
<#assign prefixName = ','>
</#if>
<#if (update_contact??)>
${prefixName} contact = :update_contact_value
<#assign prefixName = ','>
</#if>
<#if (update_countryCode??)>
${prefixName} country_code = :update_countryCode_value
<#assign prefixName = ','>
</#if>
<#if (update_createdByCode??)>
${prefixName} created_by_code = :update_createdByCode_value
<#assign prefixName = ','>
</#if>
<#if (update_createdDate??)>
${prefixName} created_date = :update_createdDate_value
<#assign prefixName = ','>
</#if>
<#if (update_dataStateCode??)>
${prefixName} data_state_code = :update_dataStateCode_value
<#assign prefixName = ','>
</#if>
<#if (update_departmentCode??)>
${prefixName} department_code = :update_departmentCode_value
<#assign prefixName = ','>
</#if>
<#if (update_diplomaCode??)>
${prefixName} diploma_code = :update_diplomaCode_value
<#assign prefixName = ','>
</#if>
<#if (update_email??)>
${prefixName} email = :update_email_value
<#assign prefixName = ','>
</#if>
<#if (update_endDate??)>
${prefixName} end_date = :update_endDate_value
<#assign prefixName = ','>
</#if>
<#if (update_flagCode??)>
${prefixName} flag_code = :update_flagCode_value
<#assign prefixName = ','>
</#if>
<#if (update_flagObjectCode??)>
${prefixName} flag_object_code = :update_flagObjectCode_value
<#assign prefixName = ','>
</#if>
<#if (update_folkCode??)>
${prefixName} folk_code = :update_folkCode_value
<#assign prefixName = ','>
</#if>
<#if (update_idCardCode??)>
${prefixName} id_card_code = :update_idCardCode_value
<#assign prefixName = ','>
</#if>
<#if (update_idCardNo??)>
${prefixName} id_card_no = :update_idCardNo_value
<#assign prefixName = ','>
</#if>
<#if (update_intro??)>
${prefixName} intro = :update_intro_value
<#assign prefixName = ','>
</#if>
<#if (update_jsonData??)>
${prefixName} json_data = :update_jsonData_value
<#assign prefixName = ','>
</#if>
<#if (update_lastModifiedByCode??)>
${prefixName} last_modified_by_code = :update_lastModifiedByCode_value
<#assign prefixName = ','>
</#if>
<#if (update_lastModifiedDate??)>
${prefixName} last_modified_date = :update_lastModifiedDate_value
<#assign prefixName = ','>
</#if>
<#if (update_locus??)>
${prefixName} locus = :update_locus_value
<#assign prefixName = ','>
</#if>
<#if (update_marryStateCode??)>
${prefixName} marry_state_code = :update_marryStateCode_value
<#assign prefixName = ','>
</#if>
<#if (update_mobilePhone??)>
${prefixName} mobile_phone = :update_mobilePhone_value
<#assign prefixName = ','>
</#if>
<#if (update_name??)>
${prefixName} name = :update_name_value
<#assign prefixName = ','>
</#if>
<#if (update_namePinyin??)>
${prefixName} name_pinyin = :update_namePinyin_value
<#assign prefixName = ','>
</#if>
<#if (update_order??)>
${prefixName} order_ = :update_order_value
<#assign prefixName = ','>
</#if>
<#if (update_orgCode??)>
${prefixName} org_code = :update_orgCode_value
<#assign prefixName = ','>
</#if>
<#if (update_password??)>
${prefixName} password_ = :update_password_value
<#assign prefixName = ','>
</#if>
<#if (update_passwordSalt??)>
${prefixName} password_salt = :update_passwordSalt_value
<#assign prefixName = ','>
</#if>
<#if (update_portraitUrl??)>
${prefixName} portrait_url = :update_portraitUrl_value
<#assign prefixName = ','>
</#if>
<#if (update_privatePassword??)>
${prefixName} private_password = :update_privatePassword_value
<#assign prefixName = ','>
</#if>
<#if (update_privatePasswordSalt??)>
${prefixName} private_password_salt = :update_privatePasswordSalt_value
<#assign prefixName = ','>
</#if>
<#if (update_professionCode??)>
${prefixName} profession_code = :update_professionCode_value
<#assign prefixName = ','>
</#if>
<#if (update_provinceCode??)>
${prefixName} province_code = :update_provinceCode_value
<#assign prefixName = ','>
</#if>
<#if (update_qq??)>
${prefixName} qq = :update_qq_value
<#assign prefixName = ','>
</#if>
<#if (update_regionCode??)>
${prefixName} region_code = :update_regionCode_value
<#assign prefixName = ','>
</#if>
<#if (update_remark??)>
${prefixName} remark = :update_remark_value
<#assign prefixName = ','>
</#if>
<#if (update_sexCode??)>
${prefixName} sex_code = :update_sexCode_value
<#assign prefixName = ','>
</#if>
<#if (update_siteCode??)>
${prefixName} site_code = :update_siteCode_value
<#assign prefixName = ','>
</#if>
<#if (update_stateCode??)>
${prefixName} state_code = :update_stateCode_value
<#assign prefixName = ','>
</#if>
<#if (update_systemInfoCode??)>
${prefixName} system_info_code = :update_systemInfoCode_value
<#assign prefixName = ','>
</#if>
<#if (update_telephone??)>
${prefixName} telephone = :update_telephone_value
<#assign prefixName = ','>
</#if>
<#if (update_userCode??)>
${prefixName} user_code = :update_userCode_value
<#assign prefixName = ','>
</#if>
<#if (update_userId??)>
${prefixName} user_id = :update_userId_value
<#assign prefixName = ','>
</#if>
<#if (update_version??)>
${prefixName} version_ = :update_version_value
<#assign prefixName = ','>
</#if>
<#include "where.ftl">