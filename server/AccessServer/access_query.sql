select username,role,door_desc 
from hashes,roles,doors,door_roles,user_roles 
where roles.role_id=door_roles.role_id 
  and doors.door_address=door_roles.door_id
  and door_roles.role_id = user_roles.role_id
  and hashes.user_id = user_roles.user_id
  and hashes.hash_id = md5("456#")
  and doors.door_address = 1;