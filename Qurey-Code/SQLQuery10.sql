SELECT * FROM pizza_sales
SELECT pizza_size,CAST(sum(total_price) AS DECIMAL(10,2)) AS total_sales,
CAST(sum(total_price) * 100 / (SELECT sum(total_price) from pizza_sales)  AS DECIMAL(10, 2)) AS PCT
from pizza_sales
WHERE DATEPART(quarter, order_date) = 1
GROUP BY pizza_size
ORDER BY PCT DESC