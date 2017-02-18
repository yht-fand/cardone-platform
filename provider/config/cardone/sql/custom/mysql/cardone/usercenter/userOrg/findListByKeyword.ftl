<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT d.USERORG_CODE  ,d.NAME FROM c1_user_org d
<#if StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`USERORG_CODE`)
</#if>
ORDER BY d.ORDER_, d.USERORG_CODE
LIMIT 20