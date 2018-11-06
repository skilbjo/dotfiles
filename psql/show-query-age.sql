select
  pid,
  age(clock_timestamp(), query_start),
  usename,
  query
from
  pg_stat_activity
where
  query not ilike '%pg_stat_activity%' and query not ilike '%pg_settings%'
order by
  query_start desc;
