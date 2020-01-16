select
  *,
  pg_size_pretty(total_bytes) as total,
  pg_size_pretty(index_bytes) as index,
  pg_size_pretty(toast_bytes) as toast,
  pg_size_pretty(table_bytes) as table
from (
  select
    *,
    total_bytes-index_bytes-coalesce(toast_bytes,0) as table_bytes
    from (
      select
        c.oid,nspname as table_schema,
        relname as table_name,
        c.reltuples as row_estimate,
        pg_total_relation_size(c.oid) as total_bytes,
        pg_indexes_size(c.oid) as index_bytes,
        pg_total_relation_size(reltoastrelid) as toast_bytes
      from
        pg_class c
        left join pg_namespace n on n.oid = c.relnamespace
      where relkind = 'r'
  ) src
) src order by 8 desc;
