DELETE FROM c1_user_address WHERE
user_address_id = ANY(string_to_array(:userAddressIds, ','))