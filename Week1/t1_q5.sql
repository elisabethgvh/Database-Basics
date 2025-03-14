.open bike.db
.mode column

select category, tyre_size, name, price
from bike
where price<'500'
order by category asc, price desc;
