-- ¿Cuánto ha gastado en total cada cliente en el restaurante? -- 
SELECT SALES.CUSTOMER_ID, SUM(MENU.PRICE) AS TOTAL_GASTADO
FROM CASE01.SALES
INNER JOIN CASE01.MENU
ON SALES.PRODUCT_ID = MENU.PRODUCT_ID
GROUP BY SALES.CUSTOMER_ID;
