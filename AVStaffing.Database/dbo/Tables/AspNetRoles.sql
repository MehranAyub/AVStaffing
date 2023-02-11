CREATE TABLE [dbo].[AspNetRoles] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [LastModified]    DATETIME       NOT NULL,
    [IsSysAdmin]      BIT            NOT NULL,
    [RoleDescription] NVARCHAR (MAX) NULL,
    [Name]            NVARCHAR (256) NOT NULL,
    CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex]
    ON [dbo].[AspNetRoles]([Name] ASC);

