select
  pg_terminate_backend(pid)
from
  pg_stat_activity
where
  state_change < now() - interval '1 day'
