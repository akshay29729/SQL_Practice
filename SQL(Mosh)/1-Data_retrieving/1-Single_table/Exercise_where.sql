use sakila;
-- select distinct language_id, title
select *
from film 
where rental_duration >5
-- order by title