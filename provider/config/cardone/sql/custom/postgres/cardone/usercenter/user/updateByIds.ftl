UPDATE c1_user SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
user_id = ANY(string_to_array(:userIds, ','))