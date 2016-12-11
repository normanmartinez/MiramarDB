CREATE TABLE [dbo].[DMTC] (
    [Numero_Tarjeta]      VARCHAR (50) NOT NULL,
    [Rut_Cliente]         VARCHAR (50) NOT NULL,
    [Dias_CuotasVencidas] INT          NOT NULL,
    [Fecha_Generación]    DATE         CONSTRAINT [DF_DMTC_Fecha_Generación] DEFAULT (getdate()) NOT NULL
);

