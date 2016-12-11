CREATE TABLE [dbo].[PDSOP] (
    [Numero_Poliza]    INT             NOT NULL,
    [Rut_Cliente]      VARCHAR (50)    NOT NULL,
    [Fecha_Pago]       DATE            NOT NULL,
    [Fecha_Pactada]    DATE            NOT NULL,
    [Pago_Total]       DECIMAL (18, 2) NOT NULL,
    [Cuota_Deudora]    INT             NOT NULL,
    [Fecha_Generación] DATE            CONSTRAINT [DF_PDSOP_Fecha_Generación] DEFAULT (getdate()) NOT NULL
);

