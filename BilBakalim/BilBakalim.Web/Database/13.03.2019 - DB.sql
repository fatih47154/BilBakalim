USE [BilBakalimDB]
GO
/****** Object:  Table [dbo].[Dİl]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dİl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Dİl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favori]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
	[SinifID] [int] NULL,
 CONSTRAINT [PK_dbo.Favori] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[KullaniciAdi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[Durum] [bit] NULL,
	[ResimID] [int] NULL,
	[RolID] [int] NULL,
 CONSTRAINT [PK_dbo.Kullanici] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciResim]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciResim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.KullaniciResim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[ParentMenuID] [int] NULL,
	[Controller] [nvarchar](50) NULL,
	[Action] [nvarchar](50) NULL,
	[AcilirMenu] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuRol]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuRol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RolId] [int] NULL,
	[MenuId] [int] NULL,
 CONSTRAINT [PK_MenuRol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rapor]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rapor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OyunZaman] [datetime] NULL,
	[SınıfID] [int] NULL,
	[KullaniciID] [int] NULL,
	[KisiSayisi] [int] NULL,
 CONSTRAINT [PK_dbo.Rapor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resim]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](500) NULL,
	[ResimKategoriID] [int] NULL,
 CONSTRAINT [PK_dbo.Resim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResimKategori]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResimKategori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](75) NULL,
 CONSTRAINT [PK_dbo.ResimKategori] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RolAdi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](500) NULL,
 CONSTRAINT [PK_dbo.Rol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinif]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinif](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](75) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[Gorunurluk] [bit] NULL,
	[OlusturmaTarihi] [datetime] NULL,
	[GoruntulenmeSayisi] [int] NULL,
	[LisanID] [int] NULL,
	[ResimID] [int] NULL,
	[VideoUrl] [nvarchar](500) NULL,
	[KullaniciID] [int] NULL,
	[SinifKategoriID] [int] NULL,
 CONSTRAINT [PK_dbo.Sinif] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinifKategori]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinifKategori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](75) NULL,
	[ResimID] [int] NULL,
 CONSTRAINT [PK_dbo.SinifKategori] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sorular]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sorular](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Soru] [nvarchar](500) NULL,
	[Sure] [int] NULL,
	[Odul] [bit] NULL,
	[MedyaID] [int] NULL,
	[Cevap1] [nvarchar](500) NULL,
	[Cevap2] [nvarchar](500) NULL,
	[Cevap3] [nvarchar](500) NULL,
	[Cevap4] [nvarchar](500) NULL,
	[DogruCevap] [char](6) NULL,
	[SinifID] [int] NULL,
 CONSTRAINT [PK_dbo.Sorular] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Takip]    Script Date: 13.03.2019 15:29:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Takip](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TakipEdenID] [int] NULL,
	[TakipEdilenID] [int] NULL,
 CONSTRAINT [PK_dbo.Takip] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID]) VALUES (8, N'Emre', N'Kaymak', N'emre@gmail.com', NULL, N'emrekymk', N'lu0c+GqlVMQ=', 1, 1, 2)
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID]) VALUES (9, N'Fatih', N'Karaüzüm', N'fatih47154@gmail.com', NULL, N'fatih47154', N'lu0c+GqlVMQ=', 1, 1, 2)
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[KullaniciResim] ON 

INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (1, N'~/Images/Users/Default.png')
SET IDENTITY_INSERT [dbo].[KullaniciResim] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (2, N'Kullanıcı', NULL)
SET IDENTITY_INSERT [dbo].[Rol] OFF
ALTER TABLE [dbo].[Favori]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Favori_dbo.Kullanici_KullaniciID] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanici] ([ID])
GO
ALTER TABLE [dbo].[Favori] CHECK CONSTRAINT [FK_dbo.Favori_dbo.Kullanici_KullaniciID]
GO
ALTER TABLE [dbo].[Favori]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Favori_dbo.Sinif_SinifID] FOREIGN KEY([SinifID])
REFERENCES [dbo].[Sinif] ([ID])
GO
ALTER TABLE [dbo].[Favori] CHECK CONSTRAINT [FK_dbo.Favori_dbo.Sinif_SinifID]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Kullanici_dbo.KullaniciResim_ResimID] FOREIGN KEY([ResimID])
REFERENCES [dbo].[KullaniciResim] ([ID])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_dbo.Kullanici_dbo.KullaniciResim_ResimID]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Kullanici_dbo.Rol_RolID] FOREIGN KEY([RolID])
REFERENCES [dbo].[Rol] ([ID])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_dbo.Kullanici_dbo.Rol_RolID]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Menu] FOREIGN KEY([ParentMenuID])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Menu]
GO
ALTER TABLE [dbo].[MenuRol]  WITH CHECK ADD  CONSTRAINT [FK_MenuRol_Menu] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[MenuRol] CHECK CONSTRAINT [FK_MenuRol_Menu]
GO
ALTER TABLE [dbo].[MenuRol]  WITH CHECK ADD  CONSTRAINT [FK_MenuRol_Rol] FOREIGN KEY([RolId])
REFERENCES [dbo].[Rol] ([ID])
GO
ALTER TABLE [dbo].[MenuRol] CHECK CONSTRAINT [FK_MenuRol_Rol]
GO
ALTER TABLE [dbo].[Rapor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rapor_dbo.Kullanici_KullaniciID] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanici] ([ID])
GO
ALTER TABLE [dbo].[Rapor] CHECK CONSTRAINT [FK_dbo.Rapor_dbo.Kullanici_KullaniciID]
GO
ALTER TABLE [dbo].[Rapor]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rapor_dbo.Sinif_SınıfID] FOREIGN KEY([SınıfID])
REFERENCES [dbo].[Sinif] ([ID])
GO
ALTER TABLE [dbo].[Rapor] CHECK CONSTRAINT [FK_dbo.Rapor_dbo.Sinif_SınıfID]
GO
ALTER TABLE [dbo].[Resim]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Resim_dbo.ResimKategori_ResimKategoriID] FOREIGN KEY([ResimKategoriID])
REFERENCES [dbo].[ResimKategori] ([ID])
GO
ALTER TABLE [dbo].[Resim] CHECK CONSTRAINT [FK_dbo.Resim_dbo.ResimKategori_ResimKategoriID]
GO
ALTER TABLE [dbo].[Sinif]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sinif_dbo.Dİl_LisanID] FOREIGN KEY([LisanID])
REFERENCES [dbo].[Dİl] ([ID])
GO
ALTER TABLE [dbo].[Sinif] CHECK CONSTRAINT [FK_dbo.Sinif_dbo.Dİl_LisanID]
GO
ALTER TABLE [dbo].[Sinif]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sinif_dbo.Kullanici_KullaniciID] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanici] ([ID])
GO
ALTER TABLE [dbo].[Sinif] CHECK CONSTRAINT [FK_dbo.Sinif_dbo.Kullanici_KullaniciID]
GO
ALTER TABLE [dbo].[Sinif]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sinif_dbo.Resim_ResimID] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resim] ([ID])
GO
ALTER TABLE [dbo].[Sinif] CHECK CONSTRAINT [FK_dbo.Sinif_dbo.Resim_ResimID]
GO
ALTER TABLE [dbo].[Sinif]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sinif_dbo.SinifKategori_SinifKategoriID] FOREIGN KEY([SinifKategoriID])
REFERENCES [dbo].[SinifKategori] ([ID])
GO
ALTER TABLE [dbo].[Sinif] CHECK CONSTRAINT [FK_dbo.Sinif_dbo.SinifKategori_SinifKategoriID]
GO
ALTER TABLE [dbo].[SinifKategori]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SinifKategori_dbo.Resim_ResimID] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resim] ([ID])
GO
ALTER TABLE [dbo].[SinifKategori] CHECK CONSTRAINT [FK_dbo.SinifKategori_dbo.Resim_ResimID]
GO
ALTER TABLE [dbo].[Sorular]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sorular_dbo.Sinif_SinifID] FOREIGN KEY([SinifID])
REFERENCES [dbo].[Sinif] ([ID])
GO
ALTER TABLE [dbo].[Sorular] CHECK CONSTRAINT [FK_dbo.Sorular_dbo.Sinif_SinifID]
GO
ALTER TABLE [dbo].[Takip]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Takip_dbo.Kullanici_TakipEdenID] FOREIGN KEY([TakipEdenID])
REFERENCES [dbo].[Kullanici] ([ID])
GO
ALTER TABLE [dbo].[Takip] CHECK CONSTRAINT [FK_dbo.Takip_dbo.Kullanici_TakipEdenID]
GO
ALTER TABLE [dbo].[Takip]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Takip_dbo.Kullanici_TakipEdilenID] FOREIGN KEY([TakipEdilenID])
REFERENCES [dbo].[Kullanici] ([ID])
GO
ALTER TABLE [dbo].[Takip] CHECK CONSTRAINT [FK_dbo.Takip_dbo.Kullanici_TakipEdilenID]
GO
