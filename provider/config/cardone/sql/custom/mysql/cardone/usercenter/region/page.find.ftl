SELECT T.*
FROM c1_region
<#include "page.where.ftl">
limit <#if offset??>:offset<#else>0</#if> , <#if pageSize??>:pageSize<#else>10</#if>