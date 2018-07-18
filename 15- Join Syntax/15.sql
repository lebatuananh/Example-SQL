USE [C:\DOCUMENTS AND SETTINGS\FABRICE\APPLICATION DATA\LINQPAD\SAMPLES\LINQ IN ACTION\NORTHWND.MDF]
SELECT
  p.ProductName,
  p.UnitPrice,
  S2.CompanyName
FROM Products p LEFT JOIN Suppliers S2 on p.SupplierID = S2.SupplierID
--Products -> Suppliers
-- Đảm báo tất cả dữ liệu trong bảng trái nếu không có dữ liệu trùng thì sẽ là NULL

SELECT
  p.ProductName,
  p.UnitPrice,
  S2.CompanyName
FROM Products p RIGHT JOIN Suppliers S2 on p.SupplierID = S2.SupplierID
ORDER BY p.UnitPrice

SELECT
  p.ProductName,
  p.UnitPrice,
  S2.CompanyName
FROM Products p FULL JOIN Suppliers S2 on p.SupplierID = S2.SupplierID
ORDER BY p.UnitPrice

SELECT *
FROM Suppliers
SELECT *
FROM Products

--Self Join
SELECT
  s1.CompanyName as CompanyName1,
  s1.City
FROM Suppliers s1, Suppliers s2
WHERE s1.City = s2.City AND s1.SupplierID != s2.SupplierID

--Cross Join
SELECT * FROM Suppliers CROSS JOIN Products
SELECT COUNT(*) FROM Suppliers CROSS JOIN Products