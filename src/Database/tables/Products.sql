﻿CREATE TABLE dbo.Products
(
	Id INT IDENTITY(1, 1) NOT NULL CONSTRAINT PK_Products PRIMARY KEY,
	Name NVARCHAR(50) NOT NULL,
	Description NVARCHAR(255) NOT NULL,
	ImageId INT NOT NULL CONSTRAINT FK_Images_ImageId FOREIGN KEY REFERENCES dbo.Images(Id),
	Price DECIMAL(9,2) NOT NULL,
	SellerId INT NOT NULL CONSTRAINT FK_Products_SellerId FOREIGN KEY REFERENCES dbo.Users(Id),
	IsEnabled BIT NOT NULL CONSTRAINT DF_Products_IsEnabled DEFAULT 0,
	LastUpdate DATETIME2(0) CONSTRAINT DF_Products_LastUpdate DEFAULT SYSDATETIME(),
	CreateDate DATETIME2(0) CONSTRAINT DF_Products_CreateDate DEFAULT SYSDATETIME()
)