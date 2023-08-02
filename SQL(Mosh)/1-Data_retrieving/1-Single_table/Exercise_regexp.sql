use sakila;
select  *
from film_text
where description like '__action%' and 
      description regexp 'saga' and
      title regexp '[ba]l'