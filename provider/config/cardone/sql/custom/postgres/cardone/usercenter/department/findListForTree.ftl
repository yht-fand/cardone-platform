SELECT t.DEPARTMENT_CODE ,t.NAME, t.PARENT_CODE FROM c1_department t
<#if cardone.StringUtils.isNotBlank(id)>
WHERE :id = ANY(string_to_array(t.PARENT_TREE_CODE, ','))
</#if>
ORDER BY t.ORDER_, t.DEPARTMENT_CODE