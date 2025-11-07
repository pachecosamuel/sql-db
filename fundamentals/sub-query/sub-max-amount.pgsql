select 
    max(amount)
from payment;

select 
    min(amount)
from payment;

select *
from payment
where amount = (
    select 
    max(amount)
    from payment
    where customer_id = 1
);