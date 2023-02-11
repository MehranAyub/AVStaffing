CREATE TABLE [Content].[Media] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [MediaUrl]    NVARCHAR (MAX) NULL,
    [FileName]    NVARCHAR (MAX) NULL,
    [DateCreated] DATETIME       NOT NULL,
    [DateUpdated] DATETIME       NOT NULL,
    CONSTRAINT [PK_Content.Media] PRIMARY KEY CLUSTERED ([Id] ASC)
);

