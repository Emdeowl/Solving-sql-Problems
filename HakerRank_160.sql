/*
https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true
*/
select
    round(long_w,4)
from 
        (SELECT
            LAT_N,
            LONG_W
        FROM
            STATION
        WHERE
            LAT_N  < 137.2345
        ORDER BY
            1 desc
        LIMIT 1) a