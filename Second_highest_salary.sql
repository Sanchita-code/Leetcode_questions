With gather_data as (select id from Employee order by salary desc limit 1)
select case 
        WHEN (select count(*) from Employee e1) > 1 Then max(salary) 
        ELSE null
        END AS SecondHighestSalary
from Employee e, gather_data gd
where e.id <> gd.id;
