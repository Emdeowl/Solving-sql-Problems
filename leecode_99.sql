# 2356. Number of Unique Subjects Taught by Each Teacher

SELECT
    teacher_id,
    count(distinct subject_id) as cnt
FROM
    Teacher
GROUP BY
    teacher_id