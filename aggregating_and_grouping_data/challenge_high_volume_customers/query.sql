select customer_id, sum(quantity) as total_quantity
from sales
group by customer_id
HAVING sum(quantity) > 5;