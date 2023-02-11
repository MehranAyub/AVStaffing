CREATE TABLE [MAR].[AdministeredMedicine] (
    [Id]           INT      IDENTITY (1, 1) NOT NULL,
    [MedicationId] INT      NOT NULL,
    [MarId]        INT      NOT NULL,
    [StaffId]      INT      NOT NULL,
    [Day]          DATETIME NOT NULL,
    [StartTime]    DATETIME NOT NULL,
    [EndTime]      DATETIME NOT NULL,
    CONSTRAINT [PK_MAR.MedicalRecordMedication] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MAR.MedicalRecordMedication_dbo.AspNetUsers_StaffId] FOREIGN KEY ([StaffId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_MAR.MedicalRecordMedication_MAR.MedicalRecord_MarId] FOREIGN KEY ([MarId]) REFERENCES [MAR].[MedicalRecord] ([Id]),
    CONSTRAINT [FK_MAR.MedicalRecordMedication_MAR.Medication_MedicationId] FOREIGN KEY ([MedicationId]) REFERENCES [MAR].[Medication] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_MarId]
    ON [MAR].[AdministeredMedicine]([MarId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_MedicationId]
    ON [MAR].[AdministeredMedicine]([MedicationId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_StaffId]
    ON [MAR].[AdministeredMedicine]([StaffId] ASC);

