UPDATE c1_open_user SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
open_user_id = ANY(string_to_array(:openUserIds, ','))