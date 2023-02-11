CREATE TABLE [MAR].[Goal] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [GoalName]         NVARCHAR (MAX) NULL,
    [GoalTitle]        NVARCHAR (MAX) NULL,
    [Description]      NVARCHAR (MAX) NULL,
    [TreatmentPlan_Id] INT            NULL,
    CONSTRAINT [PK_MAR.Goal] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_MAR.Goal_MAR.TreatmentPlan_TreatmentPlan_Id] FOREIGN KEY ([TreatmentPlan_Id]) REFERENCES [MAR].[TreatmentPlan] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_TreatmentPlan_Id]
    ON [MAR].[Goal]([TreatmentPlan_Id] ASC);

