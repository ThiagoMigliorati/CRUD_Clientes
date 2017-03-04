CREATE TABLE [dbo].[Pessoa]
(
	[Codigo] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] NCHAR(50) NULL, 
    [Endereco] NCHAR(50) NULL, 
    [Email] NCHAR(50) NULL
)
