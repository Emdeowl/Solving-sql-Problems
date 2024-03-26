-- 1204. Last Person to Fit in the Bus 
-- 버스를 타기 위해 기다리는 사람들이 줄을 잇고 있다. 하지만 버스는 무게 제한이 1000kg이라 탑승하지 못하는 분들이 계실 수도 있습니다. 무게 제한을 초과하지 않고 버스에 들어갈 수 있는 마지막 사람의 personon_nname을 찾는 해결책을 작성합니다. 테스트 케이스는 첫 번째 사람이 체중 제한을 초과하지 않도록 생성됩니다.

with cum as (select
    sum(weight) over(order by turn) as cum,
    person_name,
    turn
from
    queue
)



select
    person_name
from
    cum
where 
         turn = (select
                        max(turn)
                    from
                        cum
                    where
                        cum <= 1000)

--  서브쿼리의 결과가 단일 행이면 group by 가 필요하지 않다.             
-- https://leetcode.com/problems/last-person-to-fit-in-the-bus/                               