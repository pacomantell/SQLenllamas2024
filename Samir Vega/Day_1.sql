SELECT
    A.CUSTOMER_ID,
    SUM(PRICE)|| '€' AS GASTO_POR_CLIENTE
FROM SALES A
LEFT JOIN MENU B
    ON A.PRODUCT_ID = B.PRODUCT_ID
GROUP BY A.CUSTOMER_ID;