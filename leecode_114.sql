--  626. Exchange Seats

#연속된 두 학생마다 좌석 ID를 교환할 수 있는 해결책을 작성한다. 학생 수가 홀수인 경우 마지막 학생의 ID는 스왑되지 않습니다. ID별로 순서를 정한 결과표를 오름차순으로 반환한다.

select
    case when   id = (SELECT COUNT(*) FROM Seat) and id % 2 =1 then id  
    when  id% 2 = 0 then id -1 
            else id +1
            end as id,
        student
from
    seat    
order by 
    id

     -- https://leetcode.com/problems/exchange-seats/
-- lead와 같은 함수를 써야하는 줄 알았지만, 현실은 아니였다. 
