# 1211. Queries Quality and Percentage

select
    query_name,
    round(sum(rating / position) / count(position), 2) as quality,
    round(sum(rating < 3) * 100 / count(query_name), 2) as poor_query_percentage 
from
    queries
where 
    query_name is not null
group by query_name

