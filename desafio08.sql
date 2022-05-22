SELECT
C.ContactName AS 'Nome de contato',
S.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS C
JOIN w3schools.shippers AS S
JOIN w3schools.orders AS O
ON O.ShipperID = S.ShipperID AND
O.CustomerID = C.CustomerID
WHERE S.ShipperID IN (1, 2)
ORDER BY 1, 2, 3
;
