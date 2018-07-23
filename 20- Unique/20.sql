USE SCHOOL
CREATE TABLE Person
(
  PersonId   INT PRIMARY KEY,
  IdentityNo VARCHAR(50) UNIQUE,
  Name       VARCHAR(50)
)--unique giúp cho trường đó là duy nhất

ALTER TABLE Person
    ADD CONSTRAINT UC_PersonId UNIQUE (PersonId)