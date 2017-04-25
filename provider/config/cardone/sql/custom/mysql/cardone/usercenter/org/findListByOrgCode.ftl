SELECT d.ORG_CODE, d.NAME ,d.PARENT_CODE  FROM  c1_org d
<#if cardone.StringUtils.isNotBlank(orgCode)>
WHERE  (LOCATE(:orgCode, d.`PARENT_TREE_CODE`) > 0) OR (d.`ORG_CODE` = :orgCode)
</#if>
ORDER BY d.ORG_CODE