With gather_data as (select id, salary from Employee order by salary desc limit 1)
select case 
        WHEN (select count(*) from Employee e1) > 2 Then max(e.salary) 
        WHEN (select count(*) from Employee e1) = 2 Then e.salary
        ELSE null
        END AS SecondHighestSalary
from Employee e, gather_data gd
where e.id <> gd.id
  and e.salary <> gd.salary;
