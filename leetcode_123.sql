-- 176. Second Highest Salary
SELECT MAX(salary) SecondHighestSalary FROM Employee 
WHERE salary  NOT IN (SELECT MAX(salary) FROM Employee);

-- select
-- (select distinct Salary 
-- from Employee order by salary desc 
-- limit 1 offset 1) 
-- as SecondHighestSalary;

-- offset : 지정한 위치부터 시작 
-- 즉 우리는 salary를 정렬해서 한개만 뽑을건데 index처럼 0번 = 가장 높은 임금이 아닌 2번째 위치인 offset 1을 추출한다.


--https://leetcode.com/problems/second-highest-salary/