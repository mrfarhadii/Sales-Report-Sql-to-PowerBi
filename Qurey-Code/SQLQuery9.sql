
SELECT * FROM pizza_sales
SELECT pizza_category,sum(total_price) AS total_sales,
sum(total_price) * 100 / (SELECT sum(total_price) from pizza_sales) AS PCT

from pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_category