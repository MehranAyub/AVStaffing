CREATE TABLE [Content].[ContactUs] (
    [PortfolioId] INT            NOT NULL,
    [Title]       NVARCHAR (MAX) NULL,
    [Subtitle]    NVARCHAR (MAX) NULL,
    [Email]       NVARCHAR (MAX) NULL,
    [Address]     NVARCHAR (MAX) NULL,
    [PhoneNumber] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Content.ContactUs] PRIMARY KEY CLUSTERED ([PortfolioId] ASC),
    CONSTRAINT [FK_Content.ContactUs_Content.Portfolio_PortfolioId] FOREIGN KEY ([PortfolioId]) REFERENCES [Content].[Portfolio] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_PortfolioId]
    ON [Content].[ContactUs]([PortfolioId] ASC);

