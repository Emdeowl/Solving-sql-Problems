-- https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true
SELECT
    DISTINCT ID,
    NAME,
    COUNTRYCODE,
    DISTRICT,
    POPULATION
FROM
    CITY
WHERE
    COUNTRYCODE ='JPN'