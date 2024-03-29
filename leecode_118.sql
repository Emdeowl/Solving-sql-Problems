-- 585. Investments in 2016
-- 다음을 수행하는 모든 보험 계약자에 대해 2016 tiv_2016의 모든 총 투자 가치의 합계를 보고하는 솔루션을 작성합니다:

-- 하나 이상의 다른 보험 계약자와 동일한 tiv_2015 값을 가지며
-- 다른 정책 계약자와 동일한 도시에 위치하지 않습니다(즉, (lat, lon) 속성 쌍은 고유해야 함).
-- 소수점 두 자리까지의 라운드 tiv_2016.

select
    round(sum(tiv_2016),2) as tiv_2016
from
    Insurance
where
    tiv_2015 in   (select
                            tiv_2015
                        from
                            Insurance
                        group by
                            tiv_2015
                        having
                            count(tiv_2015) >1)
and (lat,lon) in     (select
                                lat,lon
                            from
                                Insurance
                            group by
                                lat,lon 
                            having
                                count(*) = 1)

-- https://leetcode.com/problems/investments-in-2016/