-- who are top customers by sales 
SELECT 
  distinct customer_id,
  customer_name,
  SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY customer_id, customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- How many unique customers do you have by region?
select 
	region,
	count(customer_id) Number_customers
from superstore_sales
group by region
order by number_customers desc;


select * from superstore_sales;