-- 고객이 선호하는 배송 날짜가 주문 날짜와 동일한 경우 주문 즉시(immediate), 그렇지 않은 경우 예약(scheduled)이라고 합니다.
-- 고객의 첫 주문은 고객이 가장 먼저 주문한 날짜를 가진 주문이다. 고객은 정확히 하나의 첫 주문을 가지고 있음이 보장된다.
-- 소수점 이하 2자리로 반올림한 모든 고객의 첫 주문에서 즉시 주문의 비율을 찾는 솔루션을 작성하십시오.

WITH immediate AS (
    SELECT
        customer_id,
        MIN(order_date) AS min_order_date,
        MIN(customer_pref_delivery_date) AS min_pref_delivery_date
    FROM
        Delivery
    GROUP BY
        customer_id
)
SELECT
    ROUND(SUM(CASE WHEN min_order_date = min_pref_delivery_date THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) AS immediate_percentage
FROM
    immediate;



--     with immediate as(
-- select
--    (case when min(order_date) = min(customer_pref_delivery_date) then  1  else 0 end ) as immediate_percentage
-- from
--     Delivery
-- group by
--     customer_id)

-- select
--     round(sum(im.immediate_percentage)*100  / count(im.immediate_percentage), 2) as immediate_percentage
-- from  immediate as im 