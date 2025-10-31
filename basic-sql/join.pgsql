select * 
from customer;

select *
from payment;

select first_name, salary, amount
from customer
JOIN payment
on customer.id = payment.customer_id
group by amount, first_name, salary;

-- Total por método
SELECT method, SUM(amount) AS total_amount 
FROM payment 
GROUP BY method;