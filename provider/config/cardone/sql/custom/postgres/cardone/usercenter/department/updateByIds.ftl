UPDATE c1_department SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
department_id = ANY(string_to_array(:departmentIds, ','))