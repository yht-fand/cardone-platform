DELETE FROM c1_area WHERE
area_id = ANY(string_to_array(:areaIds, ','))