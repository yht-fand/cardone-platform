DELETE FROM c1_user WHERE FIND_IN_SET(USER_ID, :userIds)