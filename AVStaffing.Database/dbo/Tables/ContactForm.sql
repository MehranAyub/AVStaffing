CREATE TABLE [dbo].[ContactForm] (
    [Name]       VARCHAR (255) DEFAULT ('') NOT NULL,
    [Email]      VARCHAR (255) DEFAULT ('') NOT NULL,
    [Phone]      VARCHAR (255) DEFAULT ('') NOT NULL,
    [City]       VARCHAR (255) DEFAULT ('') NOT NULL,
    [Company]    VARCHAR (255) DEFAULT ('') NOT NULL,
    [Candidates] INT           DEFAULT ((0)) NOT NULL,
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

