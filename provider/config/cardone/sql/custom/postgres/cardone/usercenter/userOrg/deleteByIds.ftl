DELETE FROM c1_user_org WHERE
user_org_id = ANY(string_to_array(:userOrgIds, ','))