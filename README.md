# Solving-sql-Problems

<<<<<<< HEAD
SQL  코드 카타

<<<<<<< HEAD
## 620. Not Boring Movies

####  Write a solution to report the movies with an odd-numbered ID and a description that is not "boring"

-  홀수 아이디를 구하는 과정에서 == 으로 쓰는 실수를 함. =으로 정정 후 해결 -완-
=======
## 1934. Confirmation Rate

- SELECT 할 때 s.user_id가 아니라 c.user_id로 써서  7번 user_id가 null로 나오는 실수를 함.
>>>>>>> 90번




<<<<<<< HEAD








#### https://leetcode.com/problems/not-boring-movies/description/
=======
#### https://leetcode.com/problems/confirmation-rate/description/
>>>>>>> 90번
=======

## 1251. Average Selling Price

#### Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places.

-  시도한 점
-  - WHERE절에 U.purchase_date between P.start_date and P.end_date로 사용하였음
   -  조인 이후에 필터링을 하는 과정이기 때문에 (SQL의 작동 순서는 JOIN -> WHERE) 다른 케이스에서는 오류가 발생
 -  LEFT JOIN     UnitsSold as U ON P.product_id = U.product_id AND u.purchase_date BETWEEN start_date AND end_date 과 같이 \
join 조건절인 ON에 걸면 해결 -완-
>>>>>>> 92번
