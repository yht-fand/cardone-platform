WHERE 1 = 1
<#if cardone.StringUtils.isNotBlank(orgCode)>
AND t.`ORG_CODE` LIKE CONCAT('%', :orgCode, "%")
</#if>
<#if cardone.StringUtils.isNotBlank(name)>
AND t.`NAME` LIKE CONCAT('%', :name, "%")
</#if>
<#if cardone.StringUtils.isNotBlank(parentCode)>
AND (t.`PARENT_CODE` LIKE CONCAT('%', :parentCode, "%") OR EXISTS(SELECT 1 FROM c1_org e WHERE e.`ORG_CODE` = t.`PARENT_CODE` AND e.`NAME` LIKE CONCAT('%', :parentCode, "%")))
</#if>