/*
    서브쿼리를 잘 써야하는 문제

    (select
        name,
        (select   grade  from grades where min_mark <= marks and marks <= max_mark) as Grade,
        marks
    from   
        students) 에서 처음 실행되는 건 FROM절이라서 Students의 Marks를 사용할 수 있다.
        이를 통해 marks와 min,max_mark를 비교하여 우리의 grade를 정하고
        이를 다시 From절에 넣어서 NULL인 조건을 걸어준다.
        

*/




select
    IF (Grade >= 8, name,NULL),
    Grade,
    marks
from 
    (select
        name,
        (select   grade  from grades where min_mark <= marks and marks <= max_mark) as Grade,
        marks
    from   
        students)aa
order by
    Grade desc,name