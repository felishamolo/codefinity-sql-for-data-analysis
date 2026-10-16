select c.customer_id, c.first_name, c.last_name, sum(s.quantity) as total_quantity
from customers c
join sales s ON s.customer_id = c.customer_id
group by c.customer_id
having sum(s.quantity) > (
    select avg(customer_total)
    from (
    select sum(quantity) as customer_total
    from sales
    group by customer_id) as customer_totals);