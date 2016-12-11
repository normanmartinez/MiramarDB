CREATE TABLE [dbo].[AuditLogMiramar] (
    [AuditLogID]         INT          IDENTITY (1, 1) NOT NULL,
    [ActionDateTime]     DATETIME     CONSTRAINT [DF_AuditLogMiramar_ActionDateTime] DEFAULT (getdate()) NOT NULL,
    [RUT]                VARCHAR (10) NOT NULL,
    [ActionID]           INT          NOT NULL,
    [ResultID]           INT          NOT NULL,
    [Points]             INT          CONSTRAINT [DF_AuditLogMiramar_Points] DEFAULT ((0)) NOT NULL,
    [NextActionDateTime] DATE         NULL,
    [IsRowCurrent]       CHAR (1)     CONSTRAINT [DF_AuditLogMiramar_IsRowCurrent] DEFAULT ((1)) NOT NULL,
    [ProductNumber]      INT          NULL,
    CONSTRAINT [PK_AuditLogMiramar] PRIMARY KEY CLUSTERED ([AuditLogID] ASC),
    CONSTRAINT [FK_AuditLogMiramar_Actions] FOREIGN KEY ([ActionID]) REFERENCES [dbo].[Actions] ([ActionID]),
    CONSTRAINT [FK_AuditLogMiramar_Results] FOREIGN KEY ([ResultID]) REFERENCES [dbo].[Results] ([ResultID])
);

