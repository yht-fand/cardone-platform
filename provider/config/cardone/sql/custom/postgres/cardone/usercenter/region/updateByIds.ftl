UPDATE c1_region SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
region_id = ANY(string_to_array(:regionIds, ','))