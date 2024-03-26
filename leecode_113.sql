-- 월급이 엄밀하게 30000달러 미만이고 관리자가 회사를 떠난 직원들의 신분증을 찾아보세요. 관리자가 회사를 떠날 때 해당 정보는 직원 테이블에서 삭제되지만 보고서에는 여전히 manager_id가 떠난 관리자로 설정되어 있습니다. employee_id에서 주문한 결과표를 반환합니다.

-- 1978. Employees Whose Manager Left the Company

SELECT
    employee_id
FROM
    Employees
where
    salary  < 30000 and
    manager_id not in ( select  employee_id  from employees )
order by
    1

-- https://leetcode.com/problems/employees-whose-manager-left-the-company/description/
-- eqaul join을 사용해서 풀려고 했지만 실패~ 개같이 실패~
--  not in 을 사용하는 것을 권장...