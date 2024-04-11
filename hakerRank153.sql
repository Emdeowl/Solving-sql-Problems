-- https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
select
    AVG(population )
FROM
    CITY
where
    COUNTRYCODE = 'JPN'