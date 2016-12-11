CREATE TABLE [dbo].[DMCC] (
    [Numero_Prestamo]     INT          NOT NULL,
    [Rut_Cliente]         VARCHAR (50) NOT NULL,
    [Dias_CuotasVencidas] INT          NOT NULL,
    [Fecha_Generación]    DATE         CONSTRAINT [DF_DMCC_Fecha_Generación] DEFAULT (getdate()) NOT NULL
);

