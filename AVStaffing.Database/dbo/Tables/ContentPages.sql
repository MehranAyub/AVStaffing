CREATE TABLE [dbo].[ContentPages] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [NavTitle]  NVARCHAR (MAX) NULL,
    [Content]   NVARCHAR (MAX) NULL,
    [PageId]    INT            NULL,
    [Title]     NVARCHAR (MAX) NULL,
    [Route]     NVARCHAR (MAX) NULL,
    [PageOrder] INT            DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_dbo.ContentPages] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.ContentPages_dbo.ContentPages_PageId] FOREIGN KEY ([PageId]) REFERENCES [dbo].[ContentPages] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_PageId]
    ON [dbo].[ContentPages]([PageId] ASC);

