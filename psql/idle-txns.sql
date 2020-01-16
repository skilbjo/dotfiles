select
  pid,
  usename,
  application_name,
  query_start,
  state_change,
  state,
  query
from
  pg_stat_activity
where
  usename not in ('rdsadmin')
  and state not in ('active')
;
