CREATE TABLE [MAR].[Patient] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (MAX) NULL,
    [DateOfBirth] DATETIME       NOT NULL,
    [Sex]         NVARCHAR (MAX) NULL,
    [PhoneNumber] NVARCHAR (MAX) NULL,
    [Email]       NVARCHAR (MAX) NULL,
    [InsuranceId] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.Patient] PRIMARY KEY CLUSTERED ([Id] ASC)
);

