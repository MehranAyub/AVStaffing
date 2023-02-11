CREATE TABLE [Emails].[EmailTemplate] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [EmailTemplateType] INT            NOT NULL,
    [Title]             NVARCHAR (MAX) NULL,
    [Subject]           NVARCHAR (MAX) NULL,
    [Body]              NVARCHAR (MAX) NULL,
    [Language]          NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Emails.EmailTemplate] PRIMARY KEY CLUSTERED ([Id] ASC)
);

