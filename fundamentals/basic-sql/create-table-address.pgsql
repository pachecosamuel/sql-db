CREATE table Address(
    id serial PRIMARY KEY,
    customer_id integer REFERENCES customer(id) ON DELETE CASCADE,
    street varchar(100),
    city varchar(50),
    state varchar(50),
    zip_code varchar(10),
    ip_address inet NOT NULL,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP
);

select *
from address;


INSERT INTO address (customer_id, street, city, state, zip_code, ip_address)
VALUES
    (1, 'Av. Paulista, 1000', 'São Paulo', 'SP', '01310-100', '192.168.0.10'),
    (2, 'Rua XV de Novembro, 200', 'Curitiba', 'PR', '80020-310', '10.0.0.23'),
    (3, 'Av. Atlântica, 500', 'Rio de Janeiro', 'RJ', '22010-000', '172.16.0.45'),
    (4, 'Rua das Flores, 77', 'Porto Alegre', 'RS', '90010-000', '192.168.1.14'),
    (5, 'Rua Goiás, 55', 'Belo Horizonte', 'MG', '30160-000', '10.1.2.56'),
    (6, 'Av. Brasil, 300', 'Recife', 'PE', '50030-000', '192.168.5.18'),
    (7, 'Rua Chile, 120', 'Salvador', 'BA', '40020-000', '172.16.8.77'),
    (8, 'Rua da Paz, 12', 'Fortaleza', 'CE', '60020-000', '192.168.10.99'),
    (9, 'Av. das Américas, 4000', 'Rio de Janeiro', 'RJ', '22640-102', '10.0.0.102'),
    (10, 'Rua Tupi, 90', 'Campo Grande', 'MS', '79005-030', '192.168.2.201'),
    (11, 'Rua Guarani, 90', 'Campo Grande', 'MS', '79005-030', '192.168.2.201'),
    (12, 'Rua Voares, 92', 'Campo Grande', 'MS', '79005-030', '192.168.2.201'),
    (13, 'Rua Hill, 94', 'Campo Grande', 'MS', '79005-030', '192.168.2.201'),
    (14, 'Rua Benjour, 976', 'Campo Grande', 'MS', '79005-030', '192.168.2.201'),
    (15, 'Rua Salomao, 4320', 'Campo Grande', 'MS', '79005-030', '192.168.2.201'),
    (16, 'Rua Scott, 320', 'Campo Grande', 'MS', '79005-030', '192.168.2.201'),
    (17, 'Rua Taboao, 89', 'Campo Grande', 'MS', '79005-030', '192.168.2.201');



select
    ctm.first_name,
    adr.street,
    pay.amount
from customer as ctm
JOIN payment as pay
    ON ctm.id = pay.customer_id
JOIN address as adr
    ON ctm.id = adr.customer_id
order by amount DESC;

