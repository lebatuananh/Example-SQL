USE [C:\DOCUMENTS AND SETTINGS\FABRICE\APPLICATION DATA\LINQPAD\SAMPLES\LINQ IN ACTION\NORTHWND.MDF]
SELECT *
FROM Customers
WHERE Country IN ('Mexico', 'UK')
ORDER BY Country

SELECT *
FROM Customers
WHERE Country IN (SELECT Country
                  FROM Suppliers)
ORDER BY Country

SELECT *
FROM Products
WHERE UnitPrice BETWEEN 10 AND 20
ORDER BY UnitPrice ASC

SELECT
  ProductName,
  SupplierID
FROM Products
WHERE EXISTS(SELECT ProductName
             FROM Suppliers
             WHERE Suppliers.SupplierID = Products.SupplierID)
ORDER BY SupplierID
--so sánh cả 1 bản ghi

SELECT *
FROM Suppliers
SELECT *
FROM Products
ORDER BY SupplierID

SELECT *
FROM [Order Details]

SELECT *
FROM Products
WHERE ProductID = ANY (SELECT ProductID
                       FROM [Order Details]
                       WHERE Quantity > 10)
--so sánh 1 cột

SELECT *
FROM [Order Details]
WHERE ProductID = ALL (SELECT ProductID
                       FROM Products)
--so sánh tất cả bản ghi trong Product xem có trùng trong Oder Details không