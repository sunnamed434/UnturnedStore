﻿CREATE TABLE dbo.OrderItems
(
	Id INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_OrderItems PRIMARY KEY,
	OrderId INT NOT NULL CONSTRAINT FK_OrderItems_OrderId FOREIGN KEY REFERENCES dbo.Orders(Id),
	ProductId INT NOT NULL CONSTRAINT FK_OrderItems_ProductId FOREIGN KEY REFERENCES dbo.Products(Id),
	ProductName NVARCHAR(255) NOT NULL,
	Price DECIMAL(9, 2) NOT NULL
)