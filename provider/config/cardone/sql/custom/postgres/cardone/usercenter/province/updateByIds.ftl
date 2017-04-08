UPDATE c1_province SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
province_id = ANY(string_to_array(:provinceIds, ','))