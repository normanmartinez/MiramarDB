CREATE TABLE [dbo].[Results] (
    [ResultID]          INT          IDENTITY (1, 1) NOT NULL,
    [ResultDescription] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Results] PRIMARY KEY CLUSTERED ([ResultID] ASC)
);

