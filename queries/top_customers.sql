--Top 3 customers by total spending on delivered orders
SELECT 
    c.name,
    COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'Delivered' OR o.order_id IS NULL
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 3;