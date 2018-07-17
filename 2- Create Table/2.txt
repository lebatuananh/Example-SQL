USE master
CREATE DATABASE SCHOOL
  USE SCHOOL
CREATE TABLE Students
  (
    Id INT,
    [Name] NVARCHAR(50),
    DOB DATE,
    Gender BIT
  )
  DROP TABLE Students
INSERT INTO Students (Id, Name, DOB, Gender) VALUES (1,'MRA','1996-04-30',1)
INSERT INTO Students (Id, Name, DOB, Gender) VALUES (2,'MRA2','1996-04-30',0)
INSERT INTO Students (Id, Name, DOB, Gender) VALUES (3,'MRA3','1996-04-30',0)
INSERT INTO Students (Id, Name, DOB, Gender) VALUES (4,'MRA4','1996-04-30',1)

SELECT * FROM dbo.Students
SELECT Name,DOB FROM dbo.Students
DELETE FROM Students --Vẫn giữ lại
TRUNCATE TABLE Students --Xoá index tự tăng và trả lại bộ nhớ cho SQL

DELETE FROM Students WHERE Gender=1
sp_rename 'Students1','Students'
SELECT * INTO Student FROM Students
SELECT * FROM Student