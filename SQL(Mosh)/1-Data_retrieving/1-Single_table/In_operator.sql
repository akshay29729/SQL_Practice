use world;
select *
from city
-- where District = 'Kabol' OR District = 'Gelderland' or District = 'Tirana'
-- we can't use District = 'Kabol' or 'Gelderland' or 'Tirana' bcz we can't compare boolean(District = 'Kabol'
-- with string ' Gelderland'
where District in ('Kabol','Gelderland','Tirana') 
-- line 4 and 7 gives same output

