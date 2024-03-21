# 하루에 처음 로그인한 후 하루 만에 다시 로그인한 선수 중 일부를 보고할 솔루션을 작성하십시오.다른 말에 로그인 날짜부터 2일 연속 기록에서 기록되는 선수 수를 카운트해야 합니다.


SELECT ROUND(COUNT(*) / (
    SELECT COUNT(DISTINCT player_id)
    FROM Activity
), 2) AS fraction
FROM Activity
WHERE (player_id, event_date) IN (
    SELECT player_id, DATE_ADD(MIN(event_date), INTERVAL 1 DAY)
    FROM Activity
    GROUP BY player_id
);


# 문제의 조건이 처음 로그인 후 다음날에 로그인한 선수를 구하는것.
# 처음 로그인 한 날 = MIN(event_date)를 의미하고
# 그 다음날은 DATE_ADD를 통해서 1일 추가된 날짜를 말해줌
# 즉 로그인 다음날인 event_date를 포함하는 (IN) event_date와 player_id를 조건으로
# 걸겠다!!!
