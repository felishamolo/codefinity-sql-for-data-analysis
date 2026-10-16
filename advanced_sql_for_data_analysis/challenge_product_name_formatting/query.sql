select *, upper(product_name) as product_name_upper, 
    substring(product_name, 0,4) as product_name_first3
from products

