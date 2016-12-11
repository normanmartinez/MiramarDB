CREATE TABLE [dbo].[Actions] (
    [ActionID]          INT           IDENTITY (1, 1) NOT NULL,
    [ActionDescription] VARCHAR (100) NOT NULL,
    [ActionTypeID]      INT           NOT NULL,
    CONSTRAINT [PK_Actions] PRIMARY KEY CLUSTERED ([ActionID] ASC),
    CONSTRAINT [FK_Actions_ActionsType] FOREIGN KEY ([ActionTypeID]) REFERENCES [dbo].[ActionsType] ([ActionTypeID])
);

