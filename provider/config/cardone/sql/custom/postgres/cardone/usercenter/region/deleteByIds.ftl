DELETE FROM c1_region WHERE
region_id = ANY(string_to_array(:regionIds, ','))