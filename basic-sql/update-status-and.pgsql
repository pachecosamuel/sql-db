select * 
from customer
where salary <= 4000;

alter table customer
add column status varchar(20) default 'active';

select * 
from customer;

update customer
set status = 'inactive'
where id = 4;

update customer
set status = 'inactive'
where id = 2;

select first_name, salary
from customer
where salary > 1000 and salary <= 4000 and status = 'active';