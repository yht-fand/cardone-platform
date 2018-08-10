select t.* from c1_user t
<#if cardone.StringUtils.isNotBlank(isLike)>
    where strpos(t.name, :userName) > 0 or strpos(t.first_name, :userName) > 0 or strpos(t.last_name, :userName) > 0 or strpos(t.user_code, :userName) > 0
<#else>
    where t.name = :userName or t.user_code = :userName
</#if>
order by t.user_code
