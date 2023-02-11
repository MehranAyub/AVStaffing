CREATE TABLE [MAR].[Medication] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.Medication] PRIMARY KEY CLUSTERED ([Id] ASC)
);

