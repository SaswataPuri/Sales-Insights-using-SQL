--Total revenue per product from delivered and shipped orders
SELECT 
    p.product_name,
    COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS total_revenue
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
LEFT JOIN orders o ON oi.order_id = o.order_id
WHERE o.status IN ('Delivered', 'Shipped') OR o.order_id IS NULL
GROUP BY p.product_name
ORDER BY total_revenue DESC;