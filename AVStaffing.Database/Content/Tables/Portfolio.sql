CREATE TABLE [Content].[Portfolio] (
    [Id]                  INT            IDENTITY (1, 1) NOT NULL,
    [Language]            NVARCHAR (MAX) NULL,
    [HomeTitle]           NVARCHAR (MAX) NULL,
    [HomeSubTitle]        NVARCHAR (MAX) NULL,
    [WhiteLogo]           NVARCHAR (MAX) NULL,
    [BlackLogo]           NVARCHAR (MAX) NULL,
    [Services]            NVARCHAR (MAX) NULL,
    [TestimonialTitle]    NVARCHAR (MAX) NULL,
    [TestimonialSubtitle] NVARCHAR (MAX) NULL,
    [PackagesTitle]       NVARCHAR (MAX) NULL,
    [About]               NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Content.Portfolio] PRIMARY KEY CLUSTERED ([Id] ASC)
);

