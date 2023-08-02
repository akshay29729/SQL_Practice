use world ;
select *
from city
-- where population between 1500000 and 2000000
where District like '%l_'
      -- 'l%' -- try all options....