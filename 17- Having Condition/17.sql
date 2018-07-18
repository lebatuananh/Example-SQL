USE [C:\DOCUMENTS AND SETTINGS\FABRICE\APPLICATION DATA\LINQPAD\SAMPLES\LINQ IN ACTION\NORTHWND.MDF]

SELECT *
FROM Orders

SELECT
  ProductName,
  ProductID
FROM Products
WHERE ProductName = 'Mishi Kobe Niku'
SELECT *
FROM [Order Details]
WHERE ProductID = 9

SELECT
  p.ProductName,
  COUNT(p.ProductID) AS Total
FROM Products p LEFT JOIN [Order Details] ON p.ProductID = [Order Details].ProductID
GROUP BY P.ProductName
HAVING COUNT(p.ProductID)=10
ORDER BY COUNT(p.ProductID)