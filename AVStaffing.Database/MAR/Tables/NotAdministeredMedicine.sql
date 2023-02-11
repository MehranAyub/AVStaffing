CREATE TABLE [MAR].[NotAdministeredMedicine] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [MarId]        INT            NOT NULL,
    [MedicationId] INT            NOT NULL,
    [StaffId]      INT            NOT NULL,
    [Date]         DATETIME       NOT NULL,
    [Initials]     NVARCHAR (MAX) NULL,
    [Reason]       NVARCHAR (MAX) NULL,
    [Result]       NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.NotAdministeredMedicine] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.NotAdministeredMedicines_dbo.AspNetUsers_StaffId] FOREIGN KEY ([StaffId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_dbo.NotAdministeredMedicines_dbo.MedicalRecords_MarId] FOREIGN KEY ([MarId]) REFERENCES [MAR].[MedicalRecord] ([Id]),
    CONSTRAINT [FK_dbo.NotAdministeredMedicines_dbo.Medications_MedicationId] FOREIGN KEY ([MedicationId]) REFERENCES [MAR].[Medication] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_MarId]
    ON [MAR].[NotAdministeredMedicine]([MarId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_MedicationId]
    ON [MAR].[NotAdministeredMedicine]([MedicationId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_StaffId]
    ON [MAR].[NotAdministeredMedicine]([StaffId] ASC);

