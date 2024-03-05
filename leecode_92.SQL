# 1251. Average Selling Price
#  https://leetcode.com/problems/average-selling-price/


SELECT
    P.product_id,
    IFNULL(round( SUM(P.price * U.units) / SUM(U.units),2) ,0 )as average_price 
FROM
    Prices as P
LEFT JOIN 
    UnitsSold as U
ON P.product_id = U.product_id AND u.purchase_date BETWEEN start_date AND end_date
GROUP BY
    P.product_id
