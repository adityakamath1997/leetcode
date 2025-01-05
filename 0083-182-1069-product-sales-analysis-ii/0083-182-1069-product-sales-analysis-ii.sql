SELECT p.product_id, SUM(s.quantity) as total_quantity
FROM Sales s
INNER JOIN Product p
ON s.product_id=p.product_id
GROUP BY p.product_id
