USE [IAS.Software]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 20/02/2021 9:45:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[NombreEstado] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reporte]    Script Date: 20/02/2021 9:45:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporte](
	[IdTecnico] [varchar](10) NOT NULL,
	[IdServicio] [int] NOT NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFin] [datetime] NULL,
	[IdEstado] [int] NOT NULL,
 CONSTRAINT [PK_Reporte] PRIMARY KEY CLUSTERED 
(
	[IdTecnico] ASC,
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SemanasAño]    Script Date: 20/02/2021 9:45:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemanasAño](
	[IdFechaSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[SemanaAño] [int] NOT NULL,
	[DiaNombre] [varchar](9) NOT NULL,
 CONSTRAINT [PK_SemanasAño] PRIMARY KEY CLUSTERED 
(
	[IdFechaSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudServicios]    Script Date: 20/02/2021 9:45:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudServicios](
	[IdServicio] [int] IDENTITY(1,1) NOT NULL,
	[DescripcionServicio] [varchar](100) NOT NULL,
	[NombreTecnico] [varchar](100) NOT NULL,
	[IdTecnico] [varchar](10) NOT NULL,
	[IdFechaSolicitud] [int] NOT NULL,
 CONSTRAINT [PK_SolicitudServicios] PRIMARY KEY CLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Estados] ON 

INSERT [dbo].[Estados] ([IdEstado], [NombreEstado]) VALUES (1, N'Asignado')
INSERT [dbo].[Estados] ([IdEstado], [NombreEstado]) VALUES (2, N'En Curso')
INSERT [dbo].[Estados] ([IdEstado], [NombreEstado]) VALUES (3, N'Finalizado')
SET IDENTITY_INSERT [dbo].[Estados] OFF
GO
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 1, CAST(N'2020-02-16T07:00:00.000' AS DateTime), CAST(N'2020-02-16T20:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 2, CAST(N'2020-02-17T07:00:00.000' AS DateTime), CAST(N'2020-02-17T20:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 3, CAST(N'2020-02-17T20:00:00.000' AS DateTime), CAST(N'2020-02-17T22:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 4, CAST(N'2020-02-18T07:00:00.000' AS DateTime), CAST(N'2020-02-18T20:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 5, CAST(N'2020-02-19T07:00:00.000' AS DateTime), CAST(N'2020-02-19T20:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 6, CAST(N'2020-02-20T07:00:00.000' AS DateTime), CAST(N'2020-02-20T12:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 7, CAST(N'2020-02-20T20:00:00.000' AS DateTime), CAST(N'2020-02-20T23:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 8, CAST(N'2020-02-21T07:00:00.000' AS DateTime), CAST(N'2020-02-21T18:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 9, CAST(N'2020-02-22T07:00:00.000' AS DateTime), CAST(N'2020-02-22T12:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 10, CAST(N'2021-02-20T20:00:00.000' AS DateTime), CAST(N'2021-02-20T22:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 11, CAST(N'2021-02-21T20:00:00.000' AS DateTime), CAST(N'2021-02-21T22:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 12, CAST(N'2021-02-16T12:00:00.000' AS DateTime), CAST(N'2021-02-16T13:00:00.000' AS DateTime), 3)
INSERT [dbo].[Reporte] ([IdTecnico], [IdServicio], [FechaInicio], [FechaFin], [IdEstado]) VALUES (N'1036598444', 13, CAST(N'2021-02-17T09:00:00.000' AS DateTime), CAST(N'2021-02-17T11:00:00.000' AS DateTime), 3)
GO
SET IDENTITY_INSERT [dbo].[SemanasAño] ON 

INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (1, CAST(N'2021-01-01' AS Date), 1, N'Miercoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (2, CAST(N'2021-01-02' AS Date), 1, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (3, CAST(N'2021-01-03' AS Date), 1, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (4, CAST(N'2021-01-04' AS Date), 1, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (5, CAST(N'2021-01-05' AS Date), 2, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (6, CAST(N'2021-01-06' AS Date), 2, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (7, CAST(N'2021-01-07' AS Date), 2, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (8, CAST(N'2021-01-08' AS Date), 2, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (9, CAST(N'2021-01-09' AS Date), 2, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (10, CAST(N'2021-01-10' AS Date), 2, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (11, CAST(N'2021-01-11' AS Date), 2, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (12, CAST(N'2021-01-12' AS Date), 3, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (13, CAST(N'2021-01-13' AS Date), 3, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (14, CAST(N'2021-01-14' AS Date), 3, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (15, CAST(N'2021-01-15' AS Date), 3, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (16, CAST(N'2021-01-16' AS Date), 3, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (17, CAST(N'2021-01-17' AS Date), 3, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (18, CAST(N'2021-01-18' AS Date), 3, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (19, CAST(N'2021-01-19' AS Date), 4, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (20, CAST(N'2021-01-20' AS Date), 4, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (21, CAST(N'2021-01-21' AS Date), 4, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (22, CAST(N'2021-01-22' AS Date), 4, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (23, CAST(N'2021-01-23' AS Date), 4, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (24, CAST(N'2021-01-24' AS Date), 4, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (25, CAST(N'2021-01-25' AS Date), 4, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (26, CAST(N'2021-01-26' AS Date), 5, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (27, CAST(N'2021-01-27' AS Date), 5, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (28, CAST(N'2021-01-28' AS Date), 5, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (29, CAST(N'2021-01-29' AS Date), 5, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (30, CAST(N'2021-01-30' AS Date), 5, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (31, CAST(N'2021-01-31' AS Date), 5, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (32, CAST(N'2021-02-01' AS Date), 5, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (33, CAST(N'2021-02-02' AS Date), 6, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (34, CAST(N'2021-02-03' AS Date), 6, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (35, CAST(N'2021-02-04' AS Date), 6, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (36, CAST(N'2021-02-05' AS Date), 6, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (37, CAST(N'2021-02-06' AS Date), 6, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (38, CAST(N'2021-02-07' AS Date), 6, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (39, CAST(N'2021-02-08' AS Date), 6, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (40, CAST(N'2021-02-09' AS Date), 7, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (41, CAST(N'2021-02-10' AS Date), 7, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (42, CAST(N'2021-02-11' AS Date), 7, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (43, CAST(N'2021-02-12' AS Date), 7, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (44, CAST(N'2021-02-13' AS Date), 7, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (45, CAST(N'2021-02-14' AS Date), 7, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (46, CAST(N'2021-02-15' AS Date), 7, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (47, CAST(N'2021-02-16' AS Date), 8, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (48, CAST(N'2021-02-17' AS Date), 8, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (49, CAST(N'2021-02-18' AS Date), 8, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (50, CAST(N'2021-02-19' AS Date), 8, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (51, CAST(N'2021-02-20' AS Date), 8, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (52, CAST(N'2021-02-21' AS Date), 8, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (53, CAST(N'2021-02-22' AS Date), 8, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (54, CAST(N'2021-02-23' AS Date), 9, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (55, CAST(N'2021-02-24' AS Date), 9, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (56, CAST(N'2021-02-25' AS Date), 9, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (57, CAST(N'2021-02-26' AS Date), 9, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (58, CAST(N'2021-02-27' AS Date), 9, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (59, CAST(N'2021-02-28' AS Date), 9, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (60, CAST(N'2021-03-01' AS Date), 9, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (61, CAST(N'2021-03-02' AS Date), 10, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (62, CAST(N'2021-03-03' AS Date), 10, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (63, CAST(N'2021-03-04' AS Date), 10, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (64, CAST(N'2021-03-05' AS Date), 10, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (65, CAST(N'2021-03-06' AS Date), 10, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (66, CAST(N'2021-03-07' AS Date), 10, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (67, CAST(N'2021-03-08' AS Date), 10, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (68, CAST(N'2021-03-09' AS Date), 11, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (69, CAST(N'2021-03-10' AS Date), 11, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (70, CAST(N'2021-03-11' AS Date), 11, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (71, CAST(N'2021-03-12' AS Date), 11, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (72, CAST(N'2021-03-13' AS Date), 11, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (73, CAST(N'2021-03-14' AS Date), 11, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (74, CAST(N'2021-03-15' AS Date), 11, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (75, CAST(N'2021-03-16' AS Date), 12, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (76, CAST(N'2021-03-17' AS Date), 12, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (77, CAST(N'2021-03-18' AS Date), 12, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (78, CAST(N'2021-03-19' AS Date), 12, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (79, CAST(N'2021-03-20' AS Date), 12, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (80, CAST(N'2021-03-21' AS Date), 12, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (81, CAST(N'2021-03-22' AS Date), 12, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (82, CAST(N'2021-03-23' AS Date), 13, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (83, CAST(N'2021-03-24' AS Date), 13, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (84, CAST(N'2021-03-25' AS Date), 13, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (85, CAST(N'2021-03-26' AS Date), 13, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (86, CAST(N'2021-03-27' AS Date), 13, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (87, CAST(N'2021-03-28' AS Date), 13, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (88, CAST(N'2021-03-29' AS Date), 13, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (89, CAST(N'2021-03-30' AS Date), 14, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (90, CAST(N'2021-03-31' AS Date), 14, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (91, CAST(N'2021-04-01' AS Date), 14, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (92, CAST(N'2021-04-02' AS Date), 14, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (93, CAST(N'2021-04-03' AS Date), 14, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (94, CAST(N'2021-04-04' AS Date), 14, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (95, CAST(N'2021-04-05' AS Date), 14, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (96, CAST(N'2021-04-06' AS Date), 15, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (97, CAST(N'2021-04-07' AS Date), 15, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (98, CAST(N'2021-04-08' AS Date), 15, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (99, CAST(N'2021-04-09' AS Date), 15, N'Miércoles')
GO
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (100, CAST(N'2021-04-10' AS Date), 15, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (101, CAST(N'2021-04-11' AS Date), 15, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (102, CAST(N'2021-04-12' AS Date), 15, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (103, CAST(N'2021-04-13' AS Date), 16, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (104, CAST(N'2021-04-14' AS Date), 16, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (105, CAST(N'2021-04-15' AS Date), 16, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (106, CAST(N'2021-04-16' AS Date), 16, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (107, CAST(N'2021-04-17' AS Date), 16, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (108, CAST(N'2021-04-18' AS Date), 16, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (109, CAST(N'2021-04-19' AS Date), 16, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (110, CAST(N'2021-04-20' AS Date), 17, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (111, CAST(N'2021-04-21' AS Date), 17, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (112, CAST(N'2021-04-22' AS Date), 17, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (113, CAST(N'2021-04-23' AS Date), 17, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (114, CAST(N'2021-04-24' AS Date), 17, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (115, CAST(N'2021-04-25' AS Date), 17, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (116, CAST(N'2021-04-26' AS Date), 17, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (117, CAST(N'2021-04-27' AS Date), 18, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (118, CAST(N'2021-04-28' AS Date), 18, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (119, CAST(N'2021-04-29' AS Date), 18, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (120, CAST(N'2021-04-30' AS Date), 18, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (121, CAST(N'2021-05-01' AS Date), 18, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (122, CAST(N'2021-05-02' AS Date), 18, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (123, CAST(N'2021-05-03' AS Date), 18, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (124, CAST(N'2021-05-04' AS Date), 19, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (125, CAST(N'2021-05-05' AS Date), 19, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (126, CAST(N'2021-05-06' AS Date), 19, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (127, CAST(N'2021-05-07' AS Date), 19, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (128, CAST(N'2021-05-08' AS Date), 19, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (129, CAST(N'2021-05-09' AS Date), 19, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (130, CAST(N'2021-05-10' AS Date), 19, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (131, CAST(N'2021-05-11' AS Date), 20, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (132, CAST(N'2021-05-12' AS Date), 20, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (133, CAST(N'2021-05-13' AS Date), 20, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (134, CAST(N'2021-05-14' AS Date), 20, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (135, CAST(N'2021-05-15' AS Date), 20, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (136, CAST(N'2021-05-16' AS Date), 20, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (137, CAST(N'2021-05-17' AS Date), 20, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (138, CAST(N'2021-05-18' AS Date), 21, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (139, CAST(N'2021-05-19' AS Date), 21, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (140, CAST(N'2021-05-20' AS Date), 21, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (141, CAST(N'2021-05-21' AS Date), 21, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (142, CAST(N'2021-05-22' AS Date), 21, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (143, CAST(N'2021-05-23' AS Date), 21, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (144, CAST(N'2021-05-24' AS Date), 21, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (145, CAST(N'2021-05-25' AS Date), 22, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (146, CAST(N'2021-05-26' AS Date), 22, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (147, CAST(N'2021-05-27' AS Date), 22, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (148, CAST(N'2021-05-28' AS Date), 22, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (149, CAST(N'2021-05-29' AS Date), 22, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (150, CAST(N'2021-05-30' AS Date), 22, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (151, CAST(N'2021-05-31' AS Date), 22, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (152, CAST(N'2021-06-01' AS Date), 23, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (153, CAST(N'2021-06-02' AS Date), 23, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (154, CAST(N'2021-06-03' AS Date), 23, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (155, CAST(N'2021-06-04' AS Date), 23, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (156, CAST(N'2021-06-05' AS Date), 23, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (157, CAST(N'2021-06-06' AS Date), 23, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (158, CAST(N'2021-06-07' AS Date), 23, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (159, CAST(N'2021-06-08' AS Date), 24, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (160, CAST(N'2021-06-09' AS Date), 24, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (161, CAST(N'2021-06-10' AS Date), 24, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (162, CAST(N'2021-06-11' AS Date), 24, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (163, CAST(N'2021-06-12' AS Date), 24, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (164, CAST(N'2021-06-13' AS Date), 24, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (165, CAST(N'2021-06-14' AS Date), 24, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (166, CAST(N'2021-06-15' AS Date), 25, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (167, CAST(N'2021-06-16' AS Date), 25, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (168, CAST(N'2021-06-17' AS Date), 25, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (169, CAST(N'2021-06-18' AS Date), 25, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (170, CAST(N'2021-06-19' AS Date), 25, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (171, CAST(N'2021-06-20' AS Date), 25, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (172, CAST(N'2021-06-21' AS Date), 25, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (173, CAST(N'2021-06-22' AS Date), 26, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (174, CAST(N'2021-06-23' AS Date), 26, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (175, CAST(N'2021-06-24' AS Date), 26, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (176, CAST(N'2021-06-25' AS Date), 26, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (177, CAST(N'2021-06-26' AS Date), 26, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (178, CAST(N'2021-06-27' AS Date), 26, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (179, CAST(N'2021-06-28' AS Date), 26, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (180, CAST(N'2021-06-29' AS Date), 27, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (181, CAST(N'2021-06-30' AS Date), 27, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (182, CAST(N'2021-07-01' AS Date), 27, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (183, CAST(N'2021-07-02' AS Date), 27, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (184, CAST(N'2021-07-03' AS Date), 27, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (185, CAST(N'2021-07-04' AS Date), 27, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (186, CAST(N'2021-07-05' AS Date), 27, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (187, CAST(N'2021-07-06' AS Date), 28, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (188, CAST(N'2021-07-07' AS Date), 28, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (189, CAST(N'2021-07-08' AS Date), 28, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (190, CAST(N'2021-07-09' AS Date), 28, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (191, CAST(N'2021-07-10' AS Date), 28, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (192, CAST(N'2021-07-11' AS Date), 28, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (193, CAST(N'2021-07-12' AS Date), 28, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (194, CAST(N'2021-07-13' AS Date), 29, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (195, CAST(N'2021-07-14' AS Date), 29, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (196, CAST(N'2021-07-15' AS Date), 29, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (197, CAST(N'2021-07-16' AS Date), 29, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (198, CAST(N'2021-07-17' AS Date), 29, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (199, CAST(N'2021-07-18' AS Date), 29, N'Viernes')
GO
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (200, CAST(N'2021-07-19' AS Date), 29, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (201, CAST(N'2021-07-20' AS Date), 30, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (202, CAST(N'2021-07-21' AS Date), 30, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (203, CAST(N'2021-07-22' AS Date), 30, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (204, CAST(N'2021-07-23' AS Date), 30, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (205, CAST(N'2021-07-24' AS Date), 30, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (206, CAST(N'2021-07-25' AS Date), 30, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (207, CAST(N'2021-07-26' AS Date), 30, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (208, CAST(N'2021-07-27' AS Date), 31, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (209, CAST(N'2021-07-28' AS Date), 31, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (210, CAST(N'2021-07-29' AS Date), 31, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (211, CAST(N'2021-07-30' AS Date), 31, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (212, CAST(N'2021-07-31' AS Date), 31, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (213, CAST(N'2021-08-01' AS Date), 31, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (214, CAST(N'2021-08-02' AS Date), 31, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (215, CAST(N'2021-08-03' AS Date), 32, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (216, CAST(N'2021-08-04' AS Date), 32, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (217, CAST(N'2021-08-05' AS Date), 32, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (218, CAST(N'2021-08-06' AS Date), 32, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (219, CAST(N'2021-08-07' AS Date), 32, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (220, CAST(N'2021-08-08' AS Date), 32, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (221, CAST(N'2021-08-09' AS Date), 32, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (222, CAST(N'2021-08-10' AS Date), 33, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (223, CAST(N'2021-08-11' AS Date), 33, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (224, CAST(N'2021-08-12' AS Date), 33, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (225, CAST(N'2021-08-13' AS Date), 33, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (226, CAST(N'2021-08-14' AS Date), 33, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (227, CAST(N'2021-08-15' AS Date), 33, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (228, CAST(N'2021-08-16' AS Date), 33, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (229, CAST(N'2021-08-17' AS Date), 34, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (230, CAST(N'2021-08-18' AS Date), 34, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (231, CAST(N'2021-08-19' AS Date), 34, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (232, CAST(N'2021-08-20' AS Date), 34, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (233, CAST(N'2021-08-21' AS Date), 34, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (234, CAST(N'2021-08-22' AS Date), 34, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (235, CAST(N'2021-08-23' AS Date), 34, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (236, CAST(N'2021-08-24' AS Date), 35, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (237, CAST(N'2021-08-25' AS Date), 35, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (238, CAST(N'2021-08-26' AS Date), 35, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (239, CAST(N'2021-08-27' AS Date), 35, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (240, CAST(N'2021-08-28' AS Date), 35, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (241, CAST(N'2021-08-29' AS Date), 35, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (242, CAST(N'2021-08-30' AS Date), 35, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (243, CAST(N'2021-08-31' AS Date), 36, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (244, CAST(N'2021-09-01' AS Date), 36, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (245, CAST(N'2021-09-02' AS Date), 36, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (246, CAST(N'2021-09-03' AS Date), 36, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (247, CAST(N'2021-09-04' AS Date), 36, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (248, CAST(N'2021-09-05' AS Date), 36, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (249, CAST(N'2021-09-06' AS Date), 36, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (250, CAST(N'2021-09-07' AS Date), 37, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (251, CAST(N'2021-09-08' AS Date), 37, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (252, CAST(N'2021-09-09' AS Date), 37, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (253, CAST(N'2021-09-10' AS Date), 37, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (254, CAST(N'2021-09-11' AS Date), 37, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (255, CAST(N'2021-09-12' AS Date), 37, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (256, CAST(N'2021-09-13' AS Date), 37, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (257, CAST(N'2021-09-14' AS Date), 38, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (258, CAST(N'2021-09-15' AS Date), 38, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (259, CAST(N'2021-09-16' AS Date), 38, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (260, CAST(N'2021-09-17' AS Date), 38, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (261, CAST(N'2021-09-18' AS Date), 38, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (262, CAST(N'2021-09-19' AS Date), 38, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (263, CAST(N'2021-09-20' AS Date), 38, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (264, CAST(N'2021-09-21' AS Date), 39, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (265, CAST(N'2021-09-22' AS Date), 39, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (266, CAST(N'2021-09-23' AS Date), 39, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (267, CAST(N'2021-09-24' AS Date), 39, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (268, CAST(N'2021-09-25' AS Date), 39, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (269, CAST(N'2021-09-26' AS Date), 39, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (270, CAST(N'2021-09-27' AS Date), 39, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (271, CAST(N'2021-09-28' AS Date), 40, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (272, CAST(N'2021-09-29' AS Date), 40, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (273, CAST(N'2021-09-30' AS Date), 40, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (274, CAST(N'2021-10-01' AS Date), 40, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (275, CAST(N'2021-10-02' AS Date), 40, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (276, CAST(N'2021-10-03' AS Date), 40, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (277, CAST(N'2021-10-04' AS Date), 40, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (278, CAST(N'2021-10-05' AS Date), 41, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (279, CAST(N'2021-10-06' AS Date), 41, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (280, CAST(N'2021-10-07' AS Date), 41, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (281, CAST(N'2021-10-08' AS Date), 41, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (282, CAST(N'2021-10-09' AS Date), 41, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (283, CAST(N'2021-10-10' AS Date), 41, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (284, CAST(N'2021-10-11' AS Date), 41, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (285, CAST(N'2021-10-12' AS Date), 42, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (286, CAST(N'2021-10-13' AS Date), 42, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (287, CAST(N'2021-10-14' AS Date), 42, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (288, CAST(N'2021-10-15' AS Date), 42, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (289, CAST(N'2021-10-16' AS Date), 42, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (290, CAST(N'2021-10-17' AS Date), 42, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (291, CAST(N'2021-10-18' AS Date), 42, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (292, CAST(N'2021-10-19' AS Date), 43, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (293, CAST(N'2021-10-20' AS Date), 43, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (294, CAST(N'2021-10-21' AS Date), 43, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (295, CAST(N'2021-10-22' AS Date), 43, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (296, CAST(N'2021-10-23' AS Date), 43, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (297, CAST(N'2021-10-24' AS Date), 43, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (298, CAST(N'2021-10-25' AS Date), 43, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (299, CAST(N'2021-10-26' AS Date), 44, N'Domingo')
GO
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (300, CAST(N'2021-10-27' AS Date), 44, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (301, CAST(N'2021-10-28' AS Date), 44, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (302, CAST(N'2021-10-29' AS Date), 44, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (303, CAST(N'2021-10-30' AS Date), 44, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (304, CAST(N'2021-10-31' AS Date), 44, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (305, CAST(N'2021-11-01' AS Date), 44, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (306, CAST(N'2021-11-02' AS Date), 45, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (307, CAST(N'2021-11-03' AS Date), 45, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (308, CAST(N'2021-11-04' AS Date), 45, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (309, CAST(N'2021-11-05' AS Date), 45, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (310, CAST(N'2021-11-06' AS Date), 45, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (311, CAST(N'2021-11-07' AS Date), 45, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (312, CAST(N'2021-11-08' AS Date), 45, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (313, CAST(N'2021-11-09' AS Date), 46, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (314, CAST(N'2021-11-10' AS Date), 46, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (315, CAST(N'2021-11-11' AS Date), 46, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (316, CAST(N'2021-11-12' AS Date), 46, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (317, CAST(N'2021-11-13' AS Date), 46, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (318, CAST(N'2021-11-14' AS Date), 46, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (319, CAST(N'2021-11-15' AS Date), 46, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (320, CAST(N'2021-11-16' AS Date), 47, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (321, CAST(N'2021-11-17' AS Date), 47, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (322, CAST(N'2021-11-18' AS Date), 47, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (323, CAST(N'2021-11-19' AS Date), 47, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (324, CAST(N'2021-11-20' AS Date), 47, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (325, CAST(N'2021-11-21' AS Date), 47, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (326, CAST(N'2021-11-22' AS Date), 47, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (327, CAST(N'2021-11-23' AS Date), 48, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (328, CAST(N'2021-11-24' AS Date), 48, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (329, CAST(N'2021-11-25' AS Date), 48, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (330, CAST(N'2021-11-26' AS Date), 48, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (331, CAST(N'2021-11-27' AS Date), 48, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (332, CAST(N'2021-11-28' AS Date), 48, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (333, CAST(N'2021-11-29' AS Date), 48, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (334, CAST(N'2021-11-30' AS Date), 49, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (335, CAST(N'2021-12-01' AS Date), 49, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (336, CAST(N'2021-12-02' AS Date), 49, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (337, CAST(N'2021-12-03' AS Date), 49, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (338, CAST(N'2021-12-04' AS Date), 49, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (339, CAST(N'2021-12-05' AS Date), 49, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (340, CAST(N'2021-12-06' AS Date), 49, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (341, CAST(N'2021-12-07' AS Date), 50, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (342, CAST(N'2021-12-08' AS Date), 50, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (343, CAST(N'2021-12-09' AS Date), 50, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (344, CAST(N'2021-12-10' AS Date), 50, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (345, CAST(N'2021-12-11' AS Date), 50, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (346, CAST(N'2021-12-12' AS Date), 50, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (347, CAST(N'2021-12-13' AS Date), 50, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (348, CAST(N'2021-12-14' AS Date), 51, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (349, CAST(N'2021-12-15' AS Date), 51, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (350, CAST(N'2021-12-16' AS Date), 51, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (351, CAST(N'2021-12-17' AS Date), 51, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (352, CAST(N'2021-12-18' AS Date), 51, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (353, CAST(N'2021-12-19' AS Date), 51, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (354, CAST(N'2021-12-20' AS Date), 51, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (355, CAST(N'2021-12-21' AS Date), 52, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (356, CAST(N'2021-12-22' AS Date), 52, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (357, CAST(N'2021-12-23' AS Date), 52, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (358, CAST(N'2021-12-24' AS Date), 52, N'Miércoles')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (359, CAST(N'2021-12-25' AS Date), 52, N'Jueves')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (360, CAST(N'2021-12-26' AS Date), 52, N'Viernes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (361, CAST(N'2021-12-27' AS Date), 52, N'Sábado')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (362, CAST(N'2021-12-28' AS Date), 53, N'Domingo')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (363, CAST(N'2021-12-29' AS Date), 53, N'Lunes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (364, CAST(N'2021-12-30' AS Date), 53, N'Martes')
INSERT [dbo].[SemanasAño] ([IdFechaSolicitud], [Fecha], [SemanaAño], [DiaNombre]) VALUES (365, CAST(N'2021-12-31' AS Date), 53, N'Miércoles')
SET IDENTITY_INSERT [dbo].[SemanasAño] OFF
GO
SET IDENTITY_INSERT [dbo].[SolicitudServicios] ON 

INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (1, N'Servicio 1', N'Adrian Ramirez', N'1036598444', 47)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (2, N'Servicio 2', N'Adrian Ramirez', N'1036598444', 48)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (3, N'Servicio 3', N'Adrian Ramirez', N'1036598444', 48)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (4, N'Servicio 4', N'Adrian Ramirez', N'1036598444', 49)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (5, N'Servicio 5', N'Adrian Ramirez', N'1036598444', 50)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (6, N'Servicio 6', N'Adrian Ramirez', N'1036598444', 51)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (7, N'Servicio 7', N'Adrian Ramirez', N'1036598444', 51)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (8, N'Servicio 8', N'Adrian Ramirez', N'1036598444', 52)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (9, N'Servicio 9', N'Adrian Ramirez', N'1036598444', 53)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (10, N'Servicio 10', N'Adrian Ramirez', N'1036598444', 51)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (11, N'Servicio 11', N'Adrian Ramirez', N'1036598444', 52)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (12, N'Servicio 12', N'Adrian Ramirez', N'1036598444', 47)
INSERT [dbo].[SolicitudServicios] ([IdServicio], [DescripcionServicio], [NombreTecnico], [IdTecnico], [IdFechaSolicitud]) VALUES (13, N'Servicio 13', N'Adrian Ramirez', N'1036598444', 48)
SET IDENTITY_INSERT [dbo].[SolicitudServicios] OFF
GO
/****** Object:  Index [IX_Estados]    Script Date: 20/02/2021 9:45:38 p. m. ******/
ALTER TABLE [dbo].[Estados] ADD  CONSTRAINT [IX_Estados] UNIQUE NONCLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SemanasAño]    Script Date: 20/02/2021 9:45:38 p. m. ******/
ALTER TABLE [dbo].[SemanasAño] ADD  CONSTRAINT [IX_SemanasAño] UNIQUE NONCLUSTERED 
(
	[IdFechaSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SolicitudServicios]    Script Date: 20/02/2021 9:45:38 p. m. ******/
ALTER TABLE [dbo].[SolicitudServicios] ADD  CONSTRAINT [IX_SolicitudServicios] UNIQUE NONCLUSTERED 
(
	[IdServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Reporte]  WITH CHECK ADD  CONSTRAINT [FK_Reporte_Estados] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([IdEstado])
GO
ALTER TABLE [dbo].[Reporte] CHECK CONSTRAINT [FK_Reporte_Estados]
GO
ALTER TABLE [dbo].[SemanasAño]  WITH CHECK ADD  CONSTRAINT [FK_SemanasAño_SemanasAño] FOREIGN KEY([IdFechaSolicitud])
REFERENCES [dbo].[SemanasAño] ([IdFechaSolicitud])
GO
ALTER TABLE [dbo].[SemanasAño] CHECK CONSTRAINT [FK_SemanasAño_SemanasAño]
GO
ALTER TABLE [dbo].[SolicitudServicios]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudServicios_SemanasAño] FOREIGN KEY([IdFechaSolicitud])
REFERENCES [dbo].[SemanasAño] ([IdFechaSolicitud])
GO
ALTER TABLE [dbo].[SolicitudServicios] CHECK CONSTRAINT [FK_SolicitudServicios_SemanasAño]
GO
/****** Object:  StoredProcedure [dbo].[SolicitudServicios_SP]    Script Date: 20/02/2021 9:45:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SolicitudServicios_SP] (
@opc int,
@IdSolicitud int,
@DescripcionServicio varchar(100),
@NombreTecnico varchar(100),
@IdTecnico varchar(10),
@FechaSolicitud date,
@FechaIni VARCHAR(10),
@FechaFin VARCHAR(10),
@HoraIni varchar(8),
@HoraFin varchar(8),
@SemanaAño int,
@Estado varchar(10)
	)
AS

/*Crear una nueva solicitud*/
IF @opc=1 BEGIN
   
   INSERT INTO SolicitudServicios
   SELECT @DescripcionServicio, @NombreTecnico, @IdTecnico, (SELECT IdFechaSolicitud FROM SemanasAño WHERE Fecha=CONVERT(date, @FechaSolicitud))

   INSERT INTO Reporte
   SELECT @IdTecnico, (SELECT  MAX(IdServicio) FROM SolicitudServicios S INNER JOIN SemanasAño A ON A.IdFechaSolicitud=S.IdFechaSolicitud WHERE A.Fecha=CONVERT(DATE, @FechaSolicitud) AND S.IdTecnico=@IdTecnico),NULL, NULL, 
   (SELECT IdEstado FROM Estados WHERE NombreEstado=@Estado)

END

/*Generar reporte*/
IF @opc=2 BEGIN

DECLARE @FECHIN DATETIME=CONVERT(DATETIME, @FechaIni+'T'+@HoraIni), @FECHFIN DATETIME=CONVERT(DATETIME, @FechaFin+'T'+@HoraFin)

       UPDATE Reporte
	   SET FechaInicio=CONVERT(DATETIME, @FechaIni+'T'+@HoraIni), FechaFin=CONVERT(DATETIME, @FechaFin+'T'+@HoraFin), IdEstado=(SELECT IdEstado FROM Estados WHERE NombreEstado=@Estado)
	   WHERE IdTecnico=@IdTecnico AND IdServicio=@IdSolicitud AND IdEstado=1


END

--/*Listar Servicios por ID Tecnico y Semana del Año*/
IF @opc=3 BEGIN
  
  --declare @SemanaAño int=8, @IdTecnico varchar(10)='1036598444'
    DECLARE @HorasDominicalesExtra int=0,@HorasExtraNocturnas int=0, @HorasExtraNormales int=0

    DECLARE @HorasNormales int=(
    SELECT SUM(DATEDIFF(MINUTE, R.FechaInicio,R.FechaFin))/60 HORAS FROM SolicitudServicios S INNER JOIN
	SemanasAño A ON S.IdFechaSolicitud=A.IdFechaSolicitud INNER JOIN
	Reporte R ON S.IdServicio=R.IdServicio
	WHERE S.IdTecnico=@IdTecnico AND A.SemanaAño=@SemanaAño AND A.DiaNombre NOT IN ('Domingo') AND
	DATEPART(HOUR, R.FechaInicio)  BETWEEN 7 AND 20 AND DATEPART(HOUR,R.FechaFin) BETWEEN 7 AND 20)

	DECLARE @HorasNocturnas int=(--declare @SemanaAño int=8, @IdTecnico varchar(10)='1036598444'
	SELECT SUM(DATEDIFF(MINUTE, R.FechaInicio,R.FechaFin))/60 HORAS FROM SolicitudServicios S INNER JOIN
	SemanasAño A ON S.IdFechaSolicitud=A.IdFechaSolicitud INNER JOIN
	Reporte R ON S.IdServicio=R.IdServicio
	WHERE S.IdTecnico=@IdTecnico AND A.SemanaAño=@SemanaAño AND A.DiaNombre NOT IN ('Domingo') AND
	DATEPART(HOUR, R.FechaInicio)  >= 20  AND DATEPART(HOUR,R.FechaFin) < 23 OR DATEPART(HOUR,R.FechaFin) <= 7  )

	DECLARE @HorasDominicales int=(--declare @SemanaAño int=8, @IdTecnico varchar(10)='1036598444'
	SELECT SUM(DATEDIFF(MINUTE, R.FechaInicio,R.FechaFin))/60 HORAS FROM SolicitudServicios S INNER JOIN
	SemanasAño A ON S.IdFechaSolicitud=A.IdFechaSolicitud INNER JOIN
	Reporte R ON S.IdServicio=R.IdServicio
	WHERE S.IdTecnico=@IdTecnico AND A.SemanaAño=@SemanaAño AND A.DiaNombre  IN ('Domingo') AND
	DATEPART(HOUR, R.FechaInicio)  BETWEEN 7 AND 20 AND DATEPART(HOUR,R.FechaFin) BETWEEN 7 AND 20)

	IF @HorasNormales>48 BEGIN

	    SET @HorasExtraNormales =@HorasNormales-48
		SET @HorasDominicalesExtra=@HorasDominicales

	END

    IF @HorasNocturnas>48 BEGIN

	    SET @HorasExtraNocturnas =@HorasNocturnas-48
		SET @HorasDominicalesExtra=@HorasDominicalesExtra+@HorasDominicales

	END

	SELECT @HorasNormales horasNormales, @HorasNocturnas horasNocturnas, @HorasExtraNormales ExtrasNormales,
	@HorasExtraNocturnas extrasNocturnas, @HorasDominicales Dominicales, @HorasDominicalesExtra ExtrasDominicales

END

IF @opc=4 BEGIN

    SELECT S.IdServicio, S.IdTecnico, S.NombreTecnico, E.NombreEstado,  Fecha FROM SolicitudServicios S INNER JOIN 
	SemanasAño A ON S.IdFechaSolicitud=A.IdFechaSolicitud INNER JOIN
	Reporte R ON S.IdServicio=R.IdServicio INNER JOIN
	Estados E ON R.IdEstado=E.IdEstado

END

IF @opc=5 BEGIN

    SELECT S.IdServicio, S.DescripcionServicio, S.NombreTecnico , S.IdTecnico FROM SolicitudServicios S INNER JOIN
	Reporte R ON S.IdServicio=R.IdServicio WHERE S.IdServicio=@IdSolicitud AND S.IdTecnico=@IdTecnico

END



GO
