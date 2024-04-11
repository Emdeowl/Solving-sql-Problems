-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
select
    a.max_earning,
    count(*)
from (    select
            sum(months * salary) as max_earning
        from
            employee
        group by
          employee_id
        order by 
            max_earning desc)a
group by
    max_earning
order by
    max_earning desc
limit 1