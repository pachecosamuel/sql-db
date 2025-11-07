select count(*)
from payment;


select status,
count (*)
from payment
group by status;


-- Total por método
SELECT method, SUM(amount) AS total_amount 
FROM payment 
GROUP BY method;