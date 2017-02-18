<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT d.USERADDRESS_CODE  ,d.NAME FROM c1_user_address d
<#if StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, d.`NAME`) OR LOCATE(:term, d.`USERADDRESS_CODE`)
</#if>
ORDER BY d.ORDER_, d.USERADDRESS_CODE
LIMIT 20