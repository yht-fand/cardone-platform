SELECT t.DEPARTMENT_CODE ,d.NAME, t.PARENT_CODE FROM c1_department t
<#if cardone.StringUtils.isNotBlank(id)>
WHERE  FIND_IN_SET(:id, t.`PARENT_TREE_CODE`)
</#if>
ORDER BY t.ORDER_BY_, t.DEPARTMENT_CODE