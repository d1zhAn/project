select* from customers_clean
select * from orders_clean
select * from products_clean
select * from payments_clean
select * from items_clean

--checking to duplicates 
select order_id, count(*) as dup
from orders_clean
group by order_id
having count(*) > 1;

--order status (delivered, canceled)
select order_status, count(*) as cnt
from orders_clean 
group by order_status
order by cnt desc 

--checking avg,min,max delivery days 
select 
	avg(delivery_days) as avg_delivary_days,
	min(delivery_days) as min_delivary_days,
	max(delivery_days) as max_delivary_days
from orders_clean
where order_status = 'delivered' and delivery_days != 0
--min 1, avg 12 and max 209

--which days are more popular to order
select 
	datepart(weekday, order_purchase_timestamp) as weekday,
	count(*) as orders
from orders_clean
group by datepart(weekday, order_purchase_timestamp)
order by orders desc 
--tuesday

--the same with hours 
select 
	datepart(hour, order_purchase_timestamp) as weekday,
	count(*) as orders
from orders_clean
group by datepart(hour, order_purchase_timestamp)
order by orders desc 
--early morning and after midnight most quiet to orders

--how many orders was delivered at time and late?
select 
	case 
		when order_delivered_customer_date <= order_estimated_delivery_date then 'on_time'
		else 'late'
	end as delivered_status,
	count(*) as orders
from orders_clean
where order_status = 'delivered'
group by
	case 
		when order_delivered_customer_date <= order_estimated_delivery_date then 'on_time'
		else 'late'
	end
-- (late - 7822, on time - 88468)

--ordeers by month and years
select 
	year(order_purchase_timestamp) as yr,
	month(order_purchase_timestamp) as mnt,
	count(*) as orders 
from orders_clean
group by year(order_purchase_timestamp), month(order_purchase_timestamp)
order by yr, mnt 
--the most orders in time period end of 2017 and begining of 2018

--how many orders did each client ? 
select 
	customer_id,
	count(order_id) as orders,
    min(order_purchase_timestamp) as first_order,
    max(order_purchase_timestamp) as last_order
from orders_clean 
group by customer_id 
order by orders desc
--each client have 1 order 

--orders where delivery took more than 90 days 
select delivery_days
from orders_clean 
where order_status = 'delivered' and 
datediff(day, order_purchase_timestamp, order_delivered_customer_date) > 90
--77 orders 

--orders by product category
select p.product_category_name, count(*) as orders 
from orders_clean o 
join items_clean i on o.order_id = i.order_id
join products_clean p on i.product_id = p.product_id
group by p.product_category_name
order by orders desc
