with recursive countdown(val) as (
select 3 as val ---Initial, non rercusive query
union
select val - 1 from countdown where val>1 --recursive query
)
select *
from countdown; 