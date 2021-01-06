# 1. Schreiben Sie eine Abfrage, die Ihnen das Minimum des Warenbestandes (unitsinstock)
# aus der Tabelle products mit dem temporären Namen „Minimum“ ausgibt.
# Das Minimum soll größer als Null sein.

SELECT MIN(products.UnitsInStock) AS 'Minimum'
FROM products
WHERE products.UnitsInStock > 0;

# 2. Schreiben Sie eine Abfrage, die Ihnen das Maximum des Warenbestandes (unitsinstock)
# aus der Tabelle products mit dem temporären Namen „Maximum“ ausgibt.

SELECT MAX(products.UnitsInStock) AS 'Maximum'
FROM products;

# 3. Schreiben Sie eine Abfrage, die Ihnen den Durchschnitt des Warenbestandes (unitsinstock)
# aus der Tabelle products mit dem temporären Namen „Durchschnitt“ ausgibt.

SELECT AVG(products.UnitsInStock) AS 'Maximum'
FROM products;

# 4. Schreiben Sie eine Abfrage, die Ihnen die Anzahl der Zeilen der Spalte Warenbestand (unitsinstock)
# aus der Tabelle products mit dem temporären Namen „Anzahl“ ausgibt.

SELECT Count(products.UnitsInStock) AS 'Anzahl'
FROM products;

# 5. Schreiben Sie eine Abfrage, die Ihnen die Summe des Warenbestandes (unitsinstock)
# aus der Tabelle pro-ducts mit dem temporären Namen „Summe_Warenbe-stand“ ausgibt.

SELECT SUM(products.UnitsInStock) AS 'Summe_Warenbestand'
FROM products;