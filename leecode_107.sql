--  1789. Primary Department for Each Employee
-- 직원들은 여러 부서에 속해 있을 수 있습니다.직원이 다른 부서에 가입할 때, 그들은 어떤 부서인지 결정할 필요가 있다.직원이 한 부서에만 속해 있는 경우, 그들의 기본 열은 'N'입니다.
-- 모든 직원들과 함께 보고서를 작성하려면 솔루션을 사용하십시오.한 백화점에 속해 있는 직원에게는 오직 부서만 신고하세요.

select
    employee_Id,
    department_id
from
    employee
where
    primary_flag  = "Y" or employee_id in (
        select
            employee_id
        from
            employee
        group by
            employee_id
        having 
            count(primary_flag) = 1
    )
group by
    employee_id

