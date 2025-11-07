select *
from customer;


-- when you use the letter before the % sign,
-- it will look for rows which starts with
-- the designated letter. When it comes after the
-- % sign, it will look for rows which ends with
-- the designated letter.
select *
from customer
where first_name like '%e';