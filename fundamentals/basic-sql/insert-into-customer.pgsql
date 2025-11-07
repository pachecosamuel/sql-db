select *
from customer;

INSERT into customer (first_name, salary)
VALUES
    ('Salomao', 19562.20);


INSERT into customer (
    id, 
    first_name, 
    last_name,
    created_at,
    salary,
    status)
VALUES
    (default, 'Joao', 'Adibe', now(), 8320.49, 'pending'),
    (default, 'Catarina', 'Amancio', now(), 4220.49, 'active');