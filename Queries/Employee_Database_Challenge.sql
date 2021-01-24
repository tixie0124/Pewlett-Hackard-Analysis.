-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

select count (ut.emp_no),ut.title
into retiring_titles
from unique_titles as ut
group by ut.title
order by count desc;