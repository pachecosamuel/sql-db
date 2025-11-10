CREATE table inventory(
    id serial not null primary key,
    model varchar(55) not null,
    car_transmission varchar(55) not null,
    fuel varchar(55) not null,
    engine_power varchar(55) not null,
    brand_cars_id int REFERENCES brand_cars(id) on delete CASCADE
);

