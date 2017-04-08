UPDATE c1_user_department SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
user_department_id = ANY(string_to_array(:userDepartmentIds, ','))