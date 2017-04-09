SELECT
COUNT(*)
FROM
c1_user t
LEFT JOIN c1_department d ON (d.DEPARTMENT_CODE = t.DEPARTMENT_CODE)

<#include "page.where.ftl">