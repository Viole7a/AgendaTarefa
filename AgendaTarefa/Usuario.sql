﻿CREATE TABLE [dbo].[Usuario]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Nome] NVARCHAR(50) NOT NULL, 
    [Login] NVARCHAR(20) NOT NULL, 
    [Senha] NVARCHAR(20) NOT NULL
)
