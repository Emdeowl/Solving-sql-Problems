-- 키보드에 0이 부서져서 계산이 잘못되어있다.
-- 오차량(즉, 월평균 급여)을 계산하는 쿼리를 작성하고 다음 정수로 반올림한다.

-- 문제에서는 round라고 써 있는데 round = 반올림을 하면 답이 아님.
-- ceil= 올림을 사용하면 된다.
-- int형에 replace가 가능한 지 처음 알음

-- regexp_replace(바꿀 데이터 , 바꿀 대상 , 대체할 값)으로 where에 쓰려고  했는데 오류남 ㅠ
SELECT
   ceiling(AVG(SALARY) -  AVG(replace(SALARY,'0','')) )
FROM
    EMPLOYEES 