SELECT * FROM pizza_sales

SELECT DATENAME(DW, order_date) as order_day,
COUNT(DISTINCT order_id) as Total_orders
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)