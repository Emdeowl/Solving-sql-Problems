-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
-- Occupation에서 첫 글자를 따서 concat으로 연결
-- union으로 붙이는 게 아닌 ; 세미클론으로 각각의 쿼리를 따로 취금. 한 테이블로 만들지 말기
-- 마지막에 보면 s.을 써야 풀리더라 어쩐지 

(SELECT
    concat(name,'(',left(OCCUPATION ,1) ,')')
FROM
    OCCUPATIONS 
order by
    name asc);


(
select
   concat('There are a total of ' ,count(OCCUPATION) ," ",lower(OCCUPATION),'s.')
from
    OCCUPATIONS
group by
    occupation
order by
 count(OCCUPATION) asc );