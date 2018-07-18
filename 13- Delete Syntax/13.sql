USE [C:\DOCUMENTS AND SETTINGS\FABRICE\APPLICATION DATA\LINQPAD\SAMPLES\LINQ IN ACTION\NORTHWND.MDF]
SELECT *
FROM Suppliers

INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, HomePage)
values ('Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', 'London', 'NSW', 'UK',
  '(171) 555-2222', '(313) 555-3349', '#CAJUN.HTM#')
DELETE FROM Suppliers
WHERE SupplierID=30

