-- Write your query below




select 
    seller_name
from seller s where seller_id not in (
    select seller_id from orders o where EXTRACT(YEAR FROM o.sale_date) = 2020
) order by s.seller_name asc

