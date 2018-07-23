USE SCHOOL
CREATE TABLE Students2
(
  StudentId int PRIMARY KEY,
  Name      nvarchar(50),
  Age       int
)
ALTER TABLE Students2
  DROP CONSTRAINT PK__Students__32C52B991C2BE1C6

ALTER TABLE Students2
  ALTER COLUMN Name nvarchar(50) NOT NULL

ALTER TABLE Students2
  ADD CONSTRAINT PK_Students2_StudentId PRIMARY KEY (StudentId, Name)

--Nhiều khoá chính thì chỉ cần tổ hợp nó là duy nhất là được