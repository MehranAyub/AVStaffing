CREATE TABLE [Content].[Testimonial] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [ImagePath]        NVARCHAR (MAX) NULL,
    [ClientName]       NVARCHAR (MAX) NULL,
    [ClientOccupation] NVARCHAR (MAX) NULL,
    [Text]             NVARCHAR (MAX) NULL,
    [PortfolioId]      INT            NOT NULL,
    CONSTRAINT [PK_Content.Testimonial] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Content.Testimonial_Content.Portfolio_PortfolioId] FOREIGN KEY ([PortfolioId]) REFERENCES [Content].[Portfolio] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_PortfolioId]
    ON [Content].[Testimonial]([PortfolioId] ASC);

