USE [Ejemplos]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 26/06/2020 03:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[precio] [int] NULL,
	[fabricante] [varchar](50) NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[productos] ([id], [nombre], [precio], [fabricante]) VALUES (1, N'Disco duro 1TB', 900, N'Toshiba')
INSERT [dbo].[productos] ([id], [nombre], [precio], [fabricante]) VALUES (2, N'Memoria RAM DDR4 8GB', 1200, N'HyperX')
INSERT [dbo].[productos] ([id], [nombre], [precio], [fabricante]) VALUES (3, N'Disco SSD 1 TB', 5600, N'Samsung')
INSERT [dbo].[productos] ([id], [nombre], [precio], [fabricante]) VALUES (4, N'GeForce GTX 1050Ti', 2500, N'Gigabyte')
INSERT [dbo].[productos] ([id], [nombre], [precio], [fabricante]) VALUES (5, N'Monitor 24 LED Full HD', 2300, N'BenQ')
INSERT [dbo].[productos] ([id], [nombre], [precio], [fabricante]) VALUES (6, N'Gabinete Spec-04', 1600, N'Corsair')
INSERT [dbo].[productos] ([id], [nombre], [precio], [fabricante]) VALUES (7, N'Mouse Basilisk', 950, N'Razer')
INSERT [dbo].[productos] ([id], [nombre], [precio], [fabricante]) VALUES (8, N'Combo teclado mouse', 500, N'Logitech')
INSERT [dbo].[productos] ([id], [nombre], [precio], [fabricante]) VALUES (9, N'Ryzen 7 3700x', 7800, N'Amd')
INSERT [dbo].[productos] ([id], [nombre], [precio], [fabricante]) VALUES (10, N'Impresora Deskjet 3720', 3200, N'HP')
GO
