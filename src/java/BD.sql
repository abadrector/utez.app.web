CREATE DATABASE [bdlibros]
GO
USE [bdlibros]
GO
/****** Object:  Table [dbo].[editorial]    Script Date: 07/23/2014 19:31:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[editorial](
	[editorial_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](45) NOT NULL,
	[activo] [bit] NULL,
 CONSTRAINT [pk_editorail] PRIMARY KEY CLUSTERED 
(
	[editorial_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[editorial] ON
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (1, N'CLACSO', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (2, N'SM DE EDICIONES', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (3, N'EDICIONES ERA', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (4, N'EDICIONES CASTILLO', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (5, N'VERGARA Y RIBA EDITORAS', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (6, N'ANDINA', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (7, N'ALFAGUARA', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (8, N'CARALT', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (9, N'S.M.', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (10, N'PLAZA & JANÉS', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (11, N'EDITORIAL PLANETA', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (12, N'UMBRIEL EDITORES', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (13, N'CONTACTO', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (14, N'LITTLE, BROWN & COMPANY', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (15, N'MACMILLAN PUBLISHERS', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (16, N'PROMOLIBRO', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (17, N'TENDENCIAS', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (18, N'DESTINO', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (19, N'LID', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (20, N'DC COMICS: MEXICO', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (21, N'PLANETA', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (22, N'VERGARA', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (23, N'COLECCION ENIGMAS', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (24, N'SALVAT', 1)
INSERT [dbo].[editorial] ([editorial_id], [nombre], [activo]) VALUES (25, N'DEBOLSILLO', 1)
SET IDENTITY_INSERT [dbo].[editorial] OFF
/****** Object:  Table [dbo].[autor]    Script Date: 07/23/2014 19:31:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[autor](
	[autor_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[activo] [bit] NULL,
 CONSTRAINT [pk_autor] PRIMARY KEY CLUSTERED 
(
	[autor_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[autor] ON
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (1, N'José Contreras Domingo', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (2, N'Claudia Celis Aguirre', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (3, N'Juan Gelma', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (4, N'John Green', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (5, N'James Dashner', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (6, N'Antoine Saint Exupery', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (7, N'William Faulkner', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (8, N'Pu-Yi', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (9, N'Henry Kissinger', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (10, N'Pérez Galdós', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (11, N'Paulo Coelho', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (12, N'Dan Brown', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (13, N'Ana Frank', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (14, N'Stephenie Meyer', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (15, N'Margaret Mitchell', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (16, N'Marti Vilar, Manuel', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (17, N'Chris Anderson', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (18, N'Edward Punset', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (19, N'Pat Fallon y Fred Senn', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (20, N'Frank Miller', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (21, N'Angeles Mastreta', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (22, N'Deepak Chopra', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (23, N'Erik Von Daniken', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (24, N'Salvat Editores', 1)
INSERT [dbo].[autor] ([autor_id], [nombre], [activo]) VALUES (25, N'Cormac Mc Carthy', 1)
SET IDENTITY_INSERT [dbo].[autor] OFF
/****** Object:  Table [dbo].[area]    Script Date: 07/23/2014 19:31:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[area](
	[area_id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](20) NOT NULL,
	[activo] [bit] NULL,
 CONSTRAINT [pk_area] PRIMARY KEY CLUSTERED 
(
	[area_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[area] ON
INSERT [dbo].[area] ([area_id], [descripcion], [activo]) VALUES (1, N'Economia', 1)
INSERT [dbo].[area] ([area_id], [descripcion], [activo]) VALUES (2, N'Ciencia y tecnologia', 1)
INSERT [dbo].[area] ([area_id], [descripcion], [activo]) VALUES (3, N'Derecho', 1)
INSERT [dbo].[area] ([area_id], [descripcion], [activo]) VALUES (4, N'Psicologia', 1)
INSERT [dbo].[area] ([area_id], [descripcion], [activo]) VALUES (5, N'Matematicas', 1)
INSERT [dbo].[area] ([area_id], [descripcion], [activo]) VALUES (6, N'Narrativa', 1)
INSERT [dbo].[area] ([area_id], [descripcion], [activo]) VALUES (7, N'Cuentos', 1)
INSERT [dbo].[area] ([area_id], [descripcion], [activo]) VALUES (8, N'Infantiles', 1)
SET IDENTITY_INSERT [dbo].[area] OFF
/****** Object:  Table [dbo].[libro]    Script Date: 07/23/2014 19:31:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[libro](
	[libro_id] [int] IDENTITY(1,1) NOT NULL,
	[isbn] [varchar](20) NOT NULL,
	[titulo] [varchar](45) NOT NULL,
	[num_pag] [int] NOT NULL,
	[editorial_id] [int] NOT NULL,
	[area_id] [int] NOT NULL,
	[activo] [bit] NULL,
 CONSTRAINT [pk_libro] PRIMARY KEY CLUSTERED 
(
	[libro_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[libro] ON
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (1, N'9789871785094', N'El saber de la experiencia', 189, 1, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (2, N'9786074714661', N'Donde habitan los ángeles', 124, 2, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (3, N'9786074453324', N'Hoy', 307, 3, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (4, N'9702008581', N'Buscando a alaska', 320, 4, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (5, N'9786077547327', N'Correr o morir', 400, 5, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (6, N'3293000010', N'El principito', 120, 6, 8, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (7, N'3293000029', N'Historias de Nueva Orleans', 168, 7, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (8, N'3293000037', N'El Último Emperador', 150, 8, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (9, N'3293000045', N'Diplomacia', 139, 9, 3, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (10, N'3293000053', N'Fortunata y Jacinta', 210, 10, 7, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (11, N'9788408045076', N'El alquimista', 176, 11, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (12, N'8495618605', N'El código Da Vinci', 557, 12, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (13, N'9681500555', N'Diario de Ana Frank', 206, 13, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (14, N'0316160172', N'Crepúsculo', 544, 14, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (15, N'9788496778450', N'Gone with the Wind', 1037, 15, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (16, N'8479863757', N'Procesos basicos en la psicologia', 125, 16, 4, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (17, N'97884993696108', N'El Futuro de un precio radical', 352, 17, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (18, N'978842334288', N'Viaje al poder de la mente', 364, 18, 4, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (19, N'9788488717511', N'Exprime la idea', 216, 19, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (20, N'509997098005', N'Batman: The Dark Knight Returns', 121, 20, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (21, N'9684069200', N'Mal de amores', 236, 21, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (22, N'8466608273', N'Cuerpos sin edad mentes sin tiempo', 251, 22, 4, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (23, N'8427029217', N'La respuesta de los dioses', 366, 23, 2, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (24, N'9972752704', N'Historia universal', 391, 24, 2, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (25, N'9786074293258', N'La carretera', 155, 25, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (26, N'9789871785094', N'El saber de la experiencia2', 189, 1, 6, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (27, N'122122121212112', N'Utez prog. Web', 222, 23, 2, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (28, N'334243', N'prog. Utez ACH', 33, 4, 2, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (29, N'333', N'sss', 342, 23, 3, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (30, N'234234', N're', 2323, 23, 8, 1)
INSERT [dbo].[libro] ([libro_id], [isbn], [titulo], [num_pag], [editorial_id], [area_id], [activo]) VALUES (31, N'9789871785094', N'El saber de la experiencia2', 189, 1, 6, 1)
SET IDENTITY_INSERT [dbo].[libro] OFF
/****** Object:  Table [dbo].[escribe]    Script Date: 07/23/2014 19:31:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[escribe](
	[escribe_id] [int] IDENTITY(1,1) NOT NULL,
	[autor_id] [int] NOT NULL,
	[libro_id] [int] NOT NULL,
	[activo] [bit] NULL,
 CONSTRAINT [pk_escribe] PRIMARY KEY CLUSTERED 
(
	[escribe_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[escribe] ON
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (1, 1, 1, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (2, 2, 2, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (3, 3, 3, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (4, 4, 4, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (5, 5, 5, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (6, 6, 6, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (7, 7, 7, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (8, 8, 8, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (9, 9, 9, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (10, 10, 10, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (11, 11, 11, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (12, 12, 12, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (13, 13, 13, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (14, 14, 14, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (15, 15, 15, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (16, 16, 16, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (17, 17, 17, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (18, 18, 18, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (19, 19, 19, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (20, 20, 20, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (21, 21, 21, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (22, 22, 22, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (23, 23, 23, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (24, 24, 24, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (25, 25, 25, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (26, 21, 10, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (27, 22, 10, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (28, 23, 10, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (29, 18, 27, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (30, 22, 28, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (31, 13, 29, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (32, 6, 30, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (33, 13, 30, 1)
INSERT [dbo].[escribe] ([escribe_id], [autor_id], [libro_id], [activo]) VALUES (34, 21, 30, 1)
SET IDENTITY_INSERT [dbo].[escribe] OFF
/****** Object:  Default [DF__area__activo__08EA5793]    Script Date: 07/23/2014 19:31:30 ******/
ALTER TABLE [dbo].[area] ADD  DEFAULT ((1)) FOR [activo]
GO
/****** Object:  Default [DF__autor__activo__07F6335A]    Script Date: 07/23/2014 19:31:30 ******/
ALTER TABLE [dbo].[autor] ADD  DEFAULT ((1)) FOR [activo]
GO
/****** Object:  Default [DF__editorial__activ__07020F21]    Script Date: 07/23/2014 19:31:30 ******/
ALTER TABLE [dbo].[editorial] ADD  DEFAULT ((1)) FOR [activo]
GO
/****** Object:  Default [DF__escribe__activo__0AD2A005]    Script Date: 07/23/2014 19:31:30 ******/
ALTER TABLE [dbo].[escribe] ADD  DEFAULT ((1)) FOR [activo]
GO
/****** Object:  Default [DF__libro__activo__09DE7BCC]    Script Date: 07/23/2014 19:31:30 ******/
ALTER TABLE [dbo].[libro] ADD  DEFAULT ((1)) FOR [activo]
GO
/****** Object:  ForeignKey [fk_escribe_autor]    Script Date: 07/23/2014 19:31:30 ******/
ALTER TABLE [dbo].[escribe]  WITH CHECK ADD  CONSTRAINT [fk_escribe_autor] FOREIGN KEY([autor_id])
REFERENCES [dbo].[autor] ([autor_id])
GO
ALTER TABLE [dbo].[escribe] CHECK CONSTRAINT [fk_escribe_autor]
GO
/****** Object:  ForeignKey [fk_escribe_libro]    Script Date: 07/23/2014 19:31:30 ******/
ALTER TABLE [dbo].[escribe]  WITH CHECK ADD  CONSTRAINT [fk_escribe_libro] FOREIGN KEY([libro_id])
REFERENCES [dbo].[libro] ([libro_id])
GO
ALTER TABLE [dbo].[escribe] CHECK CONSTRAINT [fk_escribe_libro]
GO
/****** Object:  ForeignKey [fk_libro_area]    Script Date: 07/23/2014 19:31:30 ******/
ALTER TABLE [dbo].[libro]  WITH CHECK ADD  CONSTRAINT [fk_libro_area] FOREIGN KEY([area_id])
REFERENCES [dbo].[area] ([area_id])
GO
ALTER TABLE [dbo].[libro] CHECK CONSTRAINT [fk_libro_area]
GO
/****** Object:  ForeignKey [fk_libro_editorial]    Script Date: 07/23/2014 19:31:30 ******/
ALTER TABLE [dbo].[libro]  WITH CHECK ADD  CONSTRAINT [fk_libro_editorial] FOREIGN KEY([editorial_id])
REFERENCES [dbo].[editorial] ([editorial_id])
GO
ALTER TABLE [dbo].[libro] CHECK CONSTRAINT [fk_libro_editorial]
GO
