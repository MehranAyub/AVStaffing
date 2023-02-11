CREATE TABLE [dbo].[Permission] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Controller]  NVARCHAR (MAX) NOT NULL,
    [Action]      NVARCHAR (MAX) NOT NULL,
    [AllowAll]    BIT            NOT NULL,
    [Description] NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_dbo.Permission] PRIMARY KEY CLUSTERED ([Id] ASC)
);

