<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT count(1)
FROM c1_user u
WHERE 1=1
<#if StringUtils.isNotBlank(userId)>
 and u.`USER_ID` = :userId
</#if>
and 
(
u.`USER_CODE` = :userCode
<#if StringUtils.isNotBlank(telephone)>
 OR  u.`TELEPHONE` = :telephone
</#if>
<#if StringUtils.isNotBlank(idCardNo)>
OR u.`ID_CARD_NO` = :idCardNo
</#if>

)