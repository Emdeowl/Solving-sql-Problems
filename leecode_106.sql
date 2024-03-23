# 1731. The Number of Employees Which Report to Each Employee

select
    e1.employee_id ,
    e1.name,
    count(e2.reports_to) as reports_count ,
    round(avg(e2.age)) as average_age
from
    Employees  as e1,
    Employees  as e2
where
    e1.employee_id  = e2.reports_to
group by
    e1.employee_id 
order by
    1