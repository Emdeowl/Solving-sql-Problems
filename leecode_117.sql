-- 602. Friend Requests II: Who Has the Most Friends
-- 가장 많은 친구가 있는 사람과 가장 많은 친구 수를 찾는 해결책을 써라. 테스트 케이스는 한 사람만이 가장 많은 친구를 가질 수 있도록 생성됩니다.
--  문제가 의미하는 것이 다음과 같다.
--  요청을 보낸 아이디와 받아준 아이디 => 친구가 된 날짜까지 해서 input이 있는데  서로 매치가 되면 결국 친구가 된것이다. 라는 뜻인거 같음
-- 사실  잘 모르겠음


with friend as(
select requester_id id from RequestAccepted
    union all
select accepter_id id from RequestAccepted
)


select id, count(id) num  from friend group by 1 order by 2 desc limit 1


-- https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/