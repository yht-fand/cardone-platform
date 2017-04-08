UPDATE c1_org SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
org_id = ANY(string_to_array(:orgIds, ','))