<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT d.REGION_CODE  ,d.NAME ,d.PARENT_CODE  FROM  c1_region d
<#if StringUtils.isNotBlank(regionCode)>
WHERE  (LOCATE(:regionCode, d.`PARENT_TREE_CODE`) > 0) OR (d.`REGION_CODE` = :regionCode)
</#if>
ORDER BY d.REGION_CODE