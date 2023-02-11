CREATE TABLE [MAR].[MedicalRecord] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [Record]        NVARCHAR (MAX) NULL,
    [PhysicianId]   INT            NOT NULL,
    [PatientId]     INT            NOT NULL,
    [AdmissionDate] NVARCHAR (MAX) NULL,
    [StartStopDate] NVARCHAR (MAX) NULL,
    [FacilityName]  NVARCHAR (MAX) NULL,
    [Diagnosis]     NVARCHAR (MAX) NULL,
    [Comments]      NVARCHAR (MAX) NULL,
    [Allergies]     NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.MedicalRecord] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.MedicalRecords_dbo.Patients_PatientId] FOREIGN KEY ([PatientId]) REFERENCES [MAR].[Patient] ([Id]),
    CONSTRAINT [FK_dbo.MedicalRecords_dbo.Physicians_PhysicianId] FOREIGN KEY ([PhysicianId]) REFERENCES [MAR].[Physician] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_PatientId]
    ON [MAR].[MedicalRecord]([PatientId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_PhysicianId]
    ON [MAR].[MedicalRecord]([PhysicianId] ASC);

