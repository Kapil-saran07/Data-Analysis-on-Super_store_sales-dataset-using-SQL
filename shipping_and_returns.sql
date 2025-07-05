--Average delivery time: ship_date - order_date
--Which shipping modes cost more / cause delays?
select 
	ship_mode,
	round((avg(ship_date - order_date)),0) as avg_delivery_time
from superstore_sales
group by ship_mode;
