DELETE FROM t_org
<#include "where.ftl">
<#if (((prefixName!) == 'WHERE') && !(delete_all??))>
${prefixName} 1 = 2
</#if>