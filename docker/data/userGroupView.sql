create view groupsforuser as  
	select u.db_id , u."domain", g.group_id, g.group_type 
	from public.user u 
		left join user_group ug on u.db_id =ug.users_db_id 
		left join "group" g on ug.groups_group_id = g.group_id;