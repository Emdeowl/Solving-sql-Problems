# 1193. Monthly Transactions I

# Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

# Return the result table in any order.

select
    date_format(trans_date,'%Y-%m') as month,
    country,
    count( month(trans_date) ) as trans_count,
    sum(case when state ='approved' then 1 else 0 end) as approved_count,
    sum(amount)  as trans_total_amount,
    sum(case when state ='approved' then amount else 0 end) as approved_total_amount
from
    Transactions
group by
    month , country
order by
    month, country