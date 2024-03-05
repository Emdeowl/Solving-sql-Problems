# 사용자의 확인률은 '확인'된 메시지의 수를 전체 요청된 확인 메시지의 수로 나눈 값이다. 확인 메시지를 요청하지 않은 사용자의 확인율은 0이다. 확인 비율을 소수점 두 자리로 반올림한다. 솔루션을 작성하여 각 사용자의 확인률을 찾습니다. 결과표를 순서에 상관없이 반환합니다. 결과 형식은 다음 예에 있습니다
# https://leetcode.com/problems/confirmation-rate/

select
    s.user_id,
    round(avg( if( c.action = 'confirmed' ,1 ,0) ),2) as confirmation_rate
from
    Signups as s
left join 
    Confirmations as c
on s.user_id = c.user_id
group by
    user_id
