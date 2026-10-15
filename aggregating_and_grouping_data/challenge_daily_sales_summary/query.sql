select sale_date, count(*) as sales_count
from sales
group by (sale_date)
having count(*) > 2;