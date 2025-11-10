insert into customer(name, last_name, address)
values 
    ('samuel', 'pacheco', 'rua 1'),
    ('andré', 'iacono', 'rua 2'),
    ('abel', 'ferreira', 'rua 3'),
    ('filipe', 'luis', 'rua 4'),
    ('estavao', 'garcia', 'rua 5');


insert into brand_cars(brand, origin)
values 
    ('VW', 'Germany'),
    ('Fiat', 'Italy'),
    ('Renault', 'France'),
    ('BMW', 'Germany'),
    ('Audi', 'Germany');


insert into inventory(
    model, 
    car_transmission, 
    fuel, 
    engine_power, 
    brand_cars_id)
values 
    ('Fusca', 'M', 'Gas', '1.5', 1),
    ('500', 'A', 'Gas', '1.0', 2),
    ('Kwid', 'M', 'Flex', '1.0', 3),
    ('X5', 'A', 'Gas', '1.8', 4),
    ('A3', 'M', 'Gas', '2.0', 5);