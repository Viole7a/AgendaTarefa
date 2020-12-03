CREATE TABLE [dbo].[Tarefa]
(
	[Id] INT IDENTITY NOT NULL PRIMARY KEY, 
    [Usuario] INT NOT NULL,
    [Titulo] NVARCHAR(50) NOT NULL, 
    [TipoTarefa] INT NOT NULL,
    [Descricao] NVARCHAR(MAX) NULL, 
    [DataInclusao] DATETIME NOT NULL, 
    [Prazo] DATETIME NULL, 
    [Status] INT NOT NULL,
    [Progressao] DECIMAL NULL, 
    [Prioridade] INT NOT NULL,
    CONSTRAINT [FK_Tarefa_ToUsuario] FOREIGN KEY ([Usuario]) REFERENCES [Usuario]([Id]), 
    CONSTRAINT [FK_Tarefa_ToTipoTarefa] FOREIGN KEY ([TipoTarefa]) REFERENCES [TipoTarefa]([Id]), 
    CONSTRAINT [FK_Tarefa_ToStatus] FOREIGN KEY ([Status]) REFERENCES [Status]([Id]), 
    CONSTRAINT [FK_Tarefa_ToPrioridade] FOREIGN KEY ([Prioridade]) REFERENCES [Prioridade]([Id])
)
