CREATE TABLE [MAR].[TreatmentPlan] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [PatientId]     INT            NOT NULL,
    [Date]          DATETIME       NOT NULL,
    [Signature]     NVARCHAR (MAX) NULL,
    [StaffId]       INT            NOT NULL,
    [FirstShift]    BIT            DEFAULT ((0)) NOT NULL,
    [SecondShift]   BIT            DEFAULT ((0)) NOT NULL,
    [ThirdShift]    BIT            DEFAULT ((0)) NOT NULL,
    [FaceToFace]    BIT            DEFAULT ((0)) NOT NULL,
    [Location]      NVARCHAR (MAX) NULL,
    [Effectiveness] NVARCHAR (MAX) NULL,
    [Intervention]  NVARCHAR (MAX) NULL,
    [Service]       NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_MAR.TreatmentPlan] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MAR.TreatmentPlan_dbo.AspNetUsers_StaffId] FOREIGN KEY ([StaffId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_MAR.TreatmentPlan_MAR.Patient_PatientId] FOREIGN KEY ([PatientId]) REFERENCES [MAR].[Patient] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_PatientId]
    ON [MAR].[TreatmentPlan]([PatientId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_StaffId]
    ON [MAR].[TreatmentPlan]([StaffId] ASC);

