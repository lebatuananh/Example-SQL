ALTER TABLE Students
    add Adress NVARCHAR(50)
ALTER TABLE Students
    ADD Province NVARCHAR(50),District NVARCHAR(50)
ALTER TABLE Students
    ALTER COLUMN Adress NVARCHAR(500)
ALTER TABLE Students
    DROP COLUMN Adress
sp_rename 'Students.Adress','Address','Column'