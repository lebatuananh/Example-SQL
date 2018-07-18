USE [C:\DOCUMENTS AND SETTINGS\FABRICE\APPLICATION DATA\LINQPAD\SAMPLES\LINQ IN ACTION\NORTHWND.MDF]

SELECT *
FROM ContactNameSplit where ID=134
INSERT INTO ContactNameSplit (ID, Name, Title, Fax, ContactType) values
  (134, 'Mr. Ronaldo', 'Sales Representative','(016) 33355553','Supplier')