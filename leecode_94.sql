# Write your MySQL query statement below
select
    r.contest_id,
    round(count(distinct Users.user_id)/
    (select count(distinct user_id) from users)
    *100  ,2)  as percentage
from
    Users
join
    Register as r
on Users.user_id = r.user_id
group by 
    r.contest_id
order by
    percentage desc  , r.contest_id asc