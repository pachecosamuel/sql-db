create table receipt(
    id serial not null PRIMARY KEY,
    price numeric(10, 2) not null,
    payment_date timestamp default CURRENT_TIMESTAMP,
    method varchar(55) not null check (method in ('credit_card', 'pix', 'bill', 'transfer')),
    status varchar(55) not null check (status in ('completed', 'pending', 'failed')),
    customer_id int not null REFERENCES customer(id),
    inventory_id int not null REFERENCES inventory(id)
);

