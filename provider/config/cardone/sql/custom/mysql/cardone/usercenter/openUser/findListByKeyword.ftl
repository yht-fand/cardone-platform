<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT d.OPENUSER_CODE  ,d.NAME FROM c1_open_user d
<#if StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`OPENUSER_CODE`)
</#if>
ORDER BY d.ORDER_, d.OPENUSER_CODE
LIMIT 20