-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.
select
   round(
            (abs(a - c) + abs(b-d))
            ,4) as manhattan_distance
from
            (select
                min(lat_n) as a,
                min(long_w) as b,
                max(lat_n) as c,
                max(long_w) as d
            from
                station)a
