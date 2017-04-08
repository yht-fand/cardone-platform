DELETE FROM c1_user WHERE
user_id = ANY(string_to_array(:userIds, ','))