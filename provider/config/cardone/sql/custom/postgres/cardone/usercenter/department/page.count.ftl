SELECT
COUNT(1)
c1_department t
left join c1_department p on (p.DEPARTMENT_ID = t.PARENT_ID)
<#include "page.where.ftl">