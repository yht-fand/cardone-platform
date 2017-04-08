DELETE FROM c1_org WHERE
org_id = ANY(string_to_array(:orgIds, ','))