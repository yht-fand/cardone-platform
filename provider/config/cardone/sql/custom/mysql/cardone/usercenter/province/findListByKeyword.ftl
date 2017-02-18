<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT d.PROVINCE_CODE  ,d.NAME FROM c1_province d
<#if StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`PROVINCE_CODE`)
</#if>
ORDER BY d.ORDER_, d.PROVINCE_CODE
LIMIT 20