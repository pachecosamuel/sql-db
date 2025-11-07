select 
    customer.first_name as name,
    customer.salary,
    payment.amount,
    payment.payment_date
from customer
JOIN payment
ON customer.id = payment.customer_id
order by amount DESC;



-- alias
select 
    ctm.first_name,
    pay.amount
from customer as ctm
JOIN payment as pay
ON ctm.id = pay.customer_id
order by amount desc;