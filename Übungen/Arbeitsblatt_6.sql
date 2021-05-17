# 1. Zeigen Sie alle Produkte, deren Einzelpreis (Unitprice) mindestens 50 beträgt.

SELECT Products.ProductID, Products.ProductName, Products.UnitPrice FROM Products
WHERE Products.UnitPrice >= 50;


# 2. Wie viele Bestellungen gab es im Jahr 1996?

SELECT COUNT(OrderDate) AS 'Bestellungen' FROM Orders
WHERE YEAR(OrderDate) = 1996


# 3. Welche Artikel müssen nachbestellt werden?

SELECT * FROM Products
WHERE (UnitsInStock + UnitsOnOrder) <= ReorderLevel
AND Discontinued = 0


# 4. Berechnen Sie den Gesamtumsatz der Bestellungen für das Jahr 1997.

SELECT SUM(OrderTotal) AS 'Gesamtumsatz' FROM (
    SELECT Orders.OrderDate, Orders.OrderID, SUM(Order_Details.UnitPrice * Order_Details.Quantity * (1 - Order_Details.Discount)) AS 'OrderTotal' FROM Orders
    JOIN Order_Details ON Orders.OrderID = Order_Details.OrderID
    WHERE YEAR(Orders.OrderDate) = '1997'
    GROUP BY OrderID
) AS Orders1997


# 5. Wie Aufgabe 4, nur soll jetzt der Gesamtumsatz der Bestellun¬gen für jedes Jahr erstellt werden.

SELECT YEAR(OrderDate) AS 'Jahr', SUM(OrderTotal) AS 'Gesamtumsatz' FROM (
    SELECT Orders.OrderDate, Orders.OrderID, SUM(Order_Details.UnitPrice * Order_Details.Quantity * (1 - Order_Details.Discount)) AS 'OrderTotal' FROM Orders
    JOIN Order_Details ON Orders.OrderID = Order_Details.OrderID
    GROUP BY OrderID
) AS OrdersAcc
GROUP BY YEAR(OrderDate)

# 6. Erstellen Sie eine Liste mit den 20 Produkten, die am häufigsten verkauft wurden.

SELECT ProductID, SUM(Quantity) AS 'Quantity' FROM Order_Details
GROUP BY ProductID
ORDER BY Quantity DESC
LIMIT 20
