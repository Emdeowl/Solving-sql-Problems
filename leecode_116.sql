--1321. Restaurant Growth
-- 당신은 식당 주인이고 가능한 확장을 분석하려고 합니다(매일 최소 한 명의 고객이 있을 것입니다). 7일 동안(즉, 현재 날짜 + 6일 전) 고객이 지불한 금액의 이동 평균을 계산합니다. average_amount는 소수점 두 자리로 반올림해야 합니다. visit_on에서 주문한 결과 테이블을 오름차순으로 반환합니다.


with plus_six_day as (select
    distinct visited_on,
    sum(amount) over (order by visited_on range between interval 6 day  PRECEDING and CURRENT  row) as amount,
    min(visited_on) over() as 1st_date
from
    Customer)
    

select
    visited_on,
    amount,
    ROUND(amount/7, 2) average_amount
from
    plus_six_day
where
    visited_on >= 1st_date +6

-- 여기서 중요한 점은 over를 사용해서 각 행마다의 계산을 해주는 것이고, amount의 경우는 기준 날짜(ivisited_on)에서 6일을 더한 날짜까지 sum을 하기 위해서 over절에서 range를 사용하였고, interval 6 day를 통해 6일의 차이를 만들었고, 이를 current row로 현재 행부터 precending 6일전 행까지의 sum을 누적 합계로 보여준다.
-- https://leetcode.com/problems/restaurant-growth/