CREATE TABLE [MAR].[Physician] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [PhoneNumber] NVARCHAR (MAX) NULL,
    [Name]        NVARCHAR (MAX) NULL,
    [Email]       NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.Physician] PRIMARY KEY CLUSTERED ([Id] ASC)
);

