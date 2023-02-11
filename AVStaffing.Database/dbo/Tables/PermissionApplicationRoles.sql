CREATE TABLE [dbo].[PermissionApplicationRoles] (
    [Permission_Id]      INT NOT NULL,
    [ApplicationRole_Id] INT NOT NULL,
    CONSTRAINT [PK_dbo.PermissionApplicationRoles] PRIMARY KEY CLUSTERED ([Permission_Id] ASC, [ApplicationRole_Id] ASC),
    CONSTRAINT [FK_dbo.PermissionApplicationRoles_dbo.AspNetRoles_ApplicationRole_Id] FOREIGN KEY ([ApplicationRole_Id]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.PermissionApplicationRoles_dbo.Permission_Permission_Id] FOREIGN KEY ([Permission_Id]) REFERENCES [dbo].[Permission] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ApplicationRole_Id]
    ON [dbo].[PermissionApplicationRoles]([ApplicationRole_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Permission_Id]
    ON [dbo].[PermissionApplicationRoles]([Permission_Id] ASC);

