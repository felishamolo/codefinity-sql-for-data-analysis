select c.city, count(s.sale_id) as sales_count
from sales s
join customers c ON s.customer_id = c.customer_id
group by c.city;