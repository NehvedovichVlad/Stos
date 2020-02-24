CREATE DATABASE STOS
COLLATE Cyrillic_General_CI_AS
GO
CREATE TABLE Users
(
id int NOT NULL IDENTITY,
username nvarchar (20) NOT NULL,
pasword nvarchar (20) NOT NULL,
first_name nvarchar(20) NOT NULL,
midle_name nvarchar(20) NOT NULL,
last_name nvarchar(20) NOT NULL,
photo nvarchar(100) NOT NULL,
phone char(12) NOT NULL,
email nvarchar(20) NOT NULL,
birth_date date NOT NULL,
create_time time NULL,
up_dates time NULL,
delete_time time NULL
)
GO

CREATE TABLE Roles
(
id int NOT NULL ,
name nvarchar (20) NOT NULL
)
GO

ALTER TABLE Users
ADD
PRIMARY KEY(id)
GO

ALTER TABLE Roles
ADD
UNIQUE(id)
GO

ALTER TABLE Roles
ADD
FOREIGN KEY(id) REFERENCES Users(id)
ON DELETE CASCADE
GO