# 1070. Product Sales Analysis III

SELECT
    product_id,
    year as first_year,
    quantity, 
    price 
FROM
    Sales 
WHERE
    (product_id,year) IN (select product_id,min(year) from Sales group by product_id)

