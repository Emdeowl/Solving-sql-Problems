/*
https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
*/

SELECT
    DISTINCT CITY
FROM
    STATION
WHERE
    CITY REGEXP '^[a,e,i,o,u]' and CITY REGEXP '[a,e,i,o,u]$'
    