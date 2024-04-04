/*
EVEN은 짝수지..
https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
*/
SELECT
    DISTINCT CITY
FROM
        (SELECT
            (ID % 2) as EVEN_Check,
            CITY
        FROM
            STATION) a
WHERE
    EVEN_Check = 0