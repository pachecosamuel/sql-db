alter table usuario
add column salary float;

select *
from customer;

alter table usuario
rename to customer;

update customer
set salary = RANDOM() * 10000;

update customer
set salary = ROUND(salary::numeric, 2);

select 
    first_name,
    salary,
    salary - (salary * 0.15) as salary_after_tax
from customer;