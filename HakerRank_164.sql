/*
https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
*/

select
    round(power(
                        power(
                                    (a- b) , 2) + 
                        power(
                                    (c-d) , 2)
                        ,0.5)
          , 4)
from
        (select
            min(lat_n) as a,
            max(lat_n) as b,
            min(long_w) as c,
            max(long_w) as d
        from 
            station) a