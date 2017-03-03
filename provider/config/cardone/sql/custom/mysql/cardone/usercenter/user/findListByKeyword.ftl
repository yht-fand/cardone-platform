SELECT t.USER_CODE, t.NAME
FROM
`c1_user` t
<#if cardone.StringUtils.isNotBlank(term)>
WHERE t.`USER_CODE` LIKE CONCAT('%', :term, "%") OR t.`NAME` LIKE CONCAT('%', :term, "%")
</#if>
ORDER BY t.`DEPARTMENT_CODE`,
t.`USER_CODE`,
t.`CREATED_DATE`
LIMIT 20