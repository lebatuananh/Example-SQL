-- CREATE DATABASE [test]
-- USE [test1] DROP DATABASE [test1]
-- ALTER DATABASE [test] MODIFY NAME =[test1]
-- USE master
-- DROP DATABASE test1
-- CREATE DATABASE test2
-- -- USE master
-- -- DROP DATABASE test2

--Create Database Advance
/*CREATE DATABASE sales
  ON
  (
    NAME =SALES_DATA,
    FILENAME ='D:\DATABASE\sales.mdf',
    SIZE =10MB ,
    MAXSIZE =50MB ,
    FILEGROWTH =5MB

  )
  LOG ON
  (
    NAME =SALES_LOG,
    FILENAME ='D:\DATABASE\sales.ldf',
    SIZE =10MB ,
    MAXSIZE =50MB ,
    FILEGROWTH =5MB
  )*/
/*USE master
go DROP DATABASE sales*/