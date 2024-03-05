#620. Not Boring Movies

# https://leetcode.com/problems/not-boring-movies/

select
    *
from
    Cinema 
where 
    (id % 2 = 1 ) and ( description != 'boring')
order  by 
    rating desc