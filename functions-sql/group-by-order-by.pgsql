select * 
from payment;

select
    first_name as nome,
    customer_id as cust_id,
    sum(amount) as total_gasto
from payment
join customer
on payment.customer_id = customer.id
group by customer_id, first_name
order by total_gasto desc;
