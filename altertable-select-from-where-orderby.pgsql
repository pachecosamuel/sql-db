alter table usuario
rename column nome to first_name;

alter table usuario
add column last_name varchar(100);

alter table usuario
add column created_at timestamp default CURRENT_TIMESTAMP;

select * 
from usuario
order by first_name desc;

insert into usuario (first_name, last_name)
values 
    ('John', 'Doe'),
    ('Jane', 'Smith'),
    ('Alice', 'Johnson'),
    ('Bob', 'Brown'),
    ('Charlie', 'Davis'),
    ('Eve', 'Wilson');


select *
from usuario
where id >= 2
limit 5;