select *
from customer
where last_name is NULL;


select * 
from customer
where status = 'inactive';


-- crud = create, read, update and delete;
update customer
set last_name = 'Pacheco'
where id = 1;


update customer
set status = 'inactive'
where id = 4;