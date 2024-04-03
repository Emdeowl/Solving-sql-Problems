-- https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true
SELECT
    DISTINCT NAME
FROM
    CITY
WHERE
    COUNTRYCODE ='JPN'