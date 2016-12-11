CREATE TABLE [dbo].[PuntosPD](
	[Rut_Cliente] [varchar](50) NOT NULL,
	[Puntos_Beneficio] [int] NOT NULL,
	[Fecha_Puntos] [date] NOT NULL,
	[ActionID] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PuntosPD] ADD  CONSTRAINT [DF_PuntosPD_Fecha_Puntos]  DEFAULT (getdate()) FOR [Fecha_Puntos]
GO

ALTER TABLE [dbo].[PuntosPD]  WITH CHECK ADD  CONSTRAINT [FK_PuntosPD_Actions] FOREIGN KEY([ActionID])
REFERENCES [dbo].[Actions] ([ActionID])
GO

ALTER TABLE [dbo].[PuntosPD] CHECK CONSTRAINT [FK_PuntosPD_Actions]
GO

