-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true
SELECT
    SUM(population)
FROM
    CITY
WHERE
    District  = 'California'