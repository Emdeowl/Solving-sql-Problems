/*  내가 처음 시도한 부분. 문자열로 처리하려함. 문제 이해 못함 ㄷㄷ
with  station_orderby as(
    select lat_n
    from station
    order by lat_n
)
select
    case 
        when (cnt % 2 == 0 ) then (select left(lat_n,cnt/2) from station_orderby)
        else (
            select (left( lat_n,cnt/2 ) +  left( lat_n,(cnt/2) +1 )) /2
            from station_orderby)
        end 
from
        (select
            count(lat_n) as cnt
        from
            station)a
            */


-- 갯수가 홀수/짝수냐에 따라서 중앙값 구하는 공식이 달라짐
-- 홀수면 그냥 갯수/2 해서 구하면 끝
-- 짝수의 경우 갯수/2,갯수/2 +1을 한 위치의 숫자를 더해서 나누기 = 평균을 사용한다.

-- 전체 lat_n의 갯수를 확인하기 위한 with문
WITH station_count AS (
    SELECT COUNT(lat_n) AS cnt
    FROM station_count
), -- lat_n의 위치를 찾기위한 인덱스 대신 사용한 row_num이고 order by를 통해서 정렬을 하였다.
station_ordered AS (
    SELECT lat_n, ROW_NUMBER() OVER (ORDER BY lat_n) AS row_num
    FROM station
)
SELECT
    CASE 
        WHEN cnt % 2 = 0 THEN ( -- 짝수일 때 row_num은 2개를 선택하고 해당하는 lat_n을 구한다.
            SELECT round(AVG(lat_n) ,4)
            FROM (
                SELECT lat_n 
                FROM station_ordered
                WHERE row_num IN (cnt / 2, cnt / 2 + 1)
            ) a
        )
        ELSE ( -- 홀수는 그냥 나누면 ㅇㅋ
            SELECT round(lat_n,4)
            FROM station_ordered
            WHERE row_num = (cnt + 1) / 2
        )
    END AS median_lat
FROM station_count;
