select
  usename, state, state_change::date, count(*) as "#ofcnx"
from pg_stat_activity
where state = 'idle'
group by
  usename, state, state_change::date;
;
select
  count(*), usename, query
from pg_stat_activity
where state = 'idle'
group by
  usename, query
