DELETE FROM c1_department WHERE
department_id = ANY(string_to_array(:departmentIds, ','))