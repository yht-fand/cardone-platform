<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT d.ORG_CODE  ,d.NAME FROM c1_org d
<#if StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`ORG_CODE`)
</#if>
ORDER BY d.ORDER_, d.ORG_CODE
LIMIT 20