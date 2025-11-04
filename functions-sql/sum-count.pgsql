select *
from payment;

select 
    max(amount) as maior_pagamento,
    min(amount) as menor_pagamento,
    round(avg(amount)::numeric, 2) as ticket_medio,
    sum(amount) as total_faturamento,
    count(amount) as total_vendas
from payment
where 
    status = 'completed';
