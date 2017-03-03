SELECT count(1)
FROM c1_user u
WHERE 1=1
<#if cardone.StringUtils.isNotBlank(userId)>
 and u.`USER_ID` = :userId
</#if>
and 
(
u.`USER_CODE` = :userCode
<#if cardone.StringUtils.isNotBlank(telephone)>
 OR  u.`TELEPHONE` = :telephone
</#if>
<#if cardone.StringUtils.isNotBlank(idCardNo)>
OR u.`ID_CARD_NO` = :idCardNo
</#if>

)