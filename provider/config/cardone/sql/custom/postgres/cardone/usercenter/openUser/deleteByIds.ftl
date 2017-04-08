DELETE FROM c1_open_user WHERE
open_user_id = ANY(string_to_array(:openUserIds, ','))