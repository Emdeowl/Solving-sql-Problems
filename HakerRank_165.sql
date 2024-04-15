-- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
SELECT
    sum(city.population)
FROM
    CITY  join COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
where
     COUNTRY.continent ='Asia'