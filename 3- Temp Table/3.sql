use master
create database SCHOOL
use SCHOOL
CREATE TABLE Students
  (
    Id INT,
    [Name] NVARCHAR(50),
    DOB DATE,
    Gender BIT
  )
INSERT INTO Students (Id, Name, DOB, Gender) VALUES (1,'MRA','1996-04-30',1)
INSERT INTO Students (Id, Name, DOB, Gender) VALUES (2,'MRA2','1996-04-30',0)
INSERT INTO Students (Id, Name, DOB, Gender) VALUES (3,'MRA3','1996-04-30',0)
INSERT INTO Students (Id, Name, DOB, Gender) VALUES (4,'MRA4','1996-04-30',1)
SELECT Name,DOB FROM Students
SELECT * INTO Students1 FROM Students
SELECT * FROM Students1
TRUNCATE TABLE Students1

INSERT INTO Students1 SELECT * FROM Students


CREATE TABLE #sample_temp
(
  ID INT,
  Name NVARCHAR(50),
)
SELECT * FROM #sample_temp
INSERT INTO [#sample_temp](ID, Name) VALUES (1, 'MRA')

CREATE TABLE ##sample_temp
(
  ID INT,
  Name NVARCHAR(50)
)