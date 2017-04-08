UPDATE c1_area SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
area_id = ANY(string_to_array(:areaIds, ','))