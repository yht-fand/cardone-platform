UPDATE c1_city SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
city_id = ANY(string_to_array(:cityIds, ','))