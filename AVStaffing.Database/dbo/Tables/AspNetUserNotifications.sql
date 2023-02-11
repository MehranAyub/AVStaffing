CREATE TABLE [dbo].[AspNetUserNotifications] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [UserId]            INT            NOT NULL,
    [Type]              NVARCHAR (MAX) NULL,
    [Title]             NVARCHAR (MAX) NULL,
    [Message]           NVARCHAR (MAX) NULL,
    [DateCreated]       DATETIME       NOT NULL,
    [IsRead]            BIT            NOT NULL,
    [IsDeleted]         BIT            NOT NULL,
    [IsReminder]        BIT            NOT NULL,
    [Code]              NVARCHAR (MAX) NULL,
    [IsAjaxMessage]     BIT            NULL,
    [IsRedirectMessage] BIT            NULL,
    [IsViewMessage]     BIT            NULL,
    [Discriminator]     NVARCHAR (128) NOT NULL,
    CONSTRAINT [PK_dbo.AspNetUserNotifications] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.AspNetUserNotifications_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UserId]
    ON [dbo].[AspNetUserNotifications]([UserId] ASC);

