# 1. Ermitteln Sie den Namen zum Produkt mit der ProduktID = 7.

SELECT products.ProductName
FROM products
WHERE products.ProductID = 7;


# 2. Ermitteln Sie den Namen der Kategorie zum obigen Produkt mit der ProduktID = 7.

SELECT categories.CategoryName
FROM products
JOIN categories ON products.CategoryID = categories.CategoryID
WHERE products.ProductID = 7;


# 3. Geben Sie alle Produkte aus, deren Preis größer als 100 ist.

SELECT *
FROM products
WHERE products.UnitPrice > 100;


# 4. Ermitteln Sie für jedes Produkt die Summe des Lagerbestandes.

SELECT products.ProductName, products.UnitsInStock
FROM products;


# 5. Wie viele Produkte existieren überhaupt? Hinweis: Es ist nicht der Lagerbestand gemeint.

SELECT Count(products.ProductID)
FROM products;


# 6. Ermitteln Sie für jede Kategorie die Anzahl der zugehörigen Produkte.

SELECT categories.CategoryID, categories.CategoryName, COUNT(products.ProductID)
FROM categories
JOIN products ON categories.CategoryID = products.CategoryID
GROUP BY categories.CategoryID;


# 7. Geben Sie die Anzahl der verkauften Produkte pro Hersteller (supplier) aus,
# wenn der Hersteller weniger als 1000 Einheiten verkauft hat.

SELECT suppliers.CompanyName, SUM(order_details.Quantity) AS `Anzahl`
FROM order_details
JOIN products ON order_details.ProductID = products.ProductID
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
GROUP BY suppliers.SupplierID
HAVING `Anzahl` < 1000;
