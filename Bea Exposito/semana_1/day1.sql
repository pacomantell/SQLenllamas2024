--¿Cuánto ha gastado en total cada cliente en el restaurante?
SELECT sales.customer_id, SUM(menu.price) as total_gastado
FROM case01.sales
INNER JOIN case01.menu 
ON sales.product_id = menu.product_id
GROUP BY sales.customer_id
