-- 1. machine part
create extension tablefunc; -- as admin

create or replace function cross_tab_query (tablename varchar, rowc varchar, colc varchar, cellc varchar, celldatatype varchar) returns varchar language plpgsql as $$
declare
    dynsql1 varchar;
    dynsql2 varchar;
    columnlist varchar;
begin
    -- 1. retrieve list of column names.
    dynsql1 = 'select string_agg(distinct '||colc||'||'' '||celldatatype||''','','' order by '||colc||'||'' '||celldatatype||''') from '||tablename||';';
    execute dynsql1 into columnlist;
    -- 2. set up the crosstab query
    dynsql2 = 'select * from crosstab (
   ''select '||rowc||','||colc||','||cellc||' from '||tablename||' group by 1,2 order by 1,2'',
   ''select distinct '||colc||' from '||tablename||' order by 1''
 )
 as ct (
 '||rowc||' varchar,'||columnlist||'
 );';
    return dynsql2;
end
$$

-- 2. analyst part
drop view skilbjo.market_trends;
create or replace view skilbjo.market_trends as (
  select
    b."NAICS Industry" as industry,
    b."Primary State"  as state,
    count(*)
  from
    dw.guarantor_applied_for_loan_fact fact
    join dw.loan_application_dim l on fact.loan_application_id = l.id
    left join dw.business_dim b on fact.business_id = b.id
    join dw.loan_dim loan on l.id = loan.id
  where
    l."Loan Application Created Timestamp" between '2017-01-01' and '2017-12-31'
  group by
    1,2
);

select * from cross_tab_query('skilbjo.market_trends','industry','state','sum(count)','integer');

select * from crosstab (
  'select industry,state,sum(count) from skilbjo.market_trends group by 1,2 order by 1,2',
  'select distinct state from skilbjo.market_trends order by 1'
  )
  as ct (
  industry varchar,AK integer,AL integer,AR integer,AZ integer,CA integer,CO integer,CT integer,DC integer,DE integer,FL integer,GA integer,HI integer,IA integer,ID integer,IL integer,"IN" integer,KS integer,KY integer,LA integer,MA integer,MD integer,ME integer,MI integer,MN integer,MO integer,MS integer,MT integer,NC integer,ND integer,NE integer,NH integer,NJ integer,NM integer,NY integer,OH integer,OK integer,"OR" integer,PA integer,RI integer,SC integer,SD integer,TN integer,TX integer,UT integer,VA integer,VT integer,WA integer,WI integer,WV integer,WY integer
);
