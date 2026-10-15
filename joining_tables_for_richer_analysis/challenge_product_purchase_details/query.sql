select concat(c.first_name || ' ' || c.last_name) as customer_name,
    p.product_name,
    s.quantity
from customers c
join sales s ON s.customer_id = c.customer_id
join products p ON p.product_id = s.product_id
