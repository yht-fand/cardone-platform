DELETE FROM c1_city WHERE
city_id = ANY(string_to_array(:cityIds, ','))