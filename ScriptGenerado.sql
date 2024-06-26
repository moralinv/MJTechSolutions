USE [MJTechSolutions]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 26/03/2024 09:58:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ID_Cliente] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Dirección] [nvarchar](255) NULL,
	[Teléfono] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Pedido]    Script Date: 26/03/2024 09:58:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Pedido](
	[ID_Detalle_Pedido] [int] NOT NULL,
	[ID_Pedido] [int] NULL,
	[ID_Producto] [int] NULL,
	[Cantidad] [int] NULL,
	[Precio_Unitario] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Detalle_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 26/03/2024 09:58:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[ID_Pedido] [int] NOT NULL,
	[ID_Cliente] [int] NULL,
	[Fecha_Pedido] [date] NULL,
	[Estado_Pedido] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 26/03/2024 09:58:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ID_Producto] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Descripción] [nvarchar](255) NULL,
	[Peso_Volumen] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 26/03/2024 09:58:12 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[ID_Ruta] [int] NOT NULL,
	[Descripción] [nvarchar](255) NULL,
	[Distancia_Total] [decimal](10, 2) NULL,
	[Tiempo_Entrega] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Ruta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Dirección], [Teléfono]) VALUES (1, N'Supermercado La Familia', N'Calle Principal 123', N'829-456-7890')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Dirección], [Teléfono]) VALUES (2, N'Restaurante El Buen Sabor', N'Avenida Gourmet 456', N'809-654-3210')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Dirección], [Teléfono]) VALUES (3, N'Ferretería La Herramienta', N'Calle del Progreso 789', N'849-222-3333')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Dirección], [Teléfono]) VALUES (4, N'Peluquería Estilo Elegante', N'Avenida de la Belleza 101', N'829-555-6666')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Dirección], [Teléfono]) VALUES (5, N'Farmacia San Rafael', N'Calle de la Salud 202', N'809-888-9999')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Dirección], [Teléfono]) VALUES (6, N'Supermercado FrescoMarket', N'Avenida de los Alimentos 303', N'849-222-1111')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Dirección], [Teléfono]) VALUES (7, N'Taller Mecánico Rápido y Seguro', N'Calle de los Repuestos 404', N'829-444-3333')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Dirección], [Teléfono]) VALUES (8, N'Cafetería El Sabor del Café', N'Avenida del Café 505', N'809-777-8888')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Dirección], [Teléfono]) VALUES (9, N'Librería Cultura y Saber', N'Calle de los Libros 606', N'849-888-7777')
INSERT [dbo].[Cliente] ([ID_Cliente], [Nombre], [Dirección], [Teléfono]) VALUES (10, N'Gimnasio Salud y Forma', N'Avenida del Deporte 707', N'829-333-4444')
GO
INSERT [dbo].[Detalle_Pedido] ([ID_Detalle_Pedido], [ID_Pedido], [ID_Producto], [Cantidad], [Precio_Unitario]) VALUES (1, 1, 1, 5, CAST(550.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Pedido] ([ID_Detalle_Pedido], [ID_Pedido], [ID_Producto], [Cantidad], [Precio_Unitario]) VALUES (2, 1, 3, 2, CAST(1250.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Pedido] ([ID_Detalle_Pedido], [ID_Pedido], [ID_Producto], [Cantidad], [Precio_Unitario]) VALUES (3, 2, 6, 1, CAST(1456.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Pedido] ([ID_Detalle_Pedido], [ID_Pedido], [ID_Producto], [Cantidad], [Precio_Unitario]) VALUES (4, 3, 10, 3, CAST(1699.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Pedido] ([ID_Detalle_Pedido], [ID_Pedido], [ID_Producto], [Cantidad], [Precio_Unitario]) VALUES (5, 4, 6, 2, CAST(450.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Pedido] ([ID_Detalle_Pedido], [ID_Pedido], [ID_Producto], [Cantidad], [Precio_Unitario]) VALUES (6, 4, 7, 1, CAST(1500.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Pedido] ([ID_Detalle_Pedido], [ID_Pedido], [ID_Producto], [Cantidad], [Precio_Unitario]) VALUES (7, 5, 8, 4, CAST(2678.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Pedido] ([ID_Detalle_Pedido], [ID_Pedido], [ID_Producto], [Cantidad], [Precio_Unitario]) VALUES (8, 6, 9, 2, CAST(1555.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Pedido] ([ID_Detalle_Pedido], [ID_Pedido], [ID_Producto], [Cantidad], [Precio_Unitario]) VALUES (9, 7, 10, 3, CAST(357.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_Pedido] ([ID_Detalle_Pedido], [ID_Pedido], [ID_Producto], [Cantidad], [Precio_Unitario]) VALUES (10, 8, 10, 1, CAST(1567.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Pedido] ([ID_Pedido], [ID_Cliente], [Fecha_Pedido], [Estado_Pedido]) VALUES (1, 1, CAST(N'2024-03-01' AS Date), N'En proceso')
INSERT [dbo].[Pedido] ([ID_Pedido], [ID_Cliente], [Fecha_Pedido], [Estado_Pedido]) VALUES (2, 3, CAST(N'2024-03-02' AS Date), N'Entregado')
INSERT [dbo].[Pedido] ([ID_Pedido], [ID_Cliente], [Fecha_Pedido], [Estado_Pedido]) VALUES (3, 5, CAST(N'2024-03-03' AS Date), N'En espera')
INSERT [dbo].[Pedido] ([ID_Pedido], [ID_Cliente], [Fecha_Pedido], [Estado_Pedido]) VALUES (4, 2, CAST(N'2024-03-04' AS Date), N'En proceso')
INSERT [dbo].[Pedido] ([ID_Pedido], [ID_Cliente], [Fecha_Pedido], [Estado_Pedido]) VALUES (5, 7, CAST(N'2024-03-05' AS Date), N'Entregado')
INSERT [dbo].[Pedido] ([ID_Pedido], [ID_Cliente], [Fecha_Pedido], [Estado_Pedido]) VALUES (6, 4, CAST(N'2024-03-06' AS Date), N'En espera')
INSERT [dbo].[Pedido] ([ID_Pedido], [ID_Cliente], [Fecha_Pedido], [Estado_Pedido]) VALUES (7, 6, CAST(N'2024-03-07' AS Date), N'En proceso')
INSERT [dbo].[Pedido] ([ID_Pedido], [ID_Cliente], [Fecha_Pedido], [Estado_Pedido]) VALUES (8, 8, CAST(N'2024-03-08' AS Date), N'Entregado')
INSERT [dbo].[Pedido] ([ID_Pedido], [ID_Cliente], [Fecha_Pedido], [Estado_Pedido]) VALUES (9, 10, CAST(N'2024-03-09' AS Date), N'En proceso')
INSERT [dbo].[Pedido] ([ID_Pedido], [ID_Cliente], [Fecha_Pedido], [Estado_Pedido]) VALUES (10, 9, CAST(N'2024-03-10' AS Date), N'En espera')
GO
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [Descripción], [Peso_Volumen]) VALUES (1, N'Leche', N'Leche entera pasteurizada', CAST(1.00 AS Decimal(10, 2)))
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [Descripción], [Peso_Volumen]) VALUES (2, N'Arroz', N'Arroz blanco de grano largo', CAST(2.00 AS Decimal(10, 2)))
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [Descripción], [Peso_Volumen]) VALUES (3, N'Desinfectante', N'Desinfectante de manos', CAST(0.05 AS Decimal(10, 2)))
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [Descripción], [Peso_Volumen]) VALUES (4, N'Antiséptico', N'Solución antiséptica', CAST(0.03 AS Decimal(10, 2)))
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [Descripción], [Peso_Volumen]) VALUES (5, N'Analgésico', N'Crema analgésica', CAST(0.08 AS Decimal(10, 2)))
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [Descripción], [Peso_Volumen]) VALUES (6, N'Camiseta', N'Camiseta de algodón', CAST(0.30 AS Decimal(10, 2)))
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [Descripción], [Peso_Volumen]) VALUES (7, N'Jeans', N'Pantalones vaqueros', CAST(0.50 AS Decimal(10, 2)))
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [Descripción], [Peso_Volumen]) VALUES (8, N'Zapatos', N'Zapatos de cuero', CAST(0.80 AS Decimal(10, 2)))
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [Descripción], [Peso_Volumen]) VALUES (9, N'Herramienta eléctrica', N'Taladro eléctrico', CAST(2.50 AS Decimal(10, 2)))
INSERT [dbo].[Producto] ([ID_Producto], [Nombre], [Descripción], [Peso_Volumen]) VALUES (10, N'Componente electrónico', N'Placa de circuito impreso', CAST(0.10 AS Decimal(10, 2)))
GO
INSERT [dbo].[Ruta] ([ID_Ruta], [Descripción], [Distancia_Total], [Tiempo_Entrega]) VALUES (1, N'Ruta 1 - Zona Este', CAST(50.50 AS Decimal(10, 2)), 120)
INSERT [dbo].[Ruta] ([ID_Ruta], [Descripción], [Distancia_Total], [Tiempo_Entrega]) VALUES (2, N'Ruta 2 - Zona Oeste', CAST(65.20 AS Decimal(10, 2)), 150)
INSERT [dbo].[Ruta] ([ID_Ruta], [Descripción], [Distancia_Total], [Tiempo_Entrega]) VALUES (3, N'Ruta 3 - Zona Norte', CAST(40.80 AS Decimal(10, 2)), 100)
INSERT [dbo].[Ruta] ([ID_Ruta], [Descripción], [Distancia_Total], [Tiempo_Entrega]) VALUES (4, N'Ruta 4 - Zona Sur', CAST(55.30 AS Decimal(10, 2)), 130)
INSERT [dbo].[Ruta] ([ID_Ruta], [Descripción], [Distancia_Total], [Tiempo_Entrega]) VALUES (5, N'Ruta 5 - Zona Central', CAST(48.60 AS Decimal(10, 2)), 110)
INSERT [dbo].[Ruta] ([ID_Ruta], [Descripción], [Distancia_Total], [Tiempo_Entrega]) VALUES (6, N'Ruta 6 - Zona Metropolitana', CAST(70.10 AS Decimal(10, 2)), 160)
INSERT [dbo].[Ruta] ([ID_Ruta], [Descripción], [Distancia_Total], [Tiempo_Entrega]) VALUES (7, N'Ruta 7 - Zona Rural', CAST(85.70 AS Decimal(10, 2)), 180)
INSERT [dbo].[Ruta] ([ID_Ruta], [Descripción], [Distancia_Total], [Tiempo_Entrega]) VALUES (8, N'Ruta 8 - Zona Industrial', CAST(60.40 AS Decimal(10, 2)), 140)
INSERT [dbo].[Ruta] ([ID_Ruta], [Descripción], [Distancia_Total], [Tiempo_Entrega]) VALUES (9, N'Ruta 9 - Zona Comercial', CAST(45.90 AS Decimal(10, 2)), 105)
INSERT [dbo].[Ruta] ([ID_Ruta], [Descripción], [Distancia_Total], [Tiempo_Entrega]) VALUES (10, N'Ruta 10 - Zona Residencial', CAST(52.00 AS Decimal(10, 2)), 115)
GO
ALTER TABLE [dbo].[Detalle_Pedido]  WITH CHECK ADD FOREIGN KEY([ID_Pedido])
REFERENCES [dbo].[Pedido] ([ID_Pedido])
GO
ALTER TABLE [dbo].[Detalle_Pedido]  WITH CHECK ADD FOREIGN KEY([ID_Producto])
REFERENCES [dbo].[Producto] ([ID_Producto])
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[Cliente] ([ID_Cliente])
GO
