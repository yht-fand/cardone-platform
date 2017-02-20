<#assign StringUtils = beansWrapperFn.getStaticModels()["org.apache.commons.lang3.StringUtils"]>
SELECT t.USER_CODE  ,t.NAME FROM c1_user t
<#if StringUtils.isNotBlank(term)>
WHERE LOCATE(:term, t.`NAME`) OR LOCATE(:term, t.`USER_CODE`)
</#if>
ORDER BY t.ORDER_, t.USER_CODE
LIMIT 20