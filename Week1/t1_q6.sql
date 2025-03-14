.open bike.db
.mode column

select name
from bike
where price is NULL
order by name;
