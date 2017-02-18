<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT d.CITY_CODE  ,d.NAME FROM c1_city d
<#if StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`CITY_CODE`)
</#if>
ORDER BY d.ORDER_, d.CITY_CODE
LIMIT 20