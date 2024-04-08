-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
-- 삼각형의 조건을 고려안함 ㄷㄷ...
select (
    case 
        when not (a + b > c and b + c > a and c + a > b) then "Not A Triangle"
        when a = b and b = c then "Equilateral"
        when a = b or b = c or c = a then "Isosceles"
else "Scalene" end) 
from TRIANGLES 