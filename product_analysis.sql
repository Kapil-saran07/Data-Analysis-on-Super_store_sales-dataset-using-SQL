-- Which categories and sub-categories perform best?
select 
	--category,
	distinct sub_category,
	sum(sales) as total_sales,
	sum(profit) as total_profit
from superstore_sales
group by sub_category
order by total_sales desc,total_profit desc;
-- In sub_category storage has highest sales and chairs has highest profit




-- Which products sub_category have low profit margins or negative profit?
select 
	sub_category,
	round(
    (sum(profit) / sum(sales) * 100)::numeric, 
    2
  ) AS profit_margin_percent
from superstore_sales
group by sub_category
order by profit_margin_percent desc;
-- phones in product sub_category has lowest profit margin percent




-- which product category is do high sales by year
SELECT 
  EXTRACT(YEAR FROM order_date) AS year,
  category,
  SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY year, category
ORDER BY year, total_sales DESC;
-- In year 2023 Furniture and in 2024 office supplies category have high sales respectively