-- 1341. Movie Rating
-- 가장 많은 영화를 평가한 사용자의 이름을 찾습니다. 동점인 경우 사전적으로 더 작은 사용자 이름을 반환합니다. 2020년 2월 평균 평점이 가장 높은 영화 이름 찾기. 동점인 경우 사전적으로 더 작은 영화 이름을 반환합니다.

with user_cnt as (
    select
        count(u.user_id) as user_cnt , u.name
    from
        movierating as mvr
    join
        movies as m  on mvr.movie_id = m.movie_id
    join
        users as u on mvr.user_id = u.user_id
    group by
        u.user_id
    order by 
        user_cnt desc, name asc
    limit 1
), movie_avg_rating as (
    select
        avg(mvr.rating) as avg_mv , m.title    
    from
        movierating as mvr
    join
        movies as m  on mvr.movie_id = m.movie_id
    join
        users as u on mvr.user_id = u.user_id
    where
        date_format(mvr.created_at,'%Y-%m') = '2020-02'
    group by
        mvr.movie_id 
    order by 
        avg_mv desc, m.title    asc
    limit 1
)


select
    name as results
from
    user_cnt

union all

select
    title as results
from
    movie_avg_rating

--https://leetcode.com/problems/movie-rating/description/