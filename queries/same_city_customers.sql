--Customers from the same city who bought the same product
SELECT DISTINCT
    c1.name AS customer1,
    c2.name AS customer2,
    p.product_name,
    c1.city
FROM customers c1
JOIN orders o1 ON c1.customer_id = o1.customer_id
JOIN order_items oi1 ON o1.order_id = oi1.order_id
JOIN products p ON oi1.product_id = p.product_id
JOIN order_items oi2 ON p.product_id = oi2.product_id
JOIN orders o2 ON oi2.order_id = o2.order_id
JOIN customers c2 ON o2.customer_id = c2.customer_id
WHERE c1.city = c2.city 
    AND c1.customer_id < c2.customer_id 
    AND o1.status = 'Delivered' 
    AND o2.status = 'Delivered'
ORDER BY c1.city, p.product_name, c1.name;