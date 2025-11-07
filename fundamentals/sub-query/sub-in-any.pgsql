select *
from customer
where id IN (
    select customer_id
    from payment
    group by customer_id
    HAVING  count(*)  > 1 and data_compra > '2025-11-01'
);


select *
from customer
where id = any (
    select customer_id
    from payment
    group by customer_id
    HAVING  count(*)  > 1
);
