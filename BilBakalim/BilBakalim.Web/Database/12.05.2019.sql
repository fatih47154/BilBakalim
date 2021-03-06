USE [BilBakalimDB]
GO
/****** Object:  Table [dbo].[Anket]    Script Date: 12.05.2019 16:53:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](75) NULL,
	[Aciklama] [nvarchar](500) NULL,
	[Gorunurluk] [bit] NULL,
	[OlusturmaTarihi] [datetime] NULL,
	[GoruntulenmeSayisi] [int] NULL,
	[LisanID] [int] NULL,
	[ResimID] [int] NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_Anket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnketCevap]    Script Date: 12.05.2019 16:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnketCevap](
	[ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnketSoru]    Script Date: 12.05.2019 16:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnketSoru](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Soru] [nvarchar](500) NULL,
	[MedyaID] [int] NULL,
	[Cevap1] [nvarchar](500) NULL,
	[Cevap2] [nvarchar](500) NULL,
	[Cevap3] [nvarchar](500) NULL,
	[Cevap4] [nvarchar](500) NULL,
	[AnketID] [int] NULL,
 CONSTRAINT [PK_AnketSoru] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dİl]    Script Date: 12.05.2019 16:53:21 ******/
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
/****** Object:  Table [dbo].[Favori]    Script Date: 12.05.2019 16:53:21 ******/
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
/****** Object:  Table [dbo].[Iletisim]    Script Date: 12.05.2019 16:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iletisim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Isim] [nvarchar](50) NULL,
	[Eposta] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Icerik] [nvarchar](500) NULL,
	[Tarih] [smalldatetime] NULL,
 CONSTRAINT [PK_Iletisim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 12.05.2019 16:53:21 ******/
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
	[EskiSifre] [nvarchar](50) NULL,
	[OlusturmaTarihi] [date] NULL,
 CONSTRAINT [PK_dbo.Kullanici] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciResim]    Script Date: 12.05.2019 16:53:21 ******/
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
/****** Object:  Table [dbo].[Menu]    Script Date: 12.05.2019 16:53:21 ******/
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
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuRol]    Script Date: 12.05.2019 16:53:21 ******/
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
/****** Object:  Table [dbo].[Rapor]    Script Date: 12.05.2019 16:53:21 ******/
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
/****** Object:  Table [dbo].[Resim]    Script Date: 12.05.2019 16:53:21 ******/
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
/****** Object:  Table [dbo].[ResimKategori]    Script Date: 12.05.2019 16:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResimKategori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](75) NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_dbo.ResimKategori] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 12.05.2019 16:53:21 ******/
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
/****** Object:  Table [dbo].[Sinif]    Script Date: 12.05.2019 16:53:21 ******/
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
/****** Object:  Table [dbo].[SinifKategori]    Script Date: 12.05.2019 16:53:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinifKategori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](75) NULL,
	[ResimID] [int] NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_dbo.SinifKategori] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sorular]    Script Date: 12.05.2019 16:53:21 ******/
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
/****** Object:  Table [dbo].[Takip]    Script Date: 12.05.2019 16:53:21 ******/
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
SET IDENTITY_INSERT [dbo].[Dİl] ON 

INSERT [dbo].[Dİl] ([ID], [Adi]) VALUES (1, N'Türkçe')
INSERT [dbo].[Dİl] ([ID], [Adi]) VALUES (2, N'İnglizce')
INSERT [dbo].[Dİl] ([ID], [Adi]) VALUES (3, N'Almanca')
INSERT [dbo].[Dİl] ([ID], [Adi]) VALUES (4, N'Rusça')
SET IDENTITY_INSERT [dbo].[Dİl] OFF
SET IDENTITY_INSERT [dbo].[Favori] ON 

INSERT [dbo].[Favori] ([ID], [KullaniciID], [SinifID]) VALUES (1, 10, 1)
INSERT [dbo].[Favori] ([ID], [KullaniciID], [SinifID]) VALUES (2, 11, 1)
INSERT [dbo].[Favori] ([ID], [KullaniciID], [SinifID]) VALUES (3, 10, 2)
SET IDENTITY_INSERT [dbo].[Favori] OFF
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (10, N'Emre', N'Kaymak', N'emrekymk1996@gmail.com', NULL, N'emre', N'lu0c+GqlVMQ=', 1, 2, 1, NULL, CAST(N'2019-05-12' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (11, N'Fatih', N'Karaüzüm', N'fatih@gmail.com', NULL, N'fatih', NULL, 1, 3, 1, NULL, CAST(N'2019-05-12' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (12, N'Mert Sait', N'Varol', N'mert@gmail.com', NULL, N'mert', N'lu0c+GqlVMQ=', 1, 4, 1, NULL, CAST(N'2019-05-12' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (13, N'Resul ', N'Kara', N'resulkara@duzce.edu.tr', NULL, N'resul', N'lu0c+GqlVMQ=', 1, 1, 1, NULL, CAST(N'2019-05-12' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (14, N'Erdi', N'Yalçın', N'erdiyalcin@duzce.edu.tr', NULL, N'erdi', N'lu0c+GqlVMQ=', 1, 1, 1, NULL, CAST(N'2019-05-12' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (15, N'Pakize', N'Erdoğmuş', N'pakizeerdogmus@duzce.edu.tr', NULL, N'pakize', N'lu0c+GqlVMQ=', 1, 1, 2, NULL, CAST(N'2018-05-11' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (16, N'Fatih', N'Kayaalp', N'fatihkayaalp@duzce.edu.tr', NULL, N'fatihkaya', N'lu0c+GqlVMQ=', 1, 1, 2, NULL, CAST(N'2018-05-11' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (17, N'Mehmet', N'Özçelik', N'mehmet@gmail.com', NULL, N'mehmet', NULL, 1, 1, 2, NULL, CAST(N'2018-05-11' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (21, N'ömer', N'kaymak', N'omer@gmail.com', NULL, N'omer', N'123', NULL, 2, 1, NULL, CAST(N'2018-05-11' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (22, N'deneme', N'sadsa', N'dasd@gmail.com', NULL, N'sdsd', N'dsd', NULL, NULL, 1, NULL, CAST(N'2018-05-11' AS Date))
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[KullaniciResim] ON 

INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (1, N'/Content/Resimler/Kullanici/d19f6f35-91ab-4b5b-b8ca-ec87e35153bd.jpg')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (2, N'/Content/Resimler/Kullanici/d19f6f35-91ab-4b5b-b8ca-ec87e35153bd.jpg')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (3, N'/Content/Resimler/Kullanici/a4c45ea1-7a6a-4d8c-bc3e-cb7d98e69a16.jpg')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (4, N'/Content/Resimler/Kullanici/c8a184fe-8070-492f-aec7-db206c87a204.png')
SET IDENTITY_INSERT [dbo].[KullaniciResim] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (1, N'Site Git', N' icon-arrow-right', NULL, N'Home', N'Index', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (2, N'Kullanıcı Listesi', N'icon-user', 3, N'Admin', N'KullaniciListesi', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (3, N'Kullanici İşlemleri', N'icon-user', NULL, NULL, NULL, 1, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (4, N'Rol Listesi', N'icon-group', 18, N'Admin', N'RolListesi', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (6, N'Menü İşlemleri', N'icon-group', NULL, NULL, NULL, 1, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (7, N'xczxczx', N'xczcxzcz', NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (8, N'Menü Listesi', N'icon-group', 6, N'Menu', N'MenuListesi', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (9, N'Oyunlar', N'icon-group', NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (10, N'Deneme', N'icon-group', NULL, NULL, NULL, 1, 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (11, N'Emre', N'icon-group', NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (12, N'das', N'sadad', NULL, NULL, NULL, 0, 0)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (13, N'Sınıf İşlemleri', N'icon-gamepad', NULL, NULL, NULL, 1, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (14, N'Sınıf Kategoriler', N'icon-group', 13, N'Sinif', N'Index', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (15, N'Sinif Ekle', NULL, 13, N'Sinif', N'SinifEkle', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (16, N'Kullanıcı Ekle', N'icon-user', 3, N'Admin', N'KullaniciEkle', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (17, N'Menü Ekle', N'icon-group', 6, N'Menu', N'MenuEkle', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (18, N'Rol İşlemleri', N' icon-list-alt', NULL, NULL, NULL, 1, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (20, N'İletişim  İşlemleri', N'icon-envelope', NULL, N'Admin', N'IletisimListele', 1, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (21, N'Kategori İşlemleri', N'icon-sitemap', NULL, NULL, NULL, 1, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (22, N'Resim Kategori', N'icon-user', 21, N'Admin', N'ResimKategori', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (23, N'Sınıf Kategori', N'icon-user', 21, N'Admin', N'SinifKategori', 0, 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[MenuRol] ON 

INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (92, 1, 1)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (93, 1, 2)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (94, 1, 3)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (95, 1, 4)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (96, 1, 6)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (97, 1, 8)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (98, 1, 13)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (99, 1, 14)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (100, 1, 15)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (101, 1, 16)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (102, 1, 17)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (103, 1, 18)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (104, 1, 20)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (105, 1, 21)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (106, 1, 22)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (107, 1, 23)
SET IDENTITY_INSERT [dbo].[MenuRol] OFF
SET IDENTITY_INSERT [dbo].[Resim] ON 

INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (1, N'/Content/images/adiyaman.jpg', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (2, N'/Content/Home/assets\img\newarrival\img1.jpeg', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (3, N'/Content/images/mat.jpg', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (4, N'/Content/images/bilim.jpg', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (5, N'/Content/images/tarih.jpg', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (6, N'/Content/images/teknoloji.jpg', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (7, N'/Content/images/ing.jpg', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (8, N'/Content/images/foto.jpg', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (9, N'/Content/images/film.jpg', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (10, N'/Content/images/muzik.jpg', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (11, N'/Content/images/fb.png', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (12, N'/Content/images/resim.png', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (13, N'/Content/images/spor.jpg', NULL)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (14, N'/Content/images/fb.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Resim] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (1, N'Admin', N'Bütün yetkilere sahip')
INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (2, N'Kullanıcı', N'Sistemdeki oyunları oynamak için kayıt olan kişiler')
INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (9, N'Yazar', N'Yeni sorular eklemek için görevli')
SET IDENTITY_INSERT [dbo].[Rol] OFF
SET IDENTITY_INSERT [dbo].[Sinif] ON 

INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (1, N'Atatürkü ne zaman hayata gözlerini yumdu?', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 150, 1, 1, NULL, 10, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (2, N'FENERBAHÇE', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 100, 1, 11, NULL, 11, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (3, N'Düzce Üniversitesi', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 100, 1, 1, NULL, 12, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (5, N'Erdi YALÇIN', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 0, 1, 12, NULL, 10, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (6, N'dsadasdadsd', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 0, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 0, 1, 1, NULL, 11, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (7, N'dsadasdadsd', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 0, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 2, 1, NULL, 12, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (8, N'dsadasdadsd', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 0, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 2, 1, NULL, 11, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (9, N'dsadasdadsd', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 0, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 2, 1, NULL, 11, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (10, N'v', N'0', 0, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 2, 1, NULL, 11, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (11, N'dsadasdadsd', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 3, 1, NULL, 11, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (12, N'vv', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 0, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 3, 1, NULL, 11, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (13, N'dsadasdadsd', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 3, 1, NULL, 11, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (14, N'v', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 0, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 4, 1, NULL, 11, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (15, N'dsadasdadsd', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2019-05-11T00:00:00.000' AS DateTime), 10, 4, 1, NULL, 11, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (16, N'dsadasdadsd', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 0, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 1500, 4, 1, NULL, 11, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (17, N'emre', N'asdasdasdasds', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 1500, 4, 1, NULL, 10, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (18, N'emre2', N'asdasdasdasds', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 100, 4, 1, NULL, 10, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (19, N'emre', N'sdsadsad', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 100, 2, 1, NULL, 10, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (33, N'son deneme', N'asdasdasdasds', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 2, 1, NULL, 10, 8)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (34, N'aSASas', N'sdsadsadsadsaddddddddddddd aasdsadsadsad sad asdsad asdas dsa dsa dsad as dasds a s das', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 4, 2, NULL, 10, 6)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (35, N'emre', N'sdsadsadsadsaddddddddddddd aasdsadsadsad sad asdsad asdas dsa dsa dsad as dasds a s das', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 1, 2, NULL, 10, 6)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (36, N'emre2', N'sdsadsadsadsaddddddddddddd aasdsadsadsad sad asdsad asdas dsa dsa dsad as dasds a s das', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 2, 2, NULL, 10, 5)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (37, N'deneme', N'sdsadsadsadsaddddddddddddd aasdsadsadsad sad asdsad asdas dsa dsa dsad as dasds a s das', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 0, 3, 2, NULL, 10, 5)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (44, N'Atatürkün Hayatı', N'atAtürk', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 0, 1, 2, NULL, 10, 2)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (45, N'Atatürkün Hayatı', N'Atatürkün Hayatı', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 2, 1, 1, NULL, 10, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID]) VALUES (46, N'Fenerbahçe', N'Fenerbahçe tarihi', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 150, 1, 14, NULL, 10, 9)
SET IDENTITY_INSERT [dbo].[Sinif] OFF
SET IDENTITY_INSERT [dbo].[SinifKategori] ON 

INSERT [dbo].[SinifKategori] ([ID], [KategoriAdi], [ResimID], [Aktif]) VALUES (1, N'Matematik', 3, 1)
INSERT [dbo].[SinifKategori] ([ID], [KategoriAdi], [ResimID], [Aktif]) VALUES (2, N'Bilim', 4, 1)
INSERT [dbo].[SinifKategori] ([ID], [KategoriAdi], [ResimID], [Aktif]) VALUES (3, N'Tarih', 5, 1)
INSERT [dbo].[SinifKategori] ([ID], [KategoriAdi], [ResimID], [Aktif]) VALUES (4, N'Teknoloji', 6, 1)
INSERT [dbo].[SinifKategori] ([ID], [KategoriAdi], [ResimID], [Aktif]) VALUES (5, N'Müzik', 10, 1)
INSERT [dbo].[SinifKategori] ([ID], [KategoriAdi], [ResimID], [Aktif]) VALUES (6, N'İngilizce', 7, 1)
INSERT [dbo].[SinifKategori] ([ID], [KategoriAdi], [ResimID], [Aktif]) VALUES (7, N'Fotoğraf', 8, 1)
INSERT [dbo].[SinifKategori] ([ID], [KategoriAdi], [ResimID], [Aktif]) VALUES (8, N'Film', 9, 1)
INSERT [dbo].[SinifKategori] ([ID], [KategoriAdi], [ResimID], [Aktif]) VALUES (9, N'Spor', 13, 1)
SET IDENTITY_INSERT [dbo].[SinifKategori] OFF
SET IDENTITY_INSERT [dbo].[Sorular] ON 

INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (1, N'Atatürk ne zaman doğmuştur?', 20, 0, NULL, N'ankara ankara 1', N'ankara ankara 2', N'ankara ankara 3', N'ankar aankara 4', N'Cevap1', 1)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (7, N'sdsadsdsdas', 10, 1, NULL, N'ankara ankara 1', N'ankara ankara 2', N'ankara ankara 3', N'ankar aankara 4', N'Cevap1', 3)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (8, N'Atatürk ne zaman doğmuştur?', 10, 1, NULL, N'ankara ankara 1', N'ankara ankara 2', N'ankara ankara 3', N'ankar aankara 4', N'Cevap1', 3)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (13, N'Atatürk ne zaman doğmuştur?', 21, 0, NULL, N'1881', N'1996', N'1938', N'1987', N'Cevap1', 44)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (17, N'Atatürk ne zaman doğmuştur?', 55, 1, NULL, N'1881', N'1996', N'1938', N'1987', N'Cevap1', 1)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (18, N'Fenerbahçe spor klübühangi yıl kurulmuştur?', 14, 1, NULL, N'1903', N'1907', N'1905', N'1909', N'Cevap2', 46)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (19, N'Fenerbahçenin efsanevi 10 numarası Alex De Souza kaç kez gol kralı olmuştur?', 20, 1, NULL, N'1', N'2', N'3', N'4', N'Cevap2', 46)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (20, N'Fenerbahçe ezeli rakibi Galatasarayı hangi yıl 6-0 yenmiştir?', 15, 0, NULL, N'2004', N'2003', N'2002', N'2001', N'Cevap3', 46)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (21, N'Fenerbahçenin şuanki  başkanı kimdir?', 15, 0, NULL, N'Aziz Yıldırım', N'Şükrü Saraçoğlu', N'Mahmut Uslu', N'Ali Koç', N'Cevap1', 46)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (22, N'Fenerbahçenin sembolü nedir?', 7, 0, NULL, N'Kanarya', N'Aslan', N'Kartal', N'Timsah', N'Cevap1', 46)
SET IDENTITY_INSERT [dbo].[Sorular] OFF
SET IDENTITY_INSERT [dbo].[Takip] ON 

INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (4, 10, 11)
INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (5, 11, 10)
INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (6, 10, 12)
SET IDENTITY_INSERT [dbo].[Takip] OFF
ALTER TABLE [dbo].[AnketSoru]  WITH CHECK ADD  CONSTRAINT [FK_AnketSoru_Anket] FOREIGN KEY([AnketID])
REFERENCES [dbo].[Anket] ([ID])
GO
ALTER TABLE [dbo].[AnketSoru] CHECK CONSTRAINT [FK_AnketSoru_Anket]
GO
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
