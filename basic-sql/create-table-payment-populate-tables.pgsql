create table payment(
    id SERIAL primary key,
    customer_id integer REFERENCES customer(id),
    amount numeric(10, 2) not null,
    payment_date timestamp default CURRENT_TIMESTAMP,
    method varchar(50) check (method in ('credit_card', 'pix', 'bill', 'transfer')),
    status varchar(20) check (status in ('completed', 'pending', 'failed'))
);


INSERT INTO customer (first_name, last_name, created_at, salary, status)
VALUES
('Laura', 'Martins', NOW(), ROUND(RANDOM() * 10000), 'active'),
('Pedro', 'Oliveira', NOW(), ROUND(RANDOM() * 10000), 'inactive'),
('Juliana', 'Costa', NOW(), ROUND(RANDOM() * 10000), 'active'),
('Rafael', 'Silva', NOW(), ROUND(RANDOM() * 10000), 'active'),
('Fernanda', 'Souza', NOW(), ROUND(RANDOM() * 10000), 'inactive'),
('Bruno', 'Lima', NOW(), ROUND(RANDOM() * 10000), 'active'),
('Patrícia', 'Rocha', NOW(), ROUND(RANDOM() * 10000), 'inactive'),
('Diego', 'Mendes', NOW(), ROUND(RANDOM() * 10000), 'active'),
('Camila', 'Barros', NOW(), ROUND(RANDOM() * 10000), 'active'),
('André', 'Teixeira', NOW(), ROUND(RANDOM() * 10000), 'inactive');

INSERT INTO payment (customer_id, amount, method, status)
VALUES
(1, 250.00, 'pix', 'completed'),
(1, 120.00, 'credit_card', 'completed'),
(2, 89.90, 'bill', 'pending'),
(2, 310.25, 'pix', 'completed'),
(3, 500.00, 'transfer', 'completed'),
(3, 350.00, 'credit_card', 'failed'),
(4, 1000.00, 'pix', 'completed'),
(4, 220.00, 'bill', 'completed'),
(5, 220.50, 'credit_card', 'completed'),
(5, 99.99, 'pix', 'pending'),
(6, 75.90, 'bill', 'pending'),
(6, 500.00, 'credit_card', 'completed'),
(7, 900.00, 'pix', 'completed'),
(7, 150.00, 'credit_card', 'completed'),
(8, 450.25, 'pix', 'failed'),
(8, 220.00, 'transfer', 'completed'),
(9, 600.00, 'credit_card', 'completed'),
(9, 75.50, 'pix', 'completed'),
(10, 200.00, 'bill', 'pending'),
(10, 850.00, 'transfer', 'completed'),
(11, 340.00, 'credit_card', 'completed'),
(11, 150.00, 'pix', 'completed'),
(12, 220.75, 'pix', 'failed'),
(12, 670.00, 'credit_card', 'completed'),
(13, 410.00, 'bill', 'pending'),
(13, 95.50, 'pix', 'completed'),
(14, 800.00, 'transfer', 'completed'),
(15, 330.00, 'credit_card', 'completed'),
(16, 720.00, 'pix', 'completed'),
(17, 490.00, 'bill', 'failed');


