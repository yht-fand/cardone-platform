DELETE FROM c1_user_address WHERE FIND_IN_SET(USER_ADDRESS_ID, :userAddressIds)