CREATE TABLE [dbo].[TipoTarefa]
(
	[Id] INT IDENTITY NOT NULL PRIMARY KEY, 
    [Nome] VARCHAR(50) NOT NULL, 
    [Cor] NVARCHAR(20) NULL, 
    [Usuario] INT NOT NULL, 
    CONSTRAINT [FK_TipoTarefa_ToUsuario] FOREIGN KEY ([Usuario]) REFERENCES [Usuario]([Id])
)
