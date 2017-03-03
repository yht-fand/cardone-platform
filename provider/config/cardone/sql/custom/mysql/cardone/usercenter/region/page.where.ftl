WHERE 1 = 1
<#if cardone.StringUtils.isNotBlank(regionCode)>
AND t.`REGION_CODE` LIKE CONCAT('%', :regionCode, "%")
</#if>
<#if cardone.StringUtils.isNotBlank(name)>
AND t.`NAME` LIKE CONCAT('%', :name, "%")
</#if>
<#if cardone.StringUtils.isNotBlank(parentCode)>
AND (t.`PARENT_CODE` LIKE CONCAT('%', :parentCode, "%") OR EXISTS(SELECT 1 FROM c1_region e WHERE e.`REGION_CODE` = t.`PARENT_CODE` AND e.`NAME` LIKE CONCAT('%', :parentCode, "%")))
</#if>