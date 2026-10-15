select *
from products p
join sales s ON s.product_id = p.product_id
where s.quantity is NULL