select
    pay.status,
    pay.customer_id,
    ctm.first_name as Nome,
    SUM(pay.amount) as Total_Gasto,
    COUNT(pay.amount) as Total_Compras

from payment as pay
JOIN customer as ctm using (id)

group by customer_id, Nome, pay.status
HAVING SUM(pay.amount) >= 150 and pay.status = 'Completed'
order by Total_Gasto;

select *
from payment;