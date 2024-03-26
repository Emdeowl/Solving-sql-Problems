# 2019-08-16에 모든 제품의 가격을 찾을 수 있는 솔루션을 작성합니다. 변경하기 전에 모든 제품의 가격을 10으로 가정하십시오.
select
    product_id, 10 as price
from
    Products
where
   product_id  not in ( select   product_id from Products where change_date <= '2019-08-16')

 
 # 기준 날짜 이전의 product_id들은 변경이 된 product_id이므로 이들의 중복되는 id를 제거하고 => 변경하기 전에는 모든 제품은 10으로 가정하기 위해서 필터링하는 과정

 union 


select
    product_id, new_price as price
from
    Products
where
   (product_id,change_date)   in ( select   product_id,max(change_date) from Products where change_date <= '2019-08-16' group by product_id )

# 기준 날짜로 부터 그전에 변경된  product_id를 얻는데, group 된  product_id에서 가장 최근의 날짜를 얻어야 그게 맞는  price를 얻을 수 있다.