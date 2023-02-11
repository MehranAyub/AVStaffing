CREATE TABLE [dbo].[ContentPages2] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [NavTitle]  NVARCHAR (MAX) NULL,
    [Content]   NVARCHAR (MAX) NULL,
    [PageId]    INT            NULL,
    [Title]     NVARCHAR (MAX) NULL,
    [Route]     NVARCHAR (MAX) NULL,
    [PageOrder] INT            NOT NULL
);

