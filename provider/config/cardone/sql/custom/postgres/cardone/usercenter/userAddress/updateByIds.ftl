UPDATE c1_user_address SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
user_address_id = ANY(string_to_array(:userAddressIds, ','))