# Solving-sql-Problems

SQL  코드 카타

## 550. Game Play Analysis IV

- 문제의 조건이 처음 로그인 후 다음날에 로그인한 선수를 구하는것.
-  처음 로그인 한 날 = MIN(event_date)를 의미하고
-  그 다음날은 DATE_ADD를 통해서 1일 추가된 날짜를 말해줌
-  즉 로그인 다음날인 event_date를 포함하는 (IN) event_date와 player_id를 조건으로  걸겠다!!!

https://leetcode.com/problems/game-play-analysis-iv/description/
