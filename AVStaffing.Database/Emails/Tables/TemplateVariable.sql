CREATE TABLE [Emails].[TemplateVariable] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [Title]           NVARCHAR (MAX) NULL,
    [EmailTemplateId] INT            NOT NULL,
    CONSTRAINT [PK_Emails.TemplateVariable] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Emails.TemplateVariable_Emails.EmailTemplate_EmailTemplateId] FOREIGN KEY ([EmailTemplateId]) REFERENCES [Emails].[EmailTemplate] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_EmailTemplateId]
    ON [Emails].[TemplateVariable]([EmailTemplateId] ASC);

