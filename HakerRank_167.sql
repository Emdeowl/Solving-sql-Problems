--  floor : 소수점을 버림
-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
select
    country.continent,
    floor(avg(city.population))
from
    city join country on city.countrycode = country.code
group by
    country.continent