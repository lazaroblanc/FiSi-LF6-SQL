# 1. Schreiben Sie eine Abfrage, die die Summe des Warenbestandes (UnitsInStock)
# der Produkte mit der Kategorie ID 7 ausgibt.

SELECT SUM(products.UnitsInStock) AS "Summe"
FROM products
WHERE	products.CategoryID = 7;

# 2. Schreiben Sie eine Abfrage, die die Summe des Warenbestandes (UnitsInStock)
# der Produkte für jede einzelne CategoryId anzeigt

SELECT products.CategoryID, SUM(products.UnitsInStock) AS "Summe"
FROM products
GROUP BY products.CategoryID;

# 3. Kein NULL in den Ergebnissen

SELECT products.CategoryID, SUM(products.UnitsInStock) AS "Summe"
FROM products
GROUP BY products.CategoryID
HAVING products.CategoryID > 0;