CREATE TABLE [Content].[TermsOfService] (
    [PortfolioId] INT            NOT NULL,
    [Title]       NVARCHAR (MAX) NULL,
    [DateUpdated] DATETIME       NOT NULL,
    [Description] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Content.TermsOfService] PRIMARY KEY CLUSTERED ([PortfolioId] ASC),
    CONSTRAINT [FK_Content.TermsOfService_Content.Portfolio_PortfolioId] FOREIGN KEY ([PortfolioId]) REFERENCES [Content].[Portfolio] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_PortfolioId]
    ON [Content].[TermsOfService]([PortfolioId] ASC);

