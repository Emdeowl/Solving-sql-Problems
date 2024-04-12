--https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
SELECT
    round(lat_n,4)
FROM
    STATION
WHERE
    lat_n  < 137.2345
ORDER BY
    1 desc
LIMIT 1