--  610. Triangle Judgement
--  x + y > z
-- x + z > y
-- y + z > x

select
    x,y,z,
    case when   ((x+y) > z and   x + z > y and y + z > x) then 'Yes' 
            else 'No' end as triangle
from
    Triangle   