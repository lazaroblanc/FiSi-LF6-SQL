# 1. Zeigen sie alle Informationendes Produktes mit dem Namen 'Teatime Chocolate Biscuits' an.

SELECT *
FROM products
WHERE ProductName = 'Teatime Chocolate Biscuits';


# 2. Wie lautet der 'CategoryName' des Produkts mit dem Namen 'Teatime Chocolate Biscuits'?

SELECT CategoryName, ProductName
FROM products, categories
WHERE categories.CategoryID = products.CategoryID AND products.ProductName = 'Teatime Chocolate Biscuits';


# 3. Erstellen Sie eine Abfrage die die Produktnummer zum Produktnamen 'Tofu' ausgibt.

SELECT ProductID
FROM products
WHERE products.ProductName = 'Tofu';


# 4. Vom welchen Lieferanten (CompanyName) wird das Prdukt mit dem Produktnamen 'Tofu' geliefert?

SELECT ProductID, CompanyName
FROM products, suppliers
WHERE products.ProductName = 'Tofu' AND suppliers.SupplierID = products.SupplierID;


# 5. Üer welche Versandfirma (CompanyName) wurde die Bestellung mit der Bestellnummer 10266 ausgeliefert?

SELECT OrderID, CompanyName
FROM orders, shippers
WHERE orders.OrderID = 10266 AND orders.ShipVia = shippers.ShipperID;


# 6. Welcher Mitarbeiter ist für die Bestellung mit der Nummer 10266 zuständig? Bitte geben Sie Vor- und Nachnamen aus.

SELECT OrderID, employees.EmployeeID
FROM orders, employees
WHERE orders.OrderID = 10266 AND orders.EmployeeID = employees.EmployeeID;
