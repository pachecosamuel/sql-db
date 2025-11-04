select *
from customer;


-- min, max and average
select 
    min(salary) as min_salary,
    max(salary) as max_salary,
    round(avg(salary)::numeric, 2) as avg_salary
from customer;
