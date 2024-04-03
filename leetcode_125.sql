--1327. List the Products Ordered in a Period

select
    p.product_name,
    sum(o.unit) as unit
from
    products as p
join 
    orders as o
on p.product_id = o.product_id
where
    date_format(o.order_date,'%Y-%m') ='2020-02'
group by
    p.product_id
having
    sum(o.unit) >= 100
    -- https://leetcode.com/problems/list-the-products-ordered-in-a-period/