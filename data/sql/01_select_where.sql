-- totals
SELECT COUNT(*) AS orders, SUM(amount) AS revenue FROM orders;

-- top customers
SELECT customer_id, COUNT(*) n_orders, SUM(amount) revenue
FROM orders
GROUP BY 1
ORDER BY revenue DESC
LIMIT 5;
