USE [BilBakalimDB]
GO
/****** Object:  Table [dbo].[Anket]    Script Date: 17.05.2019 15:59:11 ******/
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
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Anket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnketOturum]    Script Date: 17.05.2019 15:59:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnketOturum](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Pin] [int] NULL,
	[Cevap1] [int] NULL,
	[Cevap2] [int] NULL,
	[Cevap3] [int] NULL,
	[Cevap4] [int] NULL,
	[SoruID] [int] NULL,
 CONSTRAINT [PK_AnketOturum] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnketSoru]    Script Date: 17.05.2019 15:59:11 ******/
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
	[SinifID] [int] NULL,
	[Sure] [int] NULL,
 CONSTRAINT [PK_AnketSoru] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dİl]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[Favori]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[Iletisim]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[Kullanici]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[KullaniciResim]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[Menu]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[MenuRol]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[Rapor]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[Resim]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[ResimKategori]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[Rol]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[Sinif]    Script Date: 17.05.2019 15:59:11 ******/
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
	[Durum] [bit] NULL,
 CONSTRAINT [PK_dbo.Sinif] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinifKategori]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[Sorular]    Script Date: 17.05.2019 15:59:11 ******/
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
/****** Object:  Table [dbo].[Takip]    Script Date: 17.05.2019 15:59:11 ******/
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
SET IDENTITY_INSERT [dbo].[Anket] ON 

INSERT [dbo].[Anket] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [KullaniciID], [Durum]) VALUES (1, N'Hoca Değerlendirme', N'Dönem sonunda öğrencilerin öğretmenleri değerlendirdiği anket', 1, CAST(N'2019-05-17T11:46:35.390' AS DateTime), 0, 1, 57, 10, NULL)
SET IDENTITY_INSERT [dbo].[Anket] OFF
SET IDENTITY_INSERT [dbo].[AnketSoru] ON 

INSERT [dbo].[AnketSoru] ([ID], [Soru], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [SinifID], [Sure]) VALUES (8, N'Hocanız kılık kıyafeti nasıldı?', 63, N'Çok İyi', N'Orta', N'Kötü', N'Çok Kötü', 1, 20)
SET IDENTITY_INSERT [dbo].[AnketSoru] OFF
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
INSERT [dbo].[Favori] ([ID], [KullaniciID], [SinifID]) VALUES (4, 11, 46)
SET IDENTITY_INSERT [dbo].[Favori] OFF
SET IDENTITY_INSERT [dbo].[Iletisim] ON 

INSERT [dbo].[Iletisim] ([ID], [Isim], [Eposta], [Telefon], [Icerik], [Tarih]) VALUES (1, N'Emre Kaymak', N'emre@gmail.com', N'5324689878', N'asdsdasdsa', CAST(N'2019-05-17T00:02:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Iletisim] OFF
SET IDENTITY_INSERT [dbo].[Kullanici] ON 

INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (10, N'Emre', N'Kaymak', N'emrekymk1996@gmail.com', N'Geliştiricilerden Emre Kaymak', N'emrekymk', N'lu0c+GqlVMQ=', 1, 2, 1, NULL, CAST(N'2019-05-17' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (11, N'Fatih', N'Karaüzüm', N'fatih@gmail.com', N'Geliştiricilerden Fatih Karaüzüm', N'fatih', N'lu0c+GqlVMQ=', 1, 3, 1, NULL, CAST(N'2019-05-12' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (12, N'Mert Sait', N'Varol', N'mert@gmail.com', N'Geliştiricilerden Mert Sait VArol', N'mert', N'lu0c+GqlVMQ=', 1, 10, 1, NULL, CAST(N'2019-05-17' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (13, N'Resul ', N'Kara', N'resulkara@duzce.edu.tr', N'Prof.Dr.Resul KARA', N'resul', N'lu0c+GqlVMQ=', 1, 6, 1, NULL, CAST(N'2019-05-17' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (14, N'Erdi', N'Yalçın', N'erdiyalcin@duzce.edu.tr', NULL, N'erdi', N'lu0c+GqlVMQ=', 1, 7, 1, NULL, CAST(N'2019-05-17' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (15, N'Pakize', N'Erdoğmuş', N'pakizeerdogmus@duzce.edu.tr', NULL, N'pakize', N'lu0c+GqlVMQ=', 1, 8, 2, NULL, CAST(N'2019-05-17' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (16, N'Fatih', N'Kayaalp', N'fatihkayaalp@duzce.edu.tr', NULL, N'fatihkaya', N'lu0c+GqlVMQ=', 1, 9, 2, NULL, CAST(N'2018-05-11' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (17, N'Mehmet', N'Özçelik', N'mehmet@gmail.com', NULL, N'mehmet', N'lu0c+GqlVMQ=', 1, 1, 2, NULL, CAST(N'2018-05-11' AS Date))
INSERT [dbo].[Kullanici] ([ID], [Adi], [Soyadi], [Email], [Aciklama], [KullaniciAdi], [Sifre], [Durum], [ResimID], [RolID], [EskiSifre], [OlusturmaTarihi]) VALUES (21, N'ömer', N'kaymak', N'omer@gmail.com', NULL, N'omer', N'lu0c+GqlVMQ=', 0, 2, 1, NULL, CAST(N'2018-05-11' AS Date))
SET IDENTITY_INSERT [dbo].[Kullanici] OFF
SET IDENTITY_INSERT [dbo].[KullaniciResim] ON 

INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (1, N'/Content/Resimler/Kullanici/d19f6f35-91ab-4b5b-b8ca-ec87e35153bd.jpg')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (2, N'/Content/Resimler/Kullanici/d19f6f35-91ab-4b5b-b8ca-ec87e35153bd.jpg')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (3, N'/Content/Resimler/Kullanici/a4c45ea1-7a6a-4d8c-bc3e-cb7d98e69a16.jpg')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (4, N'/Content/Resimler/Kullanici/c8a184fe-8070-492f-aec7-db206c87a204.png')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (5, N'/Content/Resimler/Kullanici/d1968674-d2ee-4146-ae29-7f315902eef4.jpg')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (6, N'/Content/Resimler/Kullanici/d165ba11-3f09-4f15-a56f-705abd6bd979.jpg')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (7, N'/Content/Resimler/Kullanici/d9a62cb1-68b6-46a3-883c-f987e8615f2f.png')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (8, N'/Content/Resimler/Kullanici/43034abb-5826-43e0-8e01-fbd7d8bc404d.jpg')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (9, N'/Content/Resimler/Kullanici/49b7487c-eec9-4b6f-b8db-7942acf5182b.jpg')
INSERT [dbo].[KullaniciResim] ([ID], [Url]) VALUES (10, N'/Content/Resimler/Kullanici/a49b6c6b-1303-4cdc-9f28-3bce359c98b4.jpg')
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
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (21, N'Kategori İşlemleri', N'icon-sitemap', NULL, NULL, NULL, 1, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (22, N'Resim Kategori', N'icon-user', 21, N'Admin', N'ResimKategori', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (23, N'Sınıf Kategori', N'icon-user', 21, N'Admin', N'SinifKategori', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (25, N'İletişim', N'icon-envelope', NULL, N'Admin', N'IletisimListele', 0, 1)
INSERT [dbo].[Menu] ([ID], [Adi], [Icon], [ParentMenuID], [Controller], [Action], [AcilirMenu], [Aktif]) VALUES (26, N'Anketler', N'icon-user', NULL, N'Admin', N'AnketListele', 0, 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[MenuRol] ON 

INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (160, 1, 1)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (161, 1, 2)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (162, 1, 3)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (163, 1, 4)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (164, 1, 6)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (165, 1, 8)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (166, 1, 13)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (167, 1, 14)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (168, 1, 15)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (169, 1, 16)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (170, 1, 17)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (171, 1, 18)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (172, 1, 21)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (173, 1, 22)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (174, 1, 23)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (175, 1, 25)
INSERT [dbo].[MenuRol] ([ID], [RolId], [MenuId]) VALUES (176, 1, 26)
SET IDENTITY_INSERT [dbo].[MenuRol] OFF
SET IDENTITY_INSERT [dbo].[Resim] ON 

INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (1, N'/Content/images/adiyaman.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (2, N'/Content/Home/assets\img\newarrival\img1.jpeg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (3, N'/Content/images/mat.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (4, N'/Content/images/bilim.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (5, N'/Content/images/tarih.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (6, N'/Content/images/teknoloji.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (7, N'/Content/images/ing.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (8, N'/Content/images/foto.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (9, N'/Content/images/film.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (10, N'/Content/images/muzik.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (11, N'/Content/images/fb.png', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (12, N'/Content/images/resim.png', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (13, N'/Content/images/spor.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (14, N'/Content/images/fb.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (15, N'/Content/Resimler/SinifSoru/default.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (26, N'/Content/Resimler/SinifSoru/3.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (27, N'/Content/Resimler/SinifSoru/ahmet.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (28, N'/Content/Resimler/SinifSoru/ata.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (29, N'/Content/Resimler/SinifSoru/bjk.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (30, N'/Content/Resimler/SinifSoru/boks.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (31, N'/Content/Resimler/SinifSoru/bol.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (32, N'/Content/Resimler/SinifSoru/carp.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (33, N'/Content/Resimler/SinifSoru/cum.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (34, N'/Content/Resimler/SinifSoru/days.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (35, N'/Content/Resimler/SinifSoru/dif.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (36, N'/Content/Resimler/SinifSoru/dzc.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (37, N'/Content/Resimler/SinifSoru/foto.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (38, N'/Content/Resimler/SinifSoru/gs.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (40, N'/Content/Resimler/SinifSoru/ing.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (41, N'/Content/Resimler/SinifSoru/islam.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (42, N'/Content/Resimler/SinifSoru/osmanli.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (43, N'/Content/Resimler/SinifSoru/padisah.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (44, N'/Content/Resimler/SinifSoru/pc.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (45, N'/Content/Resimler/SinifSoru/resim.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (46, N'/Content/Resimler/SinifSoru/resmi.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (47, N'/Content/Resimler/SinifSoru/tc.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (48, N'/Content/Resimler/SinifSoru/topla.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (49, N'/Content/Resimler/SinifSoru/ts.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (50, N'/Content/Resimler/SinifSoru/ist.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (51, N'/Content/Resimler/SinifSoru/alex.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (52, N'/Content/Resimler/SinifSoru/aziz.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (53, N'/Content/Resimler/SinifSoru/nobel.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (54, N'/Content/Resimler/SinifSoru/yesil.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (55, N'/Content/Resimler/SinifSoru/ic.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (56, N'/Content/Resimler/SinifSoru/a636625b-7211-4099-913f-cf6fa8202c15.jpg', 1)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (57, N'/Content/Resimler/Anket/1bfcbdb1-3fc6-4aa5-b117-87349513b90b.jpg', 3)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (58, N'/Content/Resimler/Anket/427ef4d8-0207-4ed5-a337-7273e6a89a58.jpg', 3)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (59, N'/Content/Resimler/Anket/23718aed-cfe0-49c4-83c8-a2c30401955e.jpg', 3)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (60, N'/Content/Resimler/Anket/d864e114-5ba1-4e6d-aa7e-84f068c6fd57.jpg', 3)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (61, N'/Content/Resimler/Anket/9d538cfa-5e5e-4d09-8651-866229e3e1e9.jpg', 3)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (62, N'/Content/Resimler/Anket/12f78c3f-a6e6-498b-96a6-c935ed9abbd4.jpg', 3)
INSERT [dbo].[Resim] ([ID], [Url], [ResimKategoriID]) VALUES (63, N'/Content/Resimler/Anket/4c9329ae-d4da-4134-a05a-95d5e744fa59.jpg', 3)
SET IDENTITY_INSERT [dbo].[Resim] OFF
SET IDENTITY_INSERT [dbo].[ResimKategori] ON 

INSERT [dbo].[ResimKategori] ([ID], [KategoriAdi], [Aktif]) VALUES (1, N'SinifSoru', 1)
INSERT [dbo].[ResimKategori] ([ID], [KategoriAdi], [Aktif]) VALUES (2, N'Kullanici', 1)
INSERT [dbo].[ResimKategori] ([ID], [KategoriAdi], [Aktif]) VALUES (3, N'Anket', 1)
SET IDENTITY_INSERT [dbo].[ResimKategori] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (1, N'Admin', N'Bütün yetkilere sahip')
INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (2, N'Kullanıcı', N'Sistemdeki oyunları oynamak için kayıt olan kişiler')
INSERT [dbo].[Rol] ([ID], [RolAdi], [Aciklama]) VALUES (9, N'Yazar', N'Yeni sorular eklemek için görevli')
SET IDENTITY_INSERT [dbo].[Rol] OFF
SET IDENTITY_INSERT [dbo].[Sinif] ON 

INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (1, N'Atatürkün Hayatı', N'Atatürk  hayatı ile alakalı  bilinmesi gerekenler', 1, CAST(N'2019-05-17T00:00:00.000' AS DateTime), 150, 1, 28, NULL, 10, 3, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (2, N'Osmanlı  Padişahları', N'osmanlı padişahları', 1, CAST(N'2019-05-17T00:00:00.000' AS DateTime), 100, 1, 43, NULL, 11, 3, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (3, N'Düzce Üniversitesi', N'DZC', 1, CAST(N'2019-05-17T00:00:00.000' AS DateTime), 100, 1, 36, NULL, 12, 3, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (5, N'Osmanlı Tarihi', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2019-05-17T00:00:00.000' AS DateTime), 0, 1, 42, NULL, 10, 3, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (6, N'İstanbulun Fethi', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 0, 1, 50, NULL, 11, 3, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (7, N'Alex De Souza', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 2, 51, NULL, 12, 9, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (8, N'Aziz Sancar', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 2, 52, NULL, 11, 2, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (9, N'Nobel Ödülleri', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 2, 53, NULL, 11, 2, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (10, N'Fotoğraf Makineleri', N'0', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 2, 37, NULL, 11, 7, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (11, N'Days', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 3, 34, NULL, 11, 6, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (12, N'Yeşil Çam', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 3, 54, NULL, 11, 8, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (13, N'Kemal Sunal Filmleri', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 3, 45, NULL, 11, 8, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (14, N'Eurovision 2016', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 4, 15, NULL, 11, 5, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (15, N'Countries', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2019-05-11T00:00:00.000' AS DateTime), 10, 4, 47, NULL, 11, 6, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (16, N'Galatasaray', N'aksdaskdmasdkasm aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkda aksdaskdmasdkasmkdakda', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 1500, 4, 38, NULL, 11, 9, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (17, N'FENERBAHÇE', N'Fenerbahçe tarihi', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 1500, 4, 14, NULL, 10, 9, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (18, N'Trabzon', N'asdasdasdasds', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 100, 4, 49, NULL, 10, 9, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (19, N'Yüzme Yarışları', N'sdsadsad', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 100, 2, 46, NULL, 10, 9, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (33, N'Boks Dersleri', N'asdasdasdasds', 1, CAST(N'2019-05-17T00:00:00.000' AS DateTime), 0, 2, 30, NULL, 10, 9, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (34, N'Cumhuriyetin Kuruluşu', N'sdsadsadsadsaddddddddddddd aasdsadsadsad sad asdsad asdas dsa dsa dsad as dasds a s das', 1, CAST(N'2019-05-17T00:00:00.000' AS DateTime), 0, 4, 33, NULL, 10, 3, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (35, N'İslam Tarihi', N'DZC', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 1, 41, NULL, 10, 3, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (36, N'İlk Biilgisayar', N'sdsadsadsadsaddddddddddddd aasdsadsadsad sad asdsad asdas dsa dsa dsad as dasds a s das', 1, CAST(N'2018-10-20T00:00:00.000' AS DateTime), 0, 2, 44, NULL, 10, 4, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (37, N'Ahmet Kaya Şarkıları', N'sdsadsadsadsaddddddddddddd aasdsadsadsad sad asdsad asdas dsa dsa dsad as dasds a s das', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 0, 3, 27, NULL, 10, 5, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (44, N'3 İdiots', N'atAtürk', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 0, 1, 26, NULL, 10, 8, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (45, N'Fotoğraf Çekme', N'Atatürkün Hayatı', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime), 2, 1, 37, NULL, 10, 7, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (46, N'Beşiktaş', N'Fenerbahçe tarihi', 1, CAST(N'2019-05-13T00:00:00.000' AS DateTime), 250, 1, 29, NULL, 10, 9, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (47, N'İngilizce Sınav', N'sdsadsdadas', 1, CAST(N'2019-05-12T18:54:46.303' AS DateTime), 0, 1, 40, NULL, 10, 6, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (48, N'Toplama İşlemleri', N'İlkokul çocukları için toplamayı işlemlerini öğretmek için oluşturulmuştur', 1, CAST(N'2019-05-12T18:57:59.993' AS DateTime), 0, 1, 48, NULL, 10, 1, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (49, N'Bölme İşlemleri', N'dfdsfsd', 1, CAST(N'2019-05-12T19:01:23.060' AS DateTime), 0, 1, 31, NULL, 10, 1, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (50, N'Çarpma İşlemleri', N'sadsdsadsa', 1, CAST(N'2019-05-17T00:00:00.000' AS DateTime), 0, 1, 32, NULL, 10, 1, 1)
INSERT [dbo].[Sinif] ([ID], [Ad], [Aciklama], [Gorunurluk], [OlusturmaTarihi], [GoruntulenmeSayisi], [LisanID], [ResimID], [VideoUrl], [KullaniciID], [SinifKategoriID], [Durum]) VALUES (52, N'İç Organlarımız', N'Fenerbahçe Tarihi ve fenerbahçe futbolcuları', 1, CAST(N'2019-05-17T00:00:00.000' AS DateTime), 0, 1, 55, NULL, 10, 2, 1)
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

INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (18, N'Fenerbahçe spor klübühangi yıl kurulmuştur?', 14, 1, 1, N'1903', N'1907', N'1905', N'1909', N'Cevap2', 17)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (19, N'Fenerbahçenin efsanevi 10 numarası Alex De Souza kaç kez gol kralı olmuştur?', 20, 1, 1, N'1', N'2', N'3', N'4', N'Cevap2', 17)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (20, N'Fenerbahçe ezeli rakibi Galatasarayı hangi yıl 6-0 yenmiştir?', 15, 0, 1, N'2004', N'2003', N'2002', N'2001', N'Cevap3', 17)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (21, N'Fenerbahçenin şuanki  başkanı kimdir?', 15, 0, 1, N'Aziz Yıldırım', N'Şükrü Saraçoğlu', N'Mahmut Uslu', N'Ali Koç', N'Cevap1', 17)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (22, N'Fenerbahçenin sembolü nedir?', 7, 0, 1, N'Kanarya', N'Aslan', N'Kartal', N'Timsah', N'Cevap1', 17)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (27, N'Fenerbahçe spor klübühangi yıl kurulmuştur?', NULL, 1, 25, N'1903', N'1907', N'1938', N'1909', N'Cevap2', 17)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (28, N'52+69=?', 10, 0, NULL, N'100', N'121', N'1201', N'221', N'Cevap1', 48)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (29, N'25+25=?', 10, 0, NULL, N'50', N'51', N'52', N'53', N'Cevap1', 48)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (30, N'1285+1285=?', 15, 1, NULL, N'2555', N'2560', N'1999', N'2570', N'Cevap1', 48)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (31, N'1996+204=?', 10, 0, NULL, N'2220', N'2003', N'2200', N'2000', N'Cevap3', 48)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (33, N'4567+7654=?', 11, 1, NULL, N'12221', N'12331', N'11111', N'12251', N'Cevap1', 48)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (34, N'81/9=?', 5, 0, NULL, N'9', N'8', N'7', N'6', N'Cevap1', 49)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (35, N'1285/5=?', 10, 0, NULL, N'257', N'157', N'357', N'457', N'Cevap1', 49)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (36, N'5x5=?', 10, 0, NULL, N'55', N'45', N'35', N'25', N'Cevap1', 50)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (37, N'11x11=?', 10, 0, NULL, N'121', N'131', N'141', N'151', N'Cevap1', 50)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (38, N'12x12=?', 10, 0, NULL, N'134', N'144', N'154', N'164', N'Cevap2', 50)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (39, N'Atatürk ne zaman doğmuştur?', 15, 0, NULL, N'1881', N'1938', N'2017', N'1954', N'Cevap1', 1)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (40, N'Atatürkün Köpeğinin Adı Nedir?', 15, 0, NULL, N'Sakarya', N'MAX', N'FOX', N'ZAFER', N'Cevap1', 1)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (41, N' Atatürkün en sevdiği yemek hangisidir?', 14, 1, NULL, N'Mantı', N'Pilav', N'Nohut', N'Kuru Fasülye', N'Cevap4', 1)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (42, N'Atatürkün atının adı nedir?', 15, 1, NULL, N'Samsun', N'Sakarya', N'Zafer', N'Barış', N'Cevap2', 1)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (43, N'Atatürkün başucu  kitabı nedir?', 15, 0, NULL, N'Çalıkuşu', N'Geometri KitABI', N'Nutuk', N'Çanakkale Geçilmez', N'Cevap1', 1)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (44, N'Atatürkün nerede doğmuştur?', 10, 1, NULL, N'Ankara', N'İstanbul', N'Selanik', N'Samsun', N'Cevap3', 1)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (45, N'Atatürkün nüfusa kayıtlı olduğu il hangisidir?', 15, 1, NULL, N'Ankara', N'İstanbul', N'Gazientep', N'Samsun', N'Cevap3', 1)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (46, N'Atatürkün ne zaman vefat etmiştir?', 10, 0, NULL, N'1939', N'1881', N'1938', N'1888', N'Cevap3', 1)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (47, N'Osmanlı Devletinin Kurucusu Kimdir?', 10, 0, NULL, N'Osman Bey', N'Fatih Sultan Mehmet', N'Orhan Bey', N'Genç Osman', N'Cevap1', 2)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (48, N'Osmanlı padişahlarından hangisi sigarayı yasaklamıştır?', 10, 1, NULL, N'I. Murad ', N'II. Murad ', N'III. Murad ', N'IV. Murad ', N'Cevap4', 2)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (49, N'Osmanlı devletini toplam kaç padişah yönetmiştir.', 15, 1, NULL, N'29', N'28', N'36', N'32', N'Cevap3', 2)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (50, N'Düzce Üniversitesinin ilk rektörü kimdir?', 10, 0, NULL, N'Prof.Dr. Funda Sivrikaya Şerifoğlu', N'Prof. Dr. Nigar DEMİRCAN ÇAKAR', N'Prof.Dr.Resul KARA', N'Prof.Dr.İlhan GENÇ', N'Cevap1', 3)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (51, N'Düzce üniversitesi ne zaman kurulmuştur?', 10, 0, NULL, N'2010', N'2009', N'2007', N'2006', N'Cevap4', 3)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (52, N'Düzce üniversitesini şuan ki rektörü kimdir?', 10, 0, NULL, N'Prof.Dr. Funda Sivrikaya Şerifoğlu', N'Prof. Dr. Nigar DEMİRCAN ÇAKAR', N'Prof.Dr.Resul KARA', N'Prof.Dr.İlhan GENÇ', N'Cevap2', 3)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (53, N'Düzce üniversitesinin bilgi işlem daire başkanı kimdir?', 10, 1, NULL, N'Prof.Dr.Resul KARA', N'Prof. Dr. Nigar DEMİRCAN ÇAKAR', N'Prof.Dr.İlhan GENÇ', N'Prof.Dr.İdris ŞAHİN', N'Cevap1', 3)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (54, N'Düzce üniversitesi  mühendislik fakültesinde profesör ünvanına sahip hoca kimdir?', 10, 1, NULL, N'Abdullah Talha Kabakuş', N'Erdi YALÇIN', N'Resul KARA', N'Fatih KAYAALP', N'Cevap3', 3)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (55, N'Hangisi bir Divan-ı Humayun üyesi değildir?', 10, 0, NULL, N'Yeniçeri', N'Defterdar', N'Nişancı', N'Kazasker', N'Cevap1', 5)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (56, N'İstanbul kaç yılında fethedilmiştir?', 10, 0, NULL, N'1469', N'1453', N'1353', N'1299', N'Cevap1', 5)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (57, N'Osmanlı devletinin Bizans ile yaptığı ilk sava hangisidir?', 15, 1, NULL, N'Maltepe', N'Sırp Sındığı', N'Kösedağ', N'Koyunhisar', N'Cevap4', 5)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (58, N'Osmanlı devletinin ilk düzenli ordusu hangisidir?', 15, 1, NULL, N'Yaya ve Müsellem', N'Yeni Çeri', N'Kapıkulu', N'Cebeci', N'Cevap1', 5)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (59, N'Bugün dışişleri bakanına denk gelen Divan-ı Hümayun üyesi hangisidir?', 15, 1, NULL, N'Defterdar', N'Sedaret Kethidarlığı', N'Kazasker', N'Reis-ül Küttab', N'Cevap4', 5)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (60, N'İstanbul kaç yılında fethedilmiştir?', 15, 1, NULL, N'1453', N'1454', N'1545', N'1455', N'Cevap1', 6)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (61, N'Cumhuriyet ne zaman ilan edildi?', 15, 1, NULL, N'1923', N'1924', N'1925', N'1881', N'Cevap1', 34)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (62, N'İslamiyeti kabul eden ilk Türk boyu hangisidir? ', 15, 1, NULL, N'İtil Bulgarları', N'Karluklar', N'Hazarlar', N'Uygurlar', N'Cevap2', 35)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (63, N'Kuran-ı Kerim kimin döneminde kitap haline getirilmiştir?', 10, 1, NULL, N'Hz. Ali', N'Hz. Ebubekir', N'Hz. Osman', N'Hz. Ömer', N'Cevap2', 35)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (64, N'Monday', 10, 0, NULL, N'Pazartesi ', N'Salı ', N'Çarşamba', N'Perşembe', N'Cevap1', 11)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (65, N'Tuesday', 10, 0, NULL, N'Salı ', N'Çarşamba', N'Perşembe', N'Cuma', N'Cevap1', 11)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (66, N'Wednesday', 10, 1, NULL, N'Çarşamba', N'Perşembe', N'Cuma', N'Cumartesi ', N'Cevap1', 11)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (67, N'Turkey ', 10, 1, NULL, N'Türkiye', N'İsveç', N'Ukrayna', N'Portekiz', N'Cevap1', 15)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (68, N'They _____working hard', 10, 0, NULL, N'am', N'is ', N'are', N'this', N'Cevap3', 47)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (69, N'Where does she come from? She ______from Madrid', 15, 1, NULL, N'comes', N'came', N'have came', N'come', N'Cevap1', 47)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (70, N'Aziz Sancar ne zaman doğmuştur?', 10, 1, NULL, N'1946', N'1945', N'1944', N'1943', N'Cevap1', 8)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (71, N'Aziz Sancar nerede doğmuştur?', 15, 1, NULL, N'Adıyaman', N'Mardin', N'İstanbul', N'Ankara', N'Cevap2', 8)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (72, N'Aziz sancar ne zaman nobel ödülü almıştır.', 15, 0, NULL, N'2015', N'2016', N'2017', N'2018', N'Cevap1', 8)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (73, N'2015 Nobel kimya ödülünü kim almıştır?', 15, 1, NULL, N'Aziz Sancar', N'Frances Arnold', N'Orhan Pamuk', N'Gérard Mourou', N'Cevap1', 9)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (74, N'Türkiye de ilk nobel ödülünü  alan kimdir?', 15, 1, NULL, N'Aziz Sancar', N'Orhan Pamuk', N'Mehmet Akif Ersoy', N'Oktay Sinanoğlu', N'Cevap1', 9)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (75, N'Hangi damar daha esnek, akış hızı en fazla ve en kalın duvara sahiptir?', 15, 0, NULL, N'Atar Damar', N'Kılcal Damar', N'Toplar Damar', N'Koroner Damar', N'Cevap1', 52)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (76, N'Aşağıdaki seçeneklerden hangisi küçük kan dolaşımındaki 2. uğranılan yerdir.', 14, 1, NULL, N'Akçiğer Toplardamar', N'Üst Toplardamar', N'Aort Atardamar', N'Akciğer Atardamar', N'Cevap4', 52)
INSERT [dbo].[Sorular] ([ID], [Soru], [Sure], [Odul], [MedyaID], [Cevap1], [Cevap2], [Cevap3], [Cevap4], [DogruCevap], [SinifID]) VALUES (77, N'Kalbin hangi tarafında temiz kan bulunur?', 10, 1, NULL, N'Sol', N'Sağ', N'Orta ', N'Hepsi', N'Cevap1', 52)
SET IDENTITY_INSERT [dbo].[Sorular] OFF
SET IDENTITY_INSERT [dbo].[Takip] ON 

INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (4, 10, 15)
INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (12, 10, 12)
INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (13, 10, 14)
INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (14, 10, 16)
INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (15, 12, 15)
INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (17, 11, 15)
INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (18, 11, 21)
INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (19, 11, 12)
INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (20, 11, 14)
INSERT [dbo].[Takip] ([ID], [TakipEdenID], [TakipEdilenID]) VALUES (21, 11, 16)
SET IDENTITY_INSERT [dbo].[Takip] OFF
ALTER TABLE [dbo].[Anket]  WITH CHECK ADD  CONSTRAINT [FK_Anket_Dİl] FOREIGN KEY([LisanID])
REFERENCES [dbo].[Dİl] ([ID])
GO
ALTER TABLE [dbo].[Anket] CHECK CONSTRAINT [FK_Anket_Dİl]
GO
ALTER TABLE [dbo].[Anket]  WITH CHECK ADD  CONSTRAINT [FK_Anket_Kullanici] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanici] ([ID])
GO
ALTER TABLE [dbo].[Anket] CHECK CONSTRAINT [FK_Anket_Kullanici]
GO
ALTER TABLE [dbo].[Anket]  WITH CHECK ADD  CONSTRAINT [FK_Anket_Resim] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resim] ([ID])
GO
ALTER TABLE [dbo].[Anket] CHECK CONSTRAINT [FK_Anket_Resim]
GO
ALTER TABLE [dbo].[AnketOturum]  WITH CHECK ADD  CONSTRAINT [FK_AnketOturum_AnketSoru] FOREIGN KEY([SoruID])
REFERENCES [dbo].[AnketSoru] ([ID])
GO
ALTER TABLE [dbo].[AnketOturum] CHECK CONSTRAINT [FK_AnketOturum_AnketSoru]
GO
ALTER TABLE [dbo].[AnketSoru]  WITH CHECK ADD  CONSTRAINT [FK_AnketSoru_Anket] FOREIGN KEY([SinifID])
REFERENCES [dbo].[Anket] ([ID])
GO
ALTER TABLE [dbo].[AnketSoru] CHECK CONSTRAINT [FK_AnketSoru_Anket]
GO
ALTER TABLE [dbo].[AnketSoru]  WITH CHECK ADD  CONSTRAINT [FK_AnketSoru_Resim] FOREIGN KEY([MedyaID])
REFERENCES [dbo].[Resim] ([ID])
GO
ALTER TABLE [dbo].[AnketSoru] CHECK CONSTRAINT [FK_AnketSoru_Resim]
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
