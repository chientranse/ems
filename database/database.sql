--Recreate database
USE master
IF EXISTS(select * from sys.databases where name='EmsDB')
DROP DATABASE EmsDB

CREATE DATABASE EmsDB
GO

USE EmsDB

--Create tables
CREATE TABLE UserAccount(
	Username VARCHAR(50) PRIMARY KEY,
	PasswordHash VARCHAR(64),
	Email VARCHAR(50),
	Phone VARCHAR(12),
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	IsActive BIT NOT NULL DEFAULT 1
)

CREATE TABLE Company(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	CompanyName NVARCHAR(50) NOT NULL,
	CompanyAddress NVARCHAR(50),
	Phone VARCHAR(12),
	AdminUsername VARCHAR(50) FOREIGN KEY REFERENCES UserAccount(Username),
	IsActive BIT NOT NULL DEFAULT 1
)

--Insert data
----Table UserAccount
INSERT INTO UserAccount(Username, Email, Phone, FirstName, LastName)
VALUES('chientranse', 'chientranse@gmail.com', '+84934256513', 'Chien', 'Tran')

INSERT INTO UserAccount(Username, Email, Phone, FirstName, LastName)
VALUES('yeulaptrinh98', 'yeulaptrinh98@gmail.com', '+84706828466', 'Yeu', 'Trinh')

----Table Company
INSERT INTO Company(CompanyName, CompanyAddress, Phone, AdminUsername)
VALUES('TMA Solutions', '1 Mac Dinh Chi', '+84123456789', 'chientranse')

INSERT INTO Company(CompanyName, CompanyAddress, Phone, AdminUsername)
VALUES('FPT Software', '291 Dien Bien Phu', '+84123456798', 'yeulaptrinh98')