CREATE TABLE [Content].[AboutUs] (
    [PortfolioId] INT            NOT NULL,
    [Title]       NVARCHAR (MAX) NULL,
    [Subtitle]    NVARCHAR (MAX) NULL,
    [Section1]    NVARCHAR (MAX) NULL,
    [Section2]    NVARCHAR (MAX) NULL,
    [Section3]    NVARCHAR (MAX) NULL,
    [Section4]    NVARCHAR (MAX) NULL,
    [Section5]    NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Content.AboutUs] PRIMARY KEY CLUSTERED ([PortfolioId] ASC),
    CONSTRAINT [FK_Content.AboutUs_Content.Portfolio_PortfolioId] FOREIGN KEY ([PortfolioId]) REFERENCES [Content].[Portfolio] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_PortfolioId]
    ON [Content].[AboutUs]([PortfolioId] ASC);

