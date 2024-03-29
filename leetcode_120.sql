-- 1667. Fix Names in a Table
select
    user_id,
    concat(upper(left(name,1)),lower(right(name,length(name) -1))) as name
from
    Users
Order by
    user_id asc

-- https://leetcode.com/problems/fix-names-in-a-table/submissions/1216884475/