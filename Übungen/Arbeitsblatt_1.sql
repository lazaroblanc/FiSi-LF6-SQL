# 1. Zeigen Sie alle Informationen der Mitarbeiter an, die den Nachnamen 'King' haben.

SELECT *
FROM employees
WHERE	LastName = 'King';


# 2. Zeigen Sie Vor- und Nachname der Mitarbeiter an, die den Nachnamen 'King' haben.

SELECT FirstName, LastName
FROM employees
WHERE	LastName = 'King';


# 3. Welcher Mitarbeiter hat am 08.12.1948 Geburtstag?

SELECT *
FROM employees
WHERE BirthDate = '1948-12-08';


# 4. Welche Mitarbeiter haben nach dem 08.12.1948 Geburtstag?

SELECT *
FROM employees
WHERE BirthDate > '1948-12-08';


# 5. Welche Mitarbeiternachnamen beginnen mit einem Buchstaben von 'A' bis 'H'

SELECT *
FROM employees
WHERE LastName REGEXP '^[A-H]';


# 6. Verändern Sie die Abfrage aus Teilaufgabe 5) so, dass das Egebnis der Anfrage aufsteigend nach der 'EmployeeID' sortiert wird.

SELECT *
FROM employees
WHERE LastName REGEXP '^[A-H]'
ORDER BY EmployeeID ASC;


# 7. Verändern Sie die Abfrage aus Teilaufgabe 5) so, dass das Egebnis der Anfrage abtsteigend nach der 'EmployeeID' sortiert wird.

SELECT *
FROM employees
WHERE LastName REGEXP '^[A-H]'
ORDER BY EmployeeID DESC;
