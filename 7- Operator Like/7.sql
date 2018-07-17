USE [C:\DOCUMENTS AND SETTINGS\FABRICE\APPLICATION DATA\LINQPAD\SAMPLES\LINQ IN ACTION\NORTHWND.MDF]
SELECT ProductName FROM Products WHERE ProductName LIKE 'a%'
SELECT ProductName FROM Products WHERE ProductName LIKE '%a'
SELECT ProductName FROM Products WHERE ProductName LIKE '%h%' ORDER BY ProductName
SELECT ProductName FROM Products WHERE ProductName LIKE '_e%' ORDER BY ProductName
SELECT ProductName FROM Products WHERE ProductName LIKE 'a_%_%' ORDER BY ProductName
SELECT ProductName FROM Products WHERE ProductName NOT LIKE 'a%p' ORDER BY ProductName