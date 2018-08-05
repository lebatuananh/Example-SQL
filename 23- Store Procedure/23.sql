USE [C:\DOCUMENTS AND SETTINGS\FABRICE\APPLICATION DATA\LINQPAD\SAMPLES\LINQ IN ACTION\NORTHWND.MDF]

ALTER PROCEDURE usp_MakeOrder
  @productId INT,
  @oderid INT
AS
  BEGIN
    SELECT *FROM Products WHERE ProductID=@productId
    SELECT * FROM Orders WHERE OrderID=@oderid
  END

EXEC usp_MakeOrder 1,10248
SELECT * FROM Orders

ALTER PROC usp_GetOrderPaging
  @pageIndex INT,
  @pageSize INT,
  @totalRow INT OUTPUT
  AS
BEGIN
  SELECT @totalRow = COUNT(*) FROM Orders
  SELECT * FROM (
  SELECT RowNumer=ROW_NUMBER() OVER (ORDER BY OrderID),* FROM Orders
    )As od WHERE RowNumer > (@pageSize*(@pageIndex-1))
  AND RowNumer <= (@pageSize*(@pageIndex-1))+ @pageSize
END

DECLARE @totalRow INT
EXEC usp_GetOrderPaging 1,800,@totalRow OUTPUT
SELECT @totalRow AS TotalRow


