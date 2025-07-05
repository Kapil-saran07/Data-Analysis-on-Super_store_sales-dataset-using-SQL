select * from superstore_sales;

-- Total and profit by months 
select 
	to_char(order_date,'MONTH') as month,
	sum(sales) as total_sales,
	sum(profit) as total_profit
from superstore_sales
group by extract(month from order_date),month
order by extract(month from order_date);




-- Which regions/states have highest sales?
select 
	state,
	region,
	sum(sales) as total_sales,
	sum(profit) as total_profit
from superstore_sales
group by region,state
order by total_sales desc
limit 5;
-- central region texas state has highest sales




-- order with high sales but negative profit
SELECT 
  order_id,
  product_name,
  sales,
  profit
FROM superstore_sales
WHERE profit < 0
ORDER BY sales DESC;
-- their are 22.6% negative profit records,but have high sales

