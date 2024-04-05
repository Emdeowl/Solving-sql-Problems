/*
https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
*/

SELECT
        DISTINCT CITY
FROM
    STATION
WHERE
    CITY regexp '^[a,e,o,i,u]'