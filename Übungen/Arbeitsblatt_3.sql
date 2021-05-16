# 1. Schreiben Sie eine Abfrage, die Ihnen alle Kundennamen (Comapynname) ausgibt, die eine Bestellung aufgegeben habenm die von der Versandfirma 'Speedy Express' ausgeliefert wurde.

SELECT customers.CompanyName
FROM (( customers JOIN orders ON customers.CustomerID = orders.CustomerID)
JOIN shippers ON orders.ShipVia = shippers.ShipperID)
WHERE shippers.CompanyName = 'Speedy Express';


# 2. Welche Produkte hat der Kunde 'Richter Supermarkt' schon bestellt?

SELECT *
FROM (((products JOIN order_details ON order_details.ProductID = products.ProductID)
JOIN orders ON order_details.OrderID = orders.OrderID)
JOIN customers ON orders.CustomerID = customers.CustomerID)
WHERE customers.CompanyName = 'Richter Supermarkt';


# 3. Welche Kunden haben schon Prdukute des Lieferanten 'Escargots Nouveaux' bestellt.

SELECT *
FROM ((((customers JOIN orders ON orders.CustomerID = customers.CustomerID)
JOIN order_details ON order_details.OrderID = orders.OrderID)
JOIN products ON products.ProductID = order_details.ProductID)
JOIN suppliers ON suppliers.SupplierID = products.SupplierID)
WHERE suppliers.CompanyName = 'Escargots Nouveaux';


# 4. Sind alle Produkte der Bestellung 'Rattlesnake Canyon Grocery' vom '06.05.1998' in ausreichender Anzahl auf Lager?

SELECT products.ProductName, products.UnitsInStock, order_details.Quantity
FROM (((products JOIN order_details ON products.ProductID = order_details.ProductID)
JOIN orders ON orders.OrderID = order_details.OrderID)
JOIN customers ON customers.CustomerID = orders.CustomerID)
WHERE orders.OrderDate = '1998-05-06'
AND customers.CompanyName = 'Rattlesnake Canyon Grocery'
AND order_details.Quantity <= products.UnitsInStock;
