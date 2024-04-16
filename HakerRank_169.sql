/*
https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true
*/

SELECT
    E.COMPANY_CODE,
    C.FOUNDER,
    count( distinct E.lead_manager_code),
    COUNT( DISTINCT E.senior_manager_code),
    COUNT(DISTINCT E.manager_code),
    COUNT(DISTINCT E.employee_code)
FROM
    EMPLOYEE AS E 
JOIN COMPANY AS C  ON E.COMPANY_CODE = C.COMPANY_CODE
GROUP BY
    1,2
