<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT d.AREA_CODE  ,d.NAME FROM c1_area d
<#if StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`AREA_CODE`)
</#if>
ORDER BY d.ORDER_, d.AREA_CODE
LIMIT 20