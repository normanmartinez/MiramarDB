CREATE TABLE [dbo].[PDTC] (
    [Numero_Tarjeta]    VARCHAR (50)    NOT NULL,
    [Rut_Cliente]       VARCHAR (50)    NOT NULL,
    [Fecha_UltimoPago]  DATE            NOT NULL,
    [Fecha_Vencimiento] DATE            NOT NULL,
    [Fecha_Facturacion] DATE            NOT NULL,
    [Pago_Mínimo]       DECIMAL (18, 2) NULL,
    [Pago_Total]        DECIMAL (18, 2) NULL,
    [Pago_Acumulado]    DECIMAL (18, 2) NULL,
    [Fecha_Generación]  DATE            CONSTRAINT [DF_PDTC_Fecha_Generación] DEFAULT (getdate()) NOT NULL
);

