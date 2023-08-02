use world;
select *
from city
where population <150000 and ID <15 or population >150000  and ID <=25
-- AND operator have more precedence  than OR i.e. AND will perform first then OR