--  596. Classes More Than 5 Students
-- https://leetcode.com/problems/classes-more-than-5-students/description/

SELECT
    Class
FROM 
    Courses
GROUP BY
    class
HAVING
    count(class) >= 5


--  매우 쉬움