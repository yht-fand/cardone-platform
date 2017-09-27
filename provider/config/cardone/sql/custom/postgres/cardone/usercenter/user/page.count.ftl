SELECT
COUNT(*)
FROM
c1_user t
LEFT JOIN c1_department d ON (d.DEPARTMENT_ID = t.DEPARTMENT_ID)
<#include "page.where.ftl">