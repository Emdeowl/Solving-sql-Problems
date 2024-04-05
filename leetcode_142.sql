/*
https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true
*/

SELECT
    DISTINCT CITY
FROM
    STATION
WHERE
    CITY regexp '[^a,e,i,o,u]$'