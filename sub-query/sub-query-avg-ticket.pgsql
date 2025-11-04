select 
    round(avg(amount)::numeric, 2)
from payment;

select *
from payment
where amount >= (
    select 
        avg(amount)
    from payment);