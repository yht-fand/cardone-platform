DELETE FROM c1_province WHERE
province_id = ANY(string_to_array(:provinceIds, ','))