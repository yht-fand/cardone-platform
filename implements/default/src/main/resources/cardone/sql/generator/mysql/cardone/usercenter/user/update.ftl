UPDATE t_user
<#assign prefixName = 'SET'>
<#if (update_address??)>
<#if (update_address_value??)>
${prefixName} `ADDRESS` = :update_address_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_age??)>
<#if (update_age_value??)>
${prefixName} `AGE` = :update_age_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_areaCode??)>
<#if (update_areaCode_value??)>
${prefixName} `AREA_CODE` = :update_areaCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_beginDate??)>
<#if (update_beginDate_value??)>
${prefixName} `BEGIN_DATE` = :update_beginDate_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_birthday??)>
<#if (update_birthday_value??)>
${prefixName} `BIRTHDAY` = :update_birthday_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_callName??)>
<#if (update_callName_value??)>
${prefixName} `CALL_NAME` = :update_callName_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_cityCode??)>
<#if (update_cityCode_value??)>
${prefixName} `CITY_CODE` = :update_cityCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_companyName??)>
<#if (update_companyName_value??)>
${prefixName} `COMPANY_NAME` = :update_companyName_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_countryCode??)>
<#if (update_countryCode_value??)>
${prefixName} `COUNTRY_CODE` = :update_countryCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_createdByCode??)>
<#if (update_createdByCode_value??)>
${prefixName} `CREATED_BY_CODE` = :update_createdByCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_createdDate??)>
<#if (update_createdDate_value??)>
${prefixName} `CREATED_DATE` = :update_createdDate_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_dataStateCode??)>
<#if (update_dataStateCode_value??)>
${prefixName} `DATA_STATE_CODE` = :update_dataStateCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_departmentCode??)>
<#if (update_departmentCode_value??)>
${prefixName} `DEPARTMENT_CODE` = :update_departmentCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_diplomaCode??)>
<#if (update_diplomaCode_value??)>
${prefixName} `DIPLOMA_CODE` = :update_diplomaCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_email??)>
<#if (update_email_value??)>
${prefixName} `EMAIL` = :update_email_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_endDate??)>
<#if (update_endDate_value??)>
${prefixName} `END_DATE` = :update_endDate_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_flagCode??)>
<#if (update_flagCode_value??)>
${prefixName} `FLAG_CODE` = :update_flagCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_folkCode??)>
<#if (update_folkCode_value??)>
${prefixName} `FOLK_CODE` = :update_folkCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_idCardNo??)>
<#if (update_idCardNo_value??)>
${prefixName} `ID_CARD_NO` = :update_idCardNo_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_intro??)>
<#if (update_intro_value??)>
${prefixName} `INTRO` = :update_intro_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_lastModifiedByCode??)>
<#if (update_lastModifiedByCode_value??)>
${prefixName} `LAST_MODIFIED_BY_CODE` = :update_lastModifiedByCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_lastModifiedDate??)>
<#if (update_lastModifiedDate_value??)>
${prefixName} `LAST_MODIFIED_DATE` = :update_lastModifiedDate_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_locus??)>
<#if (update_locus_value??)>
${prefixName} `LOCUS` = :update_locus_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_marryStateCode??)>
<#if (update_marryStateCode_value??)>
${prefixName} `MARRY_STATE_CODE` = :update_marryStateCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_mobilePhone??)>
<#if (update_mobilePhone_value??)>
${prefixName} `MOBILE_PHONE` = :update_mobilePhone_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_name??)>
<#if (update_name_value??)>
${prefixName} `NAME` = :update_name_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_orgCode??)>
<#if (update_orgCode_value??)>
${prefixName} `ORG_CODE` = :update_orgCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_password??)>
<#if (update_password_value??)>
${prefixName} `PASSWORD_` = :update_password_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_passwordSalt??)>
<#if (update_passwordSalt_value??)>
${prefixName} `PASSWORD_SALT` = :update_passwordSalt_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_permissionCodes??)>
<#if (update_permissionCodes_value??)>
${prefixName} `PERMISSION_CODES` = :update_permissionCodes_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_portraitUrl??)>
<#if (update_portraitUrl_value??)>
${prefixName} `PORTRAIT_URL` = :update_portraitUrl_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_privatePassword??)>
<#if (update_privatePassword_value??)>
${prefixName} `PRIVATE_PASSWORD` = :update_privatePassword_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_privatePasswordSalt??)>
<#if (update_privatePasswordSalt_value??)>
${prefixName} `PRIVATE_PASSWORD_SALT` = :update_privatePasswordSalt_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_professionCode??)>
<#if (update_professionCode_value??)>
${prefixName} `PROFESSION_CODE` = :update_professionCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_provinceCode??)>
<#if (update_provinceCode_value??)>
${prefixName} `PROVINCE_CODE` = :update_provinceCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_qq??)>
<#if (update_qq_value??)>
${prefixName} `QQ` = :update_qq_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_roleCodes??)>
<#if (update_roleCodes_value??)>
${prefixName} `ROLE_CODES` = :update_roleCodes_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_sexCode??)>
<#if (update_sexCode_value??)>
${prefixName} `SEX_CODE` = :update_sexCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_stateCode??)>
<#if (update_stateCode_value??)>
${prefixName} `STATE_CODE` = :update_stateCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_telephone??)>
<#if (update_telephone_value??)>
${prefixName} `TELEPHONE` = :update_telephone_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_userCode??)>
<#if (update_userCode_value??)>
${prefixName} `USER_CODE` = :update_userCode_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_userId??)>
<#if (update_userId_value??)>
${prefixName} `USER_ID` = :update_userId_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_version??)>
<#if (update_version_value??)>
${prefixName} `VERSION_` = :update_version_value
</#if>
<#assign prefixName = ','>
</#if>
<#if (update_wfId??)>
<#if (update_wfId_value??)>
${prefixName} `WF_ID` = :update_wfId_value
</#if>
<#assign prefixName = ','>
</#if>
<#include "where.ftl">