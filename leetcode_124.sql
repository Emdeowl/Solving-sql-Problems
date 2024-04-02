-- 1484. Group Sold Products By The Date


select
    sell_date,
    count(distinct product) as num_sold,
    group_concat(distinct product ) as products
from
    Activities
group by
    sell_date
order by
    sell_date

-- https://leetcode.com/problems/group-sold-products-by-the-date/
-- group concat을 배움 ㄷㄷ
-- https://fruitdev.tistory.com/16 여기를 참고하도록