-- 185. Department Top Three Salaries
with top3_salary as (select
        d.name as Department ,
        e.name as Employee ,
        e.Salary,
        DENSE_RANK() over(partition by d.name order by e.salary desc) as top_salary
    from
        Employee as e
    join
        Department as d
    on e.departmentid = d.id)


select
    Department,
    Employee,
    Salary
from
     top3_salary
where
    top_salary <= 3

-- https://leetcode.com/problems/department-top-three-salaries/