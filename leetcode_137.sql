-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- 가장 짧은 이름의 길이를 가진 city와 가장 긴 이름의 city를 구하는 문제
(SELECT
    CITY,
     LENGTH( CITY)
FROM
        STATION
WHERE
    LENGTH(CITY) = (SELECT
                                    LENGTH( CITY) AS MIN_LEN_CITY
                                FROM
                                    STATION
                                ORDER BY
                                    MIN_LEN_CITY  asc
                                limit 
                                        1) 
ORDER BY
    CITY
LIMIT 1)

union 

(SELECT
    CITY,
     LENGTH( CITY)
FROM
        STATION
WHERE
    LENGTH(CITY) = (SELECT
                                    LENGTH( CITY) AS MIN_LEN_CITY
                                FROM
                                    STATION
                                ORDER BY
                                    MIN_LEN_CITY  desc
                                limit 
                                        1) 
ORDER BY
    CITY
LIMIT 1)
