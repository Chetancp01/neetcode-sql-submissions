-- Write your query below

select 
    employee_id,  
    CASE 
        when employee_id % 2 = 1 AND LEFT(name, 1) != 'M' THEN salary
        when employee_id % 2 = 1 AND LEFT(name, 1) = 'M' THEN 0
        ELSE 0
    END AS bonus
from employees order by employee_id
