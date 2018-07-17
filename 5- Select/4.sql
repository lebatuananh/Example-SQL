USE [E:\PROJETS\LINQ IN ACTION\CONTENT\CODE\LINQINACTION\DATA\LIA.MDF]
SELECT * FROM Author
SELECT * FROM BookAuthor
SELECT * FROM Publisher
SELECT * FROM Subject
SELECT * FROM [User]
SELECT * FROM Review
SELECT * FROM Book where Price>20 AND Price<30
SELECT * FROM Book ORDER BY Book.Price DESC
SELECT * FROM Book ORDER BY Book.Price ASC

Use [C:\DOCUMENTS AND SETTINGS\FABRICE\APPLICATION DATA\LINQPAD\SAMPLES\LINQ IN ACTION\NORTHWND.MDF]
SELECT Contacts.ContactName,ContactType FROM Contacts
SELECT DISTINCT ContactType FROM Contacts --loại bỏ giá trị trùng nhau

SELECT TOP 10 * FROM Contacts ORDER BY ContactName ASC
SELECT * FROM Products
SELECT min(UnitPrice) AS MinPrice FROM Products
SELECT max(UnitPrice) FROM Products
SELECT * FROM Products
UNION --union Lấy các bản ghi khác nhau của 2 bảng, union all lấy tất cả bản ghi của 2 bảng
SELECT * FROM Products
UPDATE Contacts SET City=NULL WHERE ContactID=133

SELECT City,ISNULL(City,'No Unit') FROM Contacts ORDER BY City

