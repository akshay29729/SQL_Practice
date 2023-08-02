use sql_store;
select 
     p.name,
     sh.name
 from  products p
 cross join shippers sh
 -- from products p, shippers sh