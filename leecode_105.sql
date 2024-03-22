# 1045. Customers Who Bought All Products

SELECT
    customer_id
FROM
    Customer
GROUP BY
    customer_id
HAVING
    count(distinct product_key)  =  ( select count(product_key )from product )


    -- 외래키로 연결되어있기 때문에  join을 안쓰고 서브쿼리를 having절에서 처리