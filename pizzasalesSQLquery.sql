select *
from pizzasales;

alter table `data model - pizza sales.xlsx - pizza_sales`
rename to pizzasales;

# Best selling pizza

select pizza_name as Best_selling_pizza,count(pizza_id) as unit_sold
from pizzasales
group by pizza_name
order by count(pizza_id) desc
limit 1
;

# Worst selling pizza

select pizza_name as Worst_selling_pizza,count(pizza_id) as unit_sold
from pizzasales
group by pizza_name
order by count(pizza_id) asc
limit 1;

# Total Revenue

select sum(total_price) as Total_Revenue_generated
from pizzasales;

# Average order value

select sum(total_price)/ count( distinct order_id) as Avearge_order_value
from pizzasales ;

# Total pizza sold
select sum(quantity) as Total_pizza_sold
from pizzasales;

# Total orders
select count(distinct order_id) as Total_orders
from pizzasales;

# Top pizza sold by category
select pizza_name,count(pizza_name) as top_pizza_sold
from pizzasales
group by pizza_name
order by count(pizza_name) desc
limit 5;

# Bottom 5 pizza sold by category
select pizza_name,count(pizza_name) as bottom_pizza_sold
from pizzasales
group by pizza_name
order by count(pizza_name) 
limit 5;

# Top 5 pizza sold by revenue
select pizza_name,sum(total_price) as Revenue
from pizzasales
group by pizza_name
order by sum(total_price) desc
limit 5;

# Bottom 5 pizza sold by revenue
select pizza_name,sum(total_price) as Revenue
from pizzasales
group by pizza_name
order by sum(total_price)
limit 5;