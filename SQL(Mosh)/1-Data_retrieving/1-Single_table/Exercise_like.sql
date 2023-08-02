use sakila;
select  *
from film_text
where description like '%action%' and 
	  description like '%drama%' and 
      title like  '%l'