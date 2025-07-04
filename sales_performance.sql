select * from superstore_sales;

-- Total and profit by months 
select 
	to_char(order_date,'MONTH') as month,
	sum(sales) as total_sales,
	sum(profit) as total_profit
from superstore_sales
group by extract(month from order_date),month
order by extract(month from order_date);

-- Which categories and sub-categories perform best?
select 
	--category,
	distinct sub_category,
	sum(sales) as total_sales,
	sum(profit) as total_profit
from superstore_sales
group by sub_category
order by total_sales desc,total_profit desc;

-- Which regions/states have highest sales?
select 
	state,
	region,
	max(sales) as highest_sales,
	max(profit) as highest_profit
from superstore_sales
group by region,state
order by region
limit 20;