select
  u.usename as "User name",
  u.usesysid as "User ID",
  case when u.usesuper and u.usecreatedb then CAST('superuser, create database' as pg_catalog.text)
       when u.usesuper then CAST('superuser' as pg_catalog.text)
       when u.usecreatedb then CAST('create database' as pg_catalog.text)
       else cast('' as pg_catalog.text) end as "Attributes"
from pg_catalog.pg_user u
