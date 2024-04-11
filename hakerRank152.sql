-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true
select
    AVG(population )
FROM
    CITY
where
    DISTRICT = 'California'
    