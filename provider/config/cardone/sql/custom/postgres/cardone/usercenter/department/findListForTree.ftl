SELECT
t.DEPARTMENT_ID
, t.DEPARTMENT_CODE
, t.NAME
, t.PARENT_ID
, t.PARENT_CODE
, (select count(*) from c1_department s where s.PARENT_ID = t.department_id) as children_count
FROM c1_department t
WHERE t.state_code = '1' and t.data_state_code = '1'
<#if cardone.StringUtils.isBlank(notId)>
    <#if cardone.StringUtils.isNotBlank(id)>
    AND :id = ANY(string_to_array(t.PARENT_TREE_ID, ','))
    <#else>
    AND t.PARENT_ID = ''
    </#if>
</#if>
ORDER BY t.ORDER_BY_, t.DEPARTMENT_CODE