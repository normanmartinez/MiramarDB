CREATE TABLE [dbo].[PDCC] (
    [Numero_CreditoConsumo] INT             NOT NULL,
    [Rut_Cliente]           VARCHAR (50)    NOT NULL,
    [Fecha_Pago]            DATE            NOT NULL,
    [Fecha_Vencimiento]     DATE            NOT NULL,
    [Numero_Cuota]          INT             NOT NULL,
    [Total_Cuotas]          INT             NOT NULL,
    [Total_CuotasVencidas]  INT             CONSTRAINT [DF_PDCC_Total_CuotasVencidas] DEFAULT ((0)) NOT NULL,
    [Pago_Cuota]            DECIMAL (18, 2) NOT NULL,
    [Valor_Cuota]           DECIMAL (18, 2) NOT NULL,
    [Fecha_Generación]      DATE            CONSTRAINT [DF_PDCC_Fecha_Generación] DEFAULT (getdate()) NOT NULL
);

