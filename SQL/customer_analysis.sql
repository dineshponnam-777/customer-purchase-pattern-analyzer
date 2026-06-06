USE Customer_analytics;
SELECT SUM(total_purchase_value) AS total_revenue
FROM customer_purchase_data;
SELECT product_category,
SUM(total_purchase_value) AS revenue
FROM customer_purchase_data
GROUP BY product_category
ORDER BY revenue DESC;
SELECT region,
SUM(total_purchase_value) AS revenue
FROM customer_purchase_data
GROUP BY region
ORDER BY revenue DESC;
SELECT customer_name,
SUM(total_purchase_value) AS total_spent
FROM customer_purchase_data
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;
SELECT payment_method,
COUNT(*) AS usage_count
FROM customer_purchase_data
GROUP BY payment_method
ORDER BY usage_count DESC;
SELECT purchase_frequency,
COUNT(*) AS customers
FROM customer_purchase_data
GROUP BY purchase_frequency;
SELECT MONTHNAME(purchase_date) AS month_name,
SUM(total_purchase_value) AS revenue
FROM customer_purchase_data
GROUP BY MONTH(purchase_date), MONTHNAME(purchase_date)
ORDER BY MONTH(purchase_date);
SELECT customer_segment,
SUM(total_purchase_value) AS revenue
FROM customer_purchase_data
GROUP BY customer_segment
ORDER BY revenue DESC;
SELECT ROUND(AVG(total_purchase_value),2) AS avg_order_value
FROM customer_purchase_data;
SELECT purchase_frequency,
COUNT(customer_id) AS customer_count
FROM customer_purchase_data
GROUP BY purchase_frequency;