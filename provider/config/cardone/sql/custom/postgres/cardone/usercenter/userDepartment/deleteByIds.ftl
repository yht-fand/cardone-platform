DELETE FROM c1_user_department WHERE
user_department_id = ANY(string_to_array(:userDepartmentIds, ','))