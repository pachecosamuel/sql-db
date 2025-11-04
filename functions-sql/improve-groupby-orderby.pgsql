select
    ctm.id as ctm_id,
    ctm.first_name as Nome,
    ctm.last_name as Sobrenome,
    sum(pay.amount) as Total_Gasto

from payment as pay
join customer as ctm using (id)

group by Nome, ctm_id
order by Total_Gasto DESC;