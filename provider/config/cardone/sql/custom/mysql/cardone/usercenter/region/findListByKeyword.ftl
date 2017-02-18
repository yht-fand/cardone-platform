<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT d.REGION_CODE  ,d.NAME FROM c1_region d
<#if StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`REGION_CODE`)
</#if>
ORDER BY d.ORDER_, d.REGION_CODE
LIMIT 20