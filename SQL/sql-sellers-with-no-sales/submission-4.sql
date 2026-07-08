-- Write your query below


select 
    seller_name
from seller s
left join orders o on s.seller_id = o.seller_id
and o.sale_date >= '2020-01-01' and o.sale_date < '2021-01-01'
where o.seller_id IS NULL order by s.seller_name




