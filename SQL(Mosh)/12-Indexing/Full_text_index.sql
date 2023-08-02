use sql_blog;
create fulltext index idx_title_body on posts(title,body);
select * -- ,match(title,body) against('react redux')
from posts
where match(title,body) against('react redux');
-- where match(title,body) against('react -redux' in boolean mode);
-- where match(title,body) against('react -redux from' in boolean mode);
-- where match(title,body) against('"Handling a fOrm"' in boolean mode); -- character are case insensitive