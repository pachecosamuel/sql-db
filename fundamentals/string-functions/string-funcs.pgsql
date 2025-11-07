-- remove all empty spaces
select TRIM('  Samuel  ');

select trim('     Samuel    1    ');

-- remove from both
select trim(both '0' from '000Samuel000');

-- remove from left
select trim(leading '0' from '000Samuel000');

-- remove from right
select trim(trailing '0' from '000Samuel000');

-- look for a specified letter or group
select position('or' in 'monitor');

-- to lower or to upper
select upper('abc');
select lower('ABC');

-- the numeric lenght of a specified string
select length(trim('Samuel Caetano Pacheco'));