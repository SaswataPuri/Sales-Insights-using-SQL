--Summary of orders by status with total revenue
SELECT 
    o.status,
    COUNT(o.order_id) AS order_count,
    COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS total_revenue
FROM orders o
LEFT JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.status
ORDER BY total_revenue DESC;