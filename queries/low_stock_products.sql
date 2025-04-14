--Products with low stock (less than 20 units)
SELECT 
    product_name,
    stock_quantity,
    category
FROM products
WHERE stock_quantity < 20
ORDER BY stock_quantity ASC;