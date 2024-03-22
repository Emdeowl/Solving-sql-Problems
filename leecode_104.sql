#619. Biggest Single Number
# https://leetcode.com/problems/biggest-single-number/
select 
    max(num) as num
from 
    mynumbers
where num in (SELECT
                            MAX(num) as num 
                        FROM
                            MyNumbers
                        GROUP BY
                            num
                        HAVING
                            count(num) = 1)