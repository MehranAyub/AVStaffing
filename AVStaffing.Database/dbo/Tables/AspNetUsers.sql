CREATE TABLE [dbo].[AspNetUsers] (
    [Id]                   INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]            NVARCHAR (100) NOT NULL,
    [LastName]             NVARCHAR (100) NULL,
    [Level]                TINYINT        NOT NULL,
    [JoinDate]             DATETIME       NOT NULL,
    [LastModified]         DATETIME       NOT NULL,
    [Inactive]             BIT            NOT NULL,
    [ImagePath]            NVARCHAR (MAX) NULL,
    [SupportedLanguage]    NVARCHAR (MAX) NULL,
    [Email]                NVARCHAR (256) NULL,
    [EmailConfirmed]       BIT            NOT NULL,
    [PasswordHash]         NVARCHAR (MAX) NULL,
    [SecurityStamp]        NVARCHAR (MAX) NULL,
    [PhoneNumber]          NVARCHAR (MAX) NULL,
    [PhoneNumberConfirmed] BIT            NOT NULL,
    [TwoFactorEnabled]     BIT            NOT NULL,
    [LockoutEndDateUtc]    DATETIME       NULL,
    [LockoutEnabled]       BIT            NOT NULL,
    [AccessFailedCount]    INT            NOT NULL,
    [UserName]             NVARCHAR (256) NOT NULL,
    [Initials]             NVARCHAR (MAX) NULL,
    [Signature]            NVARCHAR (MAX) NULL,
    [MedicalRecord_Id]     INT            NULL,
    [Gender]               VARCHAR (100)  DEFAULT ('Male') NOT NULL,
    [OnlineStatus]         BIT            DEFAULT ((0)) NOT NULL,
    [LoginTime]            DATETIME       DEFAULT (getdate()) NOT NULL,
    [DateOfBirth]          DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.AspNetUsers_dbo.MedicalRecords_MedicalRecord_Id] FOREIGN KEY ([MedicalRecord_Id]) REFERENCES [MAR].[MedicalRecord] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_MedicalRecord_Id]
    ON [dbo].[AspNetUsers]([MedicalRecord_Id] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex]
    ON [dbo].[AspNetUsers]([UserName] ASC);

