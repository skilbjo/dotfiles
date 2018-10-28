select
  *,
  pg_size_pretty(table_bytes) as table
from (
  select
    schema,
    row_estimate,
    total_bytes-index_bytes-coalesce(toast_bytes,0) as table_bytes
  from (
    select
      nspname as schema,
      sum(c.reltuples) as row_estimate,
      sum(pg_total_relation_size(c.oid)) as total_bytes,
      sum(pg_indexes_size(c.oid)) as index_bytes,
      sum(pg_total_relation_size(reltoastrelid)) as toast_bytes
    from
      pg_class c
      left join pg_namespace n on n.oid = c.relnamespace
    where relkind = 'r'
    group by 1
  ) sub
) sub
where schema not in ('pg_catalog','test','information_schema')
order by 3 desc;
