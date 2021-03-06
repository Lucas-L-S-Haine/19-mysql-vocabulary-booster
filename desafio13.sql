SELECT
P.ProductName AS 'Produto',
P.Price AS 'Preço'
FROM w3schools.products AS P
JOIN w3schools.order_details AS OD
ON P.ProductID = OD.ProductID
WHERE OD.Quantity > 80
ORDER BY ProductName ASC
;
