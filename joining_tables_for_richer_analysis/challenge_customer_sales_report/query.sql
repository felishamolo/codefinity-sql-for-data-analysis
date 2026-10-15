select c.first_name, c.last_name, s.quantity
from customers c
JOIN sales s ON s.customer_id = c.customer_id;