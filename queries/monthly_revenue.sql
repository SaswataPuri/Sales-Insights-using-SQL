--Monthly revenue from shipped and delivered orders
SELECT 
    strftime('%Y-%m', o.order_date) AS month,
    COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS monthly_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status IN ('Shipped', 'Delivered')
GROUP BY strftime('%Y-%m', o.order_date)
ORDER BY strftime('%Y-%m', o.order_date);