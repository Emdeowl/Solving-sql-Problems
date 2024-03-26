-- 1907. Count Salary Categories


-- with category as (
-- select
--     case when   income < 20000 then 'Low Salary'
--             when  income < 50000 then 'Average Salary'
--             else 'High Salary' end   as 'category',
--     COUNT(account_id) AS accounts_count 
-- from
--     Accounts
-- group by
--     category
--     )


-- select
--     category,accounts_count
-- from 
--     category


SELECT "Low Salary" AS category,
       sum(income < 20000) AS accounts_count
  FROM Accounts

UNION

SELECT "Average Salary" AS category,
       sum(income BETWEEN 20000 AND 50000) AS accounts_count
  FROM Accounts

UNION

SELECT "High Salary" AS category,
       sum(income > 50000) AS accounts_count
  FROM Accounts;


  -- SUM 함수는 조건이 참인 행의 개수를 세고, COUNT 함수는 해당 열의 NULL이 아닌 값의 개수를 센다. 따라서 count를 하면 조건에 해당하는지가 아닌 null의 여부만 확인하기 때문에 늘 행의 수가 나온다. 

  -- https://leetcode.com/problems/count-salary-categories/?source=submission-noac