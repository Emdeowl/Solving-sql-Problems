/*
https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true
*/

select n,
    case when  isnull(p) then 'Root'
            when n not in (select  p from bst  where p is not null)then 'Leaf'
            else 'Inner' end 
from    
    BST
order by
    n
