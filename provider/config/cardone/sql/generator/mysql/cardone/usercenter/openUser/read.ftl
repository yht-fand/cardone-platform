SELECT
<#switch (object_id!)>
<#case "beginDate">
BEGIN_DATE AS beginDate
<#break>
<#case "clientId">
CLIENT_ID AS clientId
<#break>
<#case "createdByCode">
CREATED_BY_CODE AS createdByCode
<#break>
<#case "createdDate">
CREATED_DATE AS createdDate
<#break>
<#case "dataStateCode">
DATA_STATE_CODE AS dataStateCode
<#break>
<#case "departmentCode">
DEPARTMENT_CODE AS departmentCode
<#break>
<#case "endDate">
END_DATE AS endDate
<#break>
<#case "lastModifiedByCode">
LAST_MODIFIED_BY_CODE AS lastModifiedByCode
<#break>
<#case "lastModifiedDate">
LAST_MODIFIED_DATE AS lastModifiedDate
<#break>
<#case "openUserId">
OPEN_USER_ID AS openUserId
<#break>
<#case "orgCode">
ORG_CODE AS orgCode
<#break>
<#case "permissionCodes">
PERMISSION_CODES AS permissionCodes
<#break>
<#case "roleCodes">
ROLE_CODES AS roleCodes
<#break>
<#case "stateCode">
STATE_CODE AS stateCode
<#break>
<#case "userCode">
USER_CODE AS userCode
<#break>
<#case "version">
VERSION_ AS version
<#break>
<#case "wfId">
WF_ID AS wfId
<#break>
<#default>
COUNT(1) AS COUNT_
</#switch>
FROM c1_open_user
<#include "where.ftl">