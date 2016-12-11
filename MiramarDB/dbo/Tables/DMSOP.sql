CREATE TABLE [dbo].[DMSOP] (
    [Numero_Poliza]    INT          NOT NULL,
    [Rut_Cliente]      VARCHAR (50) NOT NULL,
    [Fecha_Pago]       DATE         NOT NULL,
    [Fecha_Pactada]    DATE         NOT NULL,
    [Fecha_Generación] DATE         CONSTRAINT [DF_DMSOP_Fecha_Generación] DEFAULT (getdate()) NOT NULL
);

