-- https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
select
    SUM(population )
FROM
    CITY
where
    COUNTRYCODE = 'JPN'