select suser_sname();

use corporationdb;
drop table departamentos;

select system_user as login_actual, user_name() as usuario_en_db;

select is_srvrolemember('sysadmin');

select 
    r.name as rol, 
    m.name as usuario
from sys.database_role_members rm
join sys.database_principals r on rm.role_principal_id = r.principal_id
join sys.database_principals m on rm.member_principal_id = m.principal_id;

select 
    p.name as login_nombre, 
    r.name as rol_servidor
from sys.server_role_members rm
join sys.server_principals p on rm.member_principal_id = p.principal_id
join sys.server_principals r on rm.role_principal_id = r.principal_id;

select principal_id, name, type_desc 
from sys.database_principals 
where name = user_name();



