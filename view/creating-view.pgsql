

CREATE VIEW sales_by_customer AS
select 
    ctm.id,
    ctm.first_name,
    ctm.last_name,
    pay.amount
from customer as ctm
JOIN payment as pay
ON ctm.id = pay.customer_id;