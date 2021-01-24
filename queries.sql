-- retirement eligibility
select first_name, last_name
from employees
where (birthday_date between '1952-01-01' and '1955-12-31') and (hire_date between '1985-01-01' and '1988-12-31');

-- Number of employees retiring
select count(first_name)
from employees
where(birthday_date between '1952-01-01' and '1955-12-31') and (hire_date between '1985-01-01' and '1988-12-31');

-- create a new retirement table
select first_name, last_name
into retirement_info
from employees
where (birthday_date between '1952-01-01' and '1955-12-31') and (hire_date between '1985-01-01' and '1988-12-31');

select * from retirement_info