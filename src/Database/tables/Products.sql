﻿CREATE TABLE dbo.Products
(
	Id INT IDENTITY(1, 1) NOT NULL CONSTRAINT PK_Products PRIMARY KEY,
	Name NVARCHAR(50) NOT NULL CONSTRAINT UK_Products_Name UNIQUE,
	Description NVARCHAR(255) NOT NULL,
	Category NVARCHAR(255) NOT NULL CONSTRAINT DF_Products_Category DEFAULT 'Rocket Plugin',
	GithubUrl NVARCHAR(255) NULL,
	ImageId INT NOT NULL CONSTRAINT FK_Images_ImageId FOREIGN KEY REFERENCES dbo.Images(Id),
	Price DECIMAL(9,2) NOT NULL,
	SellerId INT NOT NULL CONSTRAINT FK_Products_SellerId FOREIGN KEY REFERENCES dbo.Users(Id),
	AdminId INT NULL CONSTRAINT FK_Products_AdminId FOREIGN KEY REFERENCES dbo.Users(Id),
	Status INT NOT NULL CONSTRAINT DF_Products_Status DEFAULT 0,
	StatusUpdateDate DATETIME2(0) NOT NULL CONSTRAINT DF_Products_StatusUpdateDate DEFAULT SYSDATETIME(),
	IsLoaderEnabled BIT NOT NULL CONSTRAINT DF_Products_IsLoaderEnabled DEFAULT 0,
	IsEnabled BIT NOT NULL CONSTRAINT DF_Products_IsEnabled DEFAULT 0,
	LastUpdate DATETIME2(0) CONSTRAINT DF_Products_LastUpdate DEFAULT SYSDATETIME(),
	CreateDate DATETIME2(0) CONSTRAINT DF_Products_CreateDate DEFAULT SYSDATETIME()
)
