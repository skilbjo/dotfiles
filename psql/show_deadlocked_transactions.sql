SELECT
  pid,
  usename,
  application_name,
  query_start,
  state_change,
  waiting,
  state,
  query
FROM
  pg_stat_activity
WHERE
  usename NOT IN ('rdsadmin')
  AND state NOT IN ('active')
;
