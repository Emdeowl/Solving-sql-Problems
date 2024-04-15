-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
SELECT
   city.name
FROM
    CITY  join COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
where
     COUNTRY.continent ='Africa'