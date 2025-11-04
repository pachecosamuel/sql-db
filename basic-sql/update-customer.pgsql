select * 
from customer
order by id;

update customer
set 
    salary = 19562.20,
    last_name = 'Caetano'
WHERE
    id = 1;


update customer
set
    last_name = 'Slomo'
where 
    id = 18;