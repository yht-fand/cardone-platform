UPDATE c1_user_org SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
user_org_id = ANY(string_to_array(:userOrgIds, ','))