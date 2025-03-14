.open potato.db
.open breeder.db
.open breeds.db

.mode column
select potato.potato_name, breeder.breeder_name
from breeds, potato, breeder 
where breeds.breeder_id = breeder.breeder_id
    and potato.potato_id = breeds.potato_id
order by potato_name asc;