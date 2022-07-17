﻿CREATE TABLE dbo.ProductTags
(
    ProductId INT NOT NULL CONSTRAINT FK_ProductTags_ProductId FOREIGN KEY REFERENCES dbo.Products(Id) ON DELETE CASCADE,
    TagId INT NOT NULL CONSTRAINT FK_ProductTags_TagId FOREIGN KEY REFERENCES dbo.Tags(Id) ON DELETE CASCADE,
    PRIMARY KEY (ProductId, TagId)
)