# Solving-sql-Problems

SQL  코드 카타

## 1174. Immediate Food Delivery II

If the customer's preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.

The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.

Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places

### 실패한 점
-  group by된 상태에서  case when으로 1과 0으로 바꾼 후 바로 sum을 하려고 하니 각 그룹별로 적용이 되어서 내가 원하는 결과가 나오지 않음.
-  with문에서 인덱스를 명시해주니 속도가 더 빨라짐 . 
