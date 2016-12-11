CREATE TABLE [dbo].[ActionsType] (
    [ActionTypeID]          INT          IDENTITY (1, 1) NOT NULL,
    [ActionTypeDescription] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_ActionsType] PRIMARY KEY CLUSTERED ([ActionTypeID] ASC)
);

