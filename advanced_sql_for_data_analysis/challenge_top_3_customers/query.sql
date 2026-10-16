select c.customer_id, c.first_name, c.last_name, 
    sum(s.quantity) as total_quantity, rank() over (order by sum(s.quantity) desc) as customer_rank
from customers c
join sales s ON s.customer_id = c.customer_id
group by c.customer_id
limit 3
