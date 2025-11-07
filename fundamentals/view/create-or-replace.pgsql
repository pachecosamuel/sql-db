
CREATE OR REPLACE VIEW sales_by_customer as 
select 
    ctm.id,
    ctm.first_name,
    ctm.last_name,
    pay.amount
from customer as ctm
join payment as pay
on ctm.id = pay.customer_id
order by pay.amount desc;
