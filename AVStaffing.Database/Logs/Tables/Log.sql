CREATE TABLE [Logs].[Log] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Date]      DATETIME       NOT NULL,
    [Thread]    NVARCHAR (MAX) NULL,
    [Level]     NVARCHAR (MAX) NULL,
    [Logger]    NVARCHAR (MAX) NULL,
    [Message]   NVARCHAR (MAX) NULL,
    [Exception] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Logs.Log] PRIMARY KEY CLUSTERED ([Id] ASC)
);

