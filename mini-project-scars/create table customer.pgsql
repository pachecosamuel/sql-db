create table customer(
    id serial not null PRIMARY KEY,
    name varchar(55) not null,
    last_name varchar(55) not null,
    address varchar(255) not null
);