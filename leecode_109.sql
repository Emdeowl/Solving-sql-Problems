-- 180. Consecutive Numbers
select
   distinct num as ConsecutiveNums 
from
(select
    num,
    lead(num,1) over() as lead_num,
    lag(num,1) over() as lag_num
from
    Logs
)a
where
    (num = lead_num) &(num=  lag_num)


    -- 참고 사이트 https://it-mi.tistory.com/56