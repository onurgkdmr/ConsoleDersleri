USE [OkulDB]
GO
/****** Object:  Table [dbo].[Bolumler]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolumler](
	[BolumlerID] [int] IDENTITY(1,1) NOT NULL,
	[BolumAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bolumler] PRIMARY KEY CLUSTERED 
(
	[BolumlerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branslar]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branslar](
	[BranslarID] [int] IDENTITY(1,1) NOT NULL,
	[BransAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Branslar] PRIMARY KEY CLUSTERED 
(
	[BranslarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dersler]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dersler](
	[DerslerID] [int] IDENTITY(1,1) NOT NULL,
	[DersAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dersler] PRIMARY KEY CLUSTERED 
(
	[DerslerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdariKadro]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdariKadro](
	[IdariKadrolarID] [int] IDENTITY(1,1) NOT NULL,
	[UnvanAdi] [nvarchar](50) NULL,
	[OgretmenID] [int] NOT NULL,
	[DiplomaNumarası] [nvarchar](30) NULL,
 CONSTRAINT [PK_OgretmenUnvanlariID] PRIMARY KEY CLUSTERED 
(
	[IdariKadrolarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iller]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iller](
	[illerID] [int] NOT NULL,
	[ilAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_iller] PRIMARY KEY CLUSTERED 
(
	[illerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KanGruplari]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KanGruplari](
	[KanGruplariID] [int] IDENTITY(1,1) NOT NULL,
	[KanGrubuAdi] [nvarchar](10) NULL,
 CONSTRAINT [PK_KanGruplari] PRIMARY KEY CLUSTERED 
(
	[KanGruplariID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullanicilarID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciTC] [nvarchar](11) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
	[KullaniciSifre] [nvarchar](50) NOT NULL,
	[YetkiID] [int] NOT NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[KullanicilarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kulupler]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kulupler](
	[KuluplerID] [int] NOT NULL,
	[KulupAdi] [nvarchar](50) NULL,
	[SorumluOgretmenID] [int] NULL,
	[YardimciOgretmenID] [int] NULL,
 CONSTRAINT [PK_Kulupler] PRIMARY KEY CLUSTERED 
(
	[KuluplerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notlar]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notlar](
	[NotlarID] [int] IDENTITY(1,1) NOT NULL,
	[HarfDegeri] [nvarchar](10) NULL,
	[SayısalDegeri] [nchar](10) NULL,
	[DersID] [int] NULL,
	[Sınav1Tarih] [date] NULL,
	[Sınav1] [decimal](18, 2) NULL,
	[Sınav2Tarih] [date] NULL,
	[Sınav2] [decimal](18, 2) NULL,
	[Odev1Tarih] [date] NULL,
	[Odev1] [decimal](18, 2) NULL,
	[Odev2Tarih] [date] NULL,
	[Odev2] [decimal](18, 2) NULL,
	[OgrenciID] [int] NULL,
	[ProjeID] [int] NULL,
	[Kanaat1] [decimal](18, 2) NULL,
	[KanaatTarihi1] [date] NULL,
	[Kanaat2] [decimal](18, 2) NULL,
	[KanaatTarihi2] [date] NULL,
 CONSTRAINT [PK_Notlar] PRIMARY KEY CLUSTERED 
(
	[NotlarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciDers]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciDers](
	[OgrenciDersID] [int] IDENTITY(1,1) NOT NULL,
	[DersID] [int] NULL,
	[OgrenciID] [int] NULL,
 CONSTRAINT [PK_OgrenciDers] PRIMARY KEY CLUSTERED 
(
	[OgrenciDersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciIzin]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciIzin](
	[IzinID] [int] IDENTITY(1,1) NOT NULL,
	[IzinTuru] [nvarchar](50) NULL,
	[YoklamaID] [int] NULL,
	[BarkodNo] [nvarchar](50) NULL,
	[BaslangicTarihi] [date] NULL,
	[BitisTarihi] [date] NULL,
 CONSTRAINT [PK_OgrenciIzin] PRIMARY KEY CLUSTERED 
(
	[IzinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenciler]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenciler](
	[OgrencilerID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciTC] [nvarchar](11) NULL,
	[OgrenciAdi] [nvarchar](50) NULL,
	[OgrenciSoyadi] [nvarchar](50) NULL,
	[Cinsiyeti] [nvarchar](10) NULL,
	[DogumTarihi] [date] NULL,
	[DogumYeriID] [int] NULL,
	[Adres] [nvarchar](max) NULL,
	[OgrenciKilo] [decimal](18, 2) NULL,
	[OgrenciBoy] [decimal](18, 2) NULL,
	[KanGrubuID] [int] NULL,
	[KullaniciID] [int] NULL,
	[SinifID] [int] NULL,
 CONSTRAINT [PK_Ogrenciler] PRIMARY KEY CLUSTERED 
(
	[OgrencilerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciProje]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciProje](
	[OgrenciProjeID] [int] IDENTITY(1,1) NOT NULL,
	[ProjeID] [int] NULL,
	[OgrenciID] [int] NULL,
 CONSTRAINT [PK_OgrenciProje] PRIMARY KEY CLUSTERED 
(
	[OgrenciProjeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciTakim]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciTakim](
	[OgrenciTakimID] [int] IDENTITY(1,1) NOT NULL,
	[OkulTakimiID] [int] NULL,
	[OgrenciID] [int] NULL,
 CONSTRAINT [PK_OgrenciTakim,] PRIMARY KEY CLUSTERED 
(
	[OgrenciTakimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciVeli]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciVeli](
	[OgrenciVeliID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciID] [int] NULL,
	[VeliID] [int] NULL,
 CONSTRAINT [PK_OgrenciVeli] PRIMARY KEY CLUSTERED 
(
	[OgrenciVeliID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgretmenBilgileri]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgretmenBilgileri](
	[OgretmenBilgileriID] [int] IDENTITY(1,1) NOT NULL,
	[OgretmenID] [int] NOT NULL,
	[GirisTarihi] [date] NOT NULL,
	[CikisTarihi] [date] NULL,
 CONSTRAINT [PK_OgretmenBilgileri] PRIMARY KEY CLUSTERED 
(
	[OgretmenBilgileriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgretmenDers]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgretmenDers](
	[OgretmenDersID] [int] IDENTITY(1,1) NOT NULL,
	[DersID] [int] NULL,
	[OgretmenID] [int] NULL,
 CONSTRAINT [PK_OgretmenDers] PRIMARY KEY CLUSTERED 
(
	[OgretmenDersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgretmenIzin]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgretmenIzin](
	[OgretmenIzinleriID] [int] IDENTITY(1,1) NOT NULL,
	[IzinTuru] [nvarchar](50) NULL,
	[OgretmenID] [int] NULL,
	[BaslangicTarihi] [date] NULL,
	[BitisTarihi] [date] NULL,
 CONSTRAINT [PK_OgretmenIzin] PRIMARY KEY CLUSTERED 
(
	[OgretmenIzinleriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogretmenler]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogretmenler](
	[OgretmenlerID] [int] IDENTITY(1,1) NOT NULL,
	[OgretmenTC] [nvarchar](11) NULL,
	[OgretmenAdi] [nvarchar](50) NULL,
	[OgretmenSoyadi] [nvarchar](50) NULL,
	[Cinsiyet] [nvarchar](10) NULL,
	[Telefon] [nvarchar](20) NULL,
	[MedeniHali] [nvarchar](10) NULL,
	[DogumTarihi] [date] NULL,
	[DogumYeriID] [int] NULL,
	[Adres] [nvarchar](max) NULL,
	[KanGrubuID] [int] NULL,
	[BransID] [int] NULL,
	[KullaniciID] [int] NULL,
	[AktifMi] [bit] NULL,
 CONSTRAINT [PK_Ogretmenler] PRIMARY KEY CLUSTERED 
(
	[OgretmenlerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgretmenProje]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgretmenProje](
	[OgretmenProjeID] [int] IDENTITY(1,1) NOT NULL,
	[ProjeID] [int] NULL,
	[OgretmenID] [int] NULL,
 CONSTRAINT [PK_OgretmenProje] PRIMARY KEY CLUSTERED 
(
	[OgretmenProjeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OkulTakimi]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OkulTakimi](
	[OkulTakımiID] [int] IDENTITY(1,1) NOT NULL,
	[TakimAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_OkulTakimi] PRIMARY KEY CLUSTERED 
(
	[OkulTakımiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonelBilgileri]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonelBilgileri](
	[PersonelBilgileriID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelID] [int] NOT NULL,
	[GirisTarih] [date] NOT NULL,
	[CikisTarih] [date] NULL,
 CONSTRAINT [PK_PersonelBilgileri] PRIMARY KEY CLUSTERED 
(
	[PersonelBilgileriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[PersonellerID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelTC] [nvarchar](11) NULL,
	[PersonelAdi] [nvarchar](50) NULL,
	[PersonelSoyadi] [nvarchar](50) NULL,
	[Cinsiyet] [nvarchar](10) NULL,
	[Maas] [decimal](18, 2) NULL,
	[Telefon] [nvarchar](20) NULL,
	[DogumTarihi] [date] NULL,
	[DogumYeriID] [int] NULL,
	[HesapNumarasi] [nvarchar](21) NULL,
	[MedeniHali] [nvarchar](5) NULL,
	[KanGrubuID] [int] NULL,
	[Adres] [nvarchar](max) NULL,
	[KullanıcıID] [int] NULL,
	[AktifMi] [bit] NULL,
 CONSTRAINT [PK_Personeller] PRIMARY KEY CLUSTERED 
(
	[PersonellerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projeler]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projeler](
	[ProjelerID] [int] IDENTITY(1,1) NOT NULL,
	[ProjeAdi] [nvarchar](50) NULL,
	[ProjeNotu] [int] NULL,
	[ProjeTarih] [date] NULL,
 CONSTRAINT [PK_Projeler] PRIMARY KEY CLUSTERED 
(
	[ProjelerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sınıflar]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sınıflar](
	[SınıflarID] [int] IDENTITY(1,1) NOT NULL,
	[SınıfNo] [nvarchar](10) NULL,
	[SınıfSubesi] [nvarchar](10) NULL,
	[OgretmenID] [int] NULL,
	[BolumID] [int] NULL,
 CONSTRAINT [PK_Sınıflar] PRIMARY KEY CLUSTERED 
(
	[SınıflarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TakimOgretmenleri]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TakimOgretmenleri](
	[TakimOgretmenleriID] [int] IDENTITY(1,1) NOT NULL,
	[OgretmenID] [int] NULL,
	[TakimID] [int] NULL,
 CONSTRAINT [PK_TakimOgretmenleri] PRIMARY KEY CLUSTERED 
(
	[TakimOgretmenleriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Veliler]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Veliler](
	[VelilerID] [int] IDENTITY(1,1) NOT NULL,
	[VeliTC] [nvarchar](11) NULL,
	[VeliAdi] [nvarchar](50) NULL,
	[VeliSoyadi] [nvarchar](50) NULL,
	[Cinsiyet] [nvarchar](10) NULL,
	[DogumTarihi] [date] NULL,
	[DogumYeriID] [int] NULL,
	[Telefon] [nvarchar](50) NULL,
	[Adres] [nvarchar](max) NULL,
	[MedeniHali] [nvarchar](10) NULL,
	[KanGrubuID] [int] NULL,
	[KullaniciID] [int] NULL,
 CONSTRAINT [PK_Veliler] PRIMARY KEY CLUSTERED 
(
	[VelilerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yetkiler]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yetkiler](
	[YetkilerID] [int] IDENTITY(1,1) NOT NULL,
	[YetkiAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Yetkiler] PRIMARY KEY CLUSTERED 
(
	[YetkilerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yoklama]    Script Date: 24.02.2026 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yoklama](
	[YoklamalarID] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciID] [int] NULL,
	[YoklamaTarih] [date] NULL,
	[Devamsızlık] [nvarchar](10) NULL,
 CONSTRAINT [PK_Yoklama] PRIMARY KEY CLUSTERED 
(
	[YoklamalarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bolumler] ON 
GO
INSERT [dbo].[Bolumler] ([BolumlerID], [BolumAdi]) VALUES (1, N'Lise1')
GO
INSERT [dbo].[Bolumler] ([BolumlerID], [BolumAdi]) VALUES (2, N'Sayısal')
GO
INSERT [dbo].[Bolumler] ([BolumlerID], [BolumAdi]) VALUES (3, N'Sözel')
GO
INSERT [dbo].[Bolumler] ([BolumlerID], [BolumAdi]) VALUES (4, N'Eşit Ağırlık')
GO
INSERT [dbo].[Bolumler] ([BolumlerID], [BolumAdi]) VALUES (5, N'Yabancı Dil')
GO
SET IDENTITY_INSERT [dbo].[Bolumler] OFF
GO
SET IDENTITY_INSERT [dbo].[Branslar] ON 
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (1, N'Türkçe')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (2, N'Müzik')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (3, N'Tarih')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (4, N'Matematik')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (5, N'Fizik')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (6, N'İngilizce')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (7, N'Biyoloji')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (8, N'Kimya')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (9, N'Geometri')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (10, N'Rehberlik')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (11, N'Resim')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (12, N'Din Kültürü ve Ahlak Bilgisi')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (13, N'Sağlık Bilgisi')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (14, N'Beden Eğitimi')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (15, N'Milli Güvenlik')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (16, N'Felsefe')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (17, N'Coğrafya')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (18, N'İş Eğitimi')
GO
INSERT [dbo].[Branslar] ([BranslarID], [BransAdi]) VALUES (19, N'Bilgisayar Bilimleri')
GO
SET IDENTITY_INSERT [dbo].[Branslar] OFF
GO
SET IDENTITY_INSERT [dbo].[Dersler] ON 
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (1, N'Geometri1')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (2, N'Matematik1')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (3, N'Dil Anlatim')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (4, N'Edebiyat1')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (5, N'Kimya')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (6, N'Beden Eğitimi')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (7, N'Felsefe')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (8, N'Biyoloji')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (9, N'Fizik')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (10, N'Tarih1')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (11, N'Resim')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (12, N'Müzik')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (13, N'İngilizce')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (14, N'Milli Güvenlik')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (15, N'Coğrafya')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (16, N'Sağlık Bilgisi')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (17, N'Din Kültürü')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (18, N'Rehberlik')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (19, N'İş Eğitimi')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (20, N'Trafik ve İlk Yardım')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (21, N'Bilgisayar Bilimleri')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (22, N'Matematik2')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (23, N'Matematik3')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (24, N'Matematik4')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (25, N'Geometri2')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (26, N'Edebiyat2')
GO
INSERT [dbo].[Dersler] ([DerslerID], [DersAdi]) VALUES (27, N'Tarih2')
GO
SET IDENTITY_INSERT [dbo].[Dersler] OFF
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (1, N'Adana')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (2, N'Adıyaman')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (3, N'Afyon')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (4, N'Ağrı')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (5, N'Amasya')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (6, N'Ankara')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (7, N'Antalya')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (8, N'Artvin')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (9, N'Aydın')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (10, N'Balıkesir')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (11, N'Bilecik')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (12, N'Bingöl')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (13, N'Bitlis')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (14, N'Bolu')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (15, N'Burdur')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (16, N'Bursa')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (17, N'Çanakkale')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (18, N'Çankırı')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (19, N'Çorum')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (20, N'Denizli')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (21, N'Diyarbakır')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (22, N'Edirne')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (23, N'Elazığ')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (24, N'Erzincan')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (25, N'Erzurum')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (26, N'Eskişehir')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (27, N'Gaziantep')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (28, N'Giresun')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (29, N'Gümüşhane')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (30, N'Hakkari')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (31, N'Hatay')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (32, N'Isparta')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (33, N'Mersin')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (34, N'İstanbul')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (35, N'İzmir')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (36, N'Kars')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (37, N'Kastamonu')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (38, N'Kayseri')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (39, N'Kırklareli')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (40, N'Kırşehir')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (41, N'Kocaeli')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (42, N'Konya')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (43, N'Kütahya')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (44, N'Malatya')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (45, N'Manisa')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (46, N'K.Maraş')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (47, N'Mardin')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (48, N'Muğla')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (49, N'Muş')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (50, N'Nevşehir')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (51, N'Niğde')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (52, N'Ordu')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (53, N'Rize')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (54, N'Sakarya')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (55, N'Samsun')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (56, N'Siirt')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (57, N'Sinop')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (58, N'Sivas')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (59, N'Tekirdağ')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (60, N'Tokat')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (61, N'Trabzon')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (62, N'Tunceli')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (63, N'Şanlıurfa')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (64, N'Uşak')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (65, N'Van')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (66, N'Yozgat')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (67, N'Zonguldak')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (68, N'Aksaray')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (69, N'Bayburt')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (70, N'Karaman')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (71, N'Kırıkkale')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (72, N'Batman')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (73, N'Şırnak')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (74, N'Bartın')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (75, N'Ardahan')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (76, N'Iğdır')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (77, N'Yalova')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (78, N'Karabük')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (79, N'Kilis')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (80, N'Osmaniye')
GO
INSERT [dbo].[iller] ([illerID], [ilAdi]) VALUES (81, N'Düzce')
GO
SET IDENTITY_INSERT [dbo].[KanGruplari] ON 
GO
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi]) VALUES (1, N'A Rh+')
GO
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi]) VALUES (2, N'B Rh-')
GO
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi]) VALUES (3, N'A Rh-')
GO
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi]) VALUES (4, N'B Rh+')
GO
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi]) VALUES (5, N'AB Rh-')
GO
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi]) VALUES (6, N'AB Rh+')
GO
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi]) VALUES (7, N'0 Rh-')
GO
INSERT [dbo].[KanGruplari] ([KanGruplariID], [KanGrubuAdi]) VALUES (8, N'0 Rh+')
GO
SET IDENTITY_INSERT [dbo].[KanGruplari] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (1, N'75000000100', N'Mualla', N'123', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (2, N'21124299999', N'Alparslan', N'1234', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (3, N'1597', N'alidem', N'12345789', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (4, N'4144', N'Muzaffer', N'Muzaffer1234', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (5, N'7788999', N'Yalcin', N'123+', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (6, N'12335879641', N'vildan', N'vildan123', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (7, N'4461', N'Toprak', N'a123', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (8, N'23232323', N'kerimcan', N'2222333', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (11, N'5252523', N'Kemal', N'kmlkml', 2)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (12, N'3669', N'Metin', N'8541', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (13, N'23684984184', N'Abdurrahman', N'2123456', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (14, N'96328445565', N'kader', N'kdr321.', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (16, N'14256389657', N'Ferdi', N'ferdi748', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (17, N'12103289311', N'Birben', N'12345', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (18, N'122244', N'Anastasia', N'Gerg554', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (20, N'1298', N'hamit', N'hamit1234', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (21, N'1525', N'Baran ', N'qwerty', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (23, N'2961', N'Övünç', N'a2961', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (24, N'12345678901', N'Miray', N'Miray23', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (25, N'24520941499', N'Oğuz', N'Belali9+', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (26, N'12345678901', N'Yonca', N'yonca23', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (27, N'12365412358', N'Yasemin', N'q321', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (28, N'75757575859', N'Dilnur', N'7575dilnur', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (29, N'19071907993', N'Merthan', N'112233', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (30, N'12103543647', N'Hakan', N'12687', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (31, N'74125896321', N'Aslı', N'cn12313', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (32, N'19071907993', N'Mert', N'19071907', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (33, N'53534532453', N'Esin', N'Esin123', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (34, N'11634543678', N'Görkem', N'bk45645', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (35, N'21112324324', N'Harun', N'Harun.Harun', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (36, N'17774778', N'Maho', N'yksli159', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (37, N'12547896541', N'Rüya', N'Ruya123', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (38, N'12321312321', N'Arif', N'Ariiiiif', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (39, N'23423432432', N'Resül', N'rsl', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (40, N'12321312312', N'Süleyman', N'Süleyman123', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (41, N'78954569754', N'Halit', N'14halit2', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (42, N'78885548999', N'Faruk', N'far78far', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (43, N'78954569754', N'Zeynel', N'zeynn25', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (44, N'78954569754', N'Kasım', N'754kasım', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (45, N'78954569754', N'Fidan', N'fidaN176', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (46, N'96328445565', N'Fulya', N'flyaa.', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (47, N'96328445565', N'Gürkan', N'gurkan32.', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (48, N'96328445565', N'İsmet', N'temsi123', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (49, N'96328445565', N'Ayşe', N'asdfg963', 4)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (51, N'56789631463', N'Esra', N'Esra1245', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (52, N'12313113231', N'Dilaver', N'Dilaver123', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (53, N'33233233322', N'Hacer1', N'Sav123', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (54, N'12312312312', N'Aylin', N'Aylin12', 1)
GO
INSERT [dbo].[Kullanicilar] ([KullanicilarID], [KullaniciTC], [KullaniciAdi], [KullaniciSifre], [YetkiID]) VALUES (55, N'12545668955', N'Ahmet', N'12345a', 4)
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[OgrenciDers] ON 
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (2, 2, 1)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (3, 5, 1)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (4, 8, 1)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (5, 9, 1)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (6, 2, 151)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (7, 4, 151)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (8, 5, 151)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (9, 6, 151)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (10, 13, 151)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (11, 15, 151)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (12, 1, 230)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (13, 2, 230)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (14, 5, 230)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (15, 8, 230)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (16, 9, 230)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (17, 1, 50)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (18, 3, 24)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (19, 2, 50)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (20, 4, 24)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (21, 17, 1)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (22, 6, 24)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (23, 9, 50)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (24, 7, 24)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (25, 13, 1)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (26, 18, 50)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (27, 11, 24)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (28, 1, 27)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (29, 1, 44)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (30, 1, 21)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (31, 5, 50)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (32, 2, 27)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (33, 5, 27)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (34, 2, 21)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (35, 8, 27)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (36, 8, 21)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (37, 2, 44)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (38, 9, 27)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (39, 3, 44)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (40, 8, 50)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (41, 4, 44)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (42, 12, 44)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (43, 1, 54)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (44, 2, 16)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (45, 9, 21)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (46, 6, 70)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (47, 5, 21)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (48, 7, 70)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (49, 8, 70)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (50, 1, 264)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (51, 9, 70)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (52, 1, 60)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (53, 2, 54)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (54, 2, 264)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (55, 10, 70)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (56, 5, 264)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (57, 8, 264)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (58, 11, 70)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (59, 5, 54)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (60, 9, 264)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (61, 1, 82)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (62, 2, 60)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (63, 2, NULL)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (64, 4, 16)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (65, 5, 60)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (66, 6, 30)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (67, 12, 70)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (68, 8, 54)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (69, 1, 30)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (70, 8, 60)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (71, 9, 54)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (72, 20, 30)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (73, 17, 79)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (74, 21, 30)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (75, 9, 60)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (76, 14, 30)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (77, 10, 16)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (78, 18, 79)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (79, 7, 64)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (80, 7, 16)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (82, 9, 64)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (83, 2, 82)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (84, 1, 64)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (85, 4, 85)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (86, 1, 18)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (87, 2, 18)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (88, 3, 18)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (89, 8, 18)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (90, 5, 18)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (91, 7, 86)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (92, 2, 80)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (93, 3, 31)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (94, 2, 118)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (95, 8, 87)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (96, 2, 64)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (97, 9, 87)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (98, 3, 118)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (99, 19, 79)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (100, 15, 16)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (101, 11, 118)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (102, 10, 87)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (103, 4, 118)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (104, 11, 87)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (105, 4, 80)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (106, 21, 79)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (107, 7, 118)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (108, 10, 31)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (109, 12, 88)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (110, 13, 31)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (111, 12, 89)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (112, 4, 79)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (113, 6, 80)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (114, 4, 31)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (116, 12, 60)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (118, 8, 80)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (119, 5, 64)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (120, 2, 31)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (121, 15, 90)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (122, 10, 118)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (123, 17, 92)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (125, 9, 80)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (126, 17, 90)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (127, 6, 56)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (128, 3, 65)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (129, 3, 73)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (130, 17, 31)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (131, 4, 65)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (132, 4, 73)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (133, 7, 73)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (134, 17, 119)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (135, 1, 17)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (136, 17, 15)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (137, 6, 65)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (138, 18, 15)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (139, 3, 32)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (140, 10, 73)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (141, 7, 65)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (142, 19, 15)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (143, 4, 32)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (144, 5, 56)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (145, 20, 15)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (146, 10, 65)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (147, 13, 119)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (148, 21, 15)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (149, 10, 32)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (150, 4, 56)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (151, 12, 32)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (152, 14, 65)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (153, 2, 119)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (154, 3, 282)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (155, 2, 282)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (156, 13, 282)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (157, 15, 282)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (158, 1, 282)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (159, 5, 101)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (160, 2, 82)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (161, 8, 101)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (162, 3, 83)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (163, 10, 119)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (164, 9, 101)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (165, 2, 56)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (166, 20, 101)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (167, 9, 185)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (168, 4, 82)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (169, 1, 56)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (170, 17, 65)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (171, 17, 33)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (172, 5, 82)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (173, 2, 185)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (174, 3, 119)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (175, 13, 33)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (176, 5, 185)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (177, 6, 73)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (178, 21, 72)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (179, 1, 83)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (180, 2, 83)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (181, 3, 33)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (182, 1, 98)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (183, 4, 33)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (184, 20, 72)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (185, 4, 83)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (186, 19, 72)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (187, 2, 98)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (188, 5, 83)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (189, 6, 33)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (190, 18, 72)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (191, 8, 185)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (192, 6, 83)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (193, 18, 17)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (195, 1, 84)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (196, 16, 72)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (197, 6, 98)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (198, 2, 17)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (199, 2, 84)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (200, 6, 146)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (201, 4, 146)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (202, 1, 185)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (203, 3, 146)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (204, 1, 120)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (205, 3, 84)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (206, 17, 98)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (207, 12, 72)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (208, 1, 34)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (209, 4, 84)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (210, NULL, 146)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (211, 2, 120)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (212, 2, 34)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (213, 5, 84)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (214, 5, 98)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (215, 6, 95)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (216, 11, 72)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (217, 5, 34)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (218, 17, 34)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (219, 8, 17)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (220, 6, 120)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (221, 7, 85)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (222, 9, 34)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (223, 6, 85)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (224, 3, 79)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (225, 8, 85)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (226, 1, 77)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (227, 7, 79)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (228, 9, 85)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (229, 2, 77)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (230, 20, 35)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (231, 21, 35)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (232, 10, 85)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (233, 9, 98)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (234, 1, 35)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (235, 11, 86)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (236, 7, 186)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (237, 3, 77)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (238, 2, 35)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (239, 3, 120)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (240, 12, 86)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (241, 2, 105)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (242, 9, 17)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (243, 4, 77)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (244, 5, 35)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (245, 4, 120)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (246, 13, 86)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (247, 9, 105)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (248, 7, 77)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (249, 9, 35)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (250, 14, 86)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (251, 15, 186)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (252, 11, 79)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (253, 1, 87)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (254, 2, 87)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (255, 13, 17)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (256, 8, 105)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (257, 3, 87)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (258, 10, 77)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (259, 4, 87)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (260, 10, 186)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (261, 5, 87)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (262, 6, 87)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (263, 1, 88)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (264, 2, 88)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (265, 1, 106)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (266, 3, 88)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (267, 3, 186)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (268, 4, 88)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (269, 2, 106)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (270, 5, 88)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (271, 21, 105)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (272, 6, 88)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (273, 7, 89)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (274, 3, 106)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (275, 3, 36)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (276, 18, 105)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (277, 8, 89)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (278, 4, 106)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (279, 15, 77)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (280, 1, 89)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (281, 4, 36)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (282, 2, 120)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (283, 2, 89)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (284, 3, 89)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (285, 2, 108)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (286, 11, 36)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (287, 4, 90)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (288, 12, 36)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (289, 3, 99)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (290, 7, 106)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (291, 21, 114)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (292, 10, 36)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (293, 17, 114)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (294, 10, 106)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (295, 1, 42)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (296, 2, 42)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (297, 5, 90)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (298, 20, 114)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (299, NULL, 90)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (300, 9, 42)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (301, NULL, 90)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (302, 4, 99)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (303, 5, 108)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (304, 15, 106)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (305, 19, 114)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (306, NULL, 90)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (307, 19, 105)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (308, 8, 108)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (309, 18, 114)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (310, 4, 121)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (311, NULL, 108)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (312, 17, 42)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (313, 11, 29)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (314, 20, 42)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (315, 16, 29)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (316, 23, 115)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (317, 1, NULL)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (318, 7, 121)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (319, 7, 99)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (320, 20, 29)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (321, 10, 99)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (322, 21, 121)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (323, 21, 29)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (324, 15, 99)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (325, 18, 121)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (326, 17, 29)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (327, 17, 99)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (328, 18, 121)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (329, 3, 221)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (330, 4, 221)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (331, 10, 221)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (332, 17, 221)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (333, 7, 221)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (334, 21, 104)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (335, 1, 222)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (336, 2, 222)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (337, 9, 222)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (338, 17, 222)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (339, 21, 222)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (340, 3, 223)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (341, 22, 112)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (342, 4, 223)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (343, 10, 223)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (344, 7, 223)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (345, 21, 112)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (346, 2, 165)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (347, 2, 122)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (348, NULL, 165)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (349, 19, 223)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (350, 20, 112)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (351, 1, 122)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (352, 13, 27)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (353, 5, 67)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (354, 12, 112)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (355, 8, 112)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (356, NULL, 165)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (357, 7, 224)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (358, 6, 122)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (359, 1, 67)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (360, 11, 224)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (361, 10, 67)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (362, 1, NULL)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (363, 12, 224)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (364, 25, 115)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (365, 13, 224)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (366, 15, 67)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (367, 4, 224)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (368, 13, 122)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (369, 22, 152)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (370, 20, 104)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (371, 1, 225)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (372, 20, 67)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (373, 2, 225)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (374, 21, 122)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (375, 9, 225)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (376, 2, 134)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (377, 17, 225)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (378, 8, 225)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (379, 9, 152)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (380, 5, 115)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (381, NULL, 165)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (382, 5, 152)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (383, 5, 134)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (384, 9, 115)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (385, 4, 186)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (386, 14, 115)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (387, 25, 152)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (388, 3, 47)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (389, 23, 187)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (390, 8, 152)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (391, 1, 165)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (392, 4, 47)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (393, 14, 187)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (394, 7, 47)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (395, 18, 67)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (396, 10, 47)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (397, 13, 187)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (398, 15, 47)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (399, 17, 17)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (400, 21, 113)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (401, 15, 17)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (402, 27, 187)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (403, 13, 17)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (404, 26, 137)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (405, 20, 113)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (406, 27, 137)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (407, 3, 187)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (408, 19, 113)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (409, 18, 137)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (410, 18, 113)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (411, 15, 137)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (412, 16, 113)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (413, 19, 112)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (414, 16, 137)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (415, 15, 113)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (416, 17, 137)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (417, 3, 139)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (418, 4, 139)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (419, 7, 139)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (420, 2, 22)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (421, 1, 22)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (422, 22, 188)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (423, 20, 137)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (424, 8, 22)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (425, 15, 188)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (426, 10, 139)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (427, 23, 157)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (428, 14, 47)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (429, 1, 157)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (430, 15, 139)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (431, 17, 188)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (433, 11, 157)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (434, 1, 135)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (435, 8, 22)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (436, 17, 139)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (437, 12, 157)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (438, 2, 135)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (439, 12, 188)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (440, 1, 71)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (441, 3, 135)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (442, 18, 139)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (443, 9, 157)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (444, 4, 135)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (445, 7, 188)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (447, 8, 157)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (448, 2, 71)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (449, 6, 135)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (451, 25, 160)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (452, 25, 61)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (453, 5, 71)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (455, 24, 160)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (456, 7, 71)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (457, 22, 61)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (458, 21, 160)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (460, 13, 71)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (461, 16, 160)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (463, 20, 71)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (464, 9, 22)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (465, 14, 160)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (466, 5, 61)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (467, 10, 135)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (468, 8, 160)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (469, 8, 61)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (471, 17, 164)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (472, 10, 45)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (473, 1, 134)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (474, 9, 61)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (475, 16, 71)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (476, 12, 135)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (477, 8, 123)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (478, 9, 160)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (479, 15, 164)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (481, 7, 45)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (482, 4, 123)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (483, 5, 134)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (484, 27, 164)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (485, 15, 135)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (486, 2, 45)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (487, 3, 45)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (488, 1, 167)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (489, 13, 61)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (490, 9, 134)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (491, 4, 164)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (492, 4, 45)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (493, 2, 167)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (494, 5, 167)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (495, 5, 123)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (496, 9, 57)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (497, 21, 164)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (498, 6, 167)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (499, 8, 167)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (500, 8, 57)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (501, 5, 57)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (502, 16, 123)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (503, 9, 167)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (504, 1, 142)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (505, 1, 57)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (506, 2, 123)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (507, 2, 142)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (508, 2, 57)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (509, 19, 183)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (510, 20, 183)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (511, 21, 183)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (512, 5, 142)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (513, 1, 76)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (514, 22, 183)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (515, 10, 66)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (516, 2, 76)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (517, 6, 142)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (518, 16, 183)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (519, 7, 66)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (520, 5, 76)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (521, 8, 142)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (522, 4, 66)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (523, 11, 183)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (524, 8, 76)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (525, 9, 76)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (526, 9, 142)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (527, 3, 66)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (528, 23, 155)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (529, 4, 66)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (530, 18, 155)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (531, 15, 155)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (532, 9, 74)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (533, 10, 155)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (534, 8, 74)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (535, 7, 155)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (536, 4, 155)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (537, 1, 74)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (538, 2, 74)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (539, 5, 74)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (540, 3, 81)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (541, 4, 81)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (542, 7, 81)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (543, 10, 81)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (544, 15, 81)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (545, 1, 132)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (546, 3, 132)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (547, 5, 132)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (548, 6, 132)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (549, 7, 132)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (550, 1, 145)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (551, 2, 145)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (552, 5, 145)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (553, 8, 145)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (554, 1, 153)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (555, 2, 153)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (556, 5, 153)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (557, 8, 153)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (558, 9, 153)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (559, 1, 158)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (560, 2, 158)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (561, 5, 158)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (562, 8, 158)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (563, 9, 158)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (564, 1, 286)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (565, 3, 286)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (566, 4, 286)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (567, 7, 286)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (568, 10, 286)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (569, 3, 102)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (570, 4, 102)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (571, 7, 102)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (572, 10, 102)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (573, 15, 102)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (574, 1, 78)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (575, 2, 78)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (576, 3, 78)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (577, 4, 78)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (578, 5, 78)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (579, 6, 78)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (580, 11, 78)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (581, 12, 78)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (582, 9, 78)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (583, 6, 78)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (584, 1, 78)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (585, 1, 1)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (586, 12, 100)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (587, 15, 100)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (588, 17, 100)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (589, 21, 100)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (590, 4, 100)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (591, 3, 233)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (592, 5, 100)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (593, 4, 233)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (594, 7, 233)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (595, 8, 109)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (597, 10, 233)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (598, 16, 109)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (599, 15, 233)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (601, 15, 109)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (602, 18, 233)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (603, 17, 117)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (604, 1, 117)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (605, 2, NULL)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (606, 2, 117)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (607, 6, 117)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (608, 10, 117)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (609, 9, 117)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (610, 8, 117)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (611, 15, 236)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (612, 7, 117)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (613, 3, 236)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (614, 7, 236)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (615, 9, 136)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (616, 26, 236)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (617, 18, 136)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (618, 19, 136)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (619, 27, 236)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (620, 20, 136)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (621, 11, 236)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (622, 2, 136)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (623, 1, 136)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (624, 8, 136)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (625, 1, 147)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (626, 2, 147)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (627, 11, 147)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (628, 14, 147)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (629, 24, 251)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (630, 13, 147)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (631, 25, 251)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (632, 23, 251)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (633, 21, 251)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (634, 2, 172)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (635, 6, 172)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (636, 3, 172)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (637, 20, 251)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (638, 9, 172)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (639, 18, 251)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (640, 8, 172)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (641, 1, 199)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (642, 2, 199)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (643, 3, 199)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (644, 22, 266)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (645, 12, 266)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (646, 8, 266)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (647, 9, 266)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (648, 16, 266)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (649, 21, 266)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (651, 13, 2)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (652, 12, 2)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (654, 11, 2)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (655, 16, 2)
GO
INSERT [dbo].[OgrenciDers] ([OgrenciDersID], [DersID], [OgrenciID]) VALUES (656, 7, 2)
GO
SET IDENTITY_INSERT [dbo].[OgrenciDers] OFF
GO
SET IDENTITY_INSERT [dbo].[Ogrenciler] ON 
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (1, N'21212211212', N'Pelin', N'Mor', N'Kadın', CAST(N'2002-01-07' AS Date), 7, N'null', CAST(52.00 AS Decimal(18, 2)), CAST(1.76 AS Decimal(18, 2)), 2, 35, 5)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (2, N'14535487985', N'Pusat', N'Çakır', N'Erkek', CAST(N'2000-01-01' AS Date), 35, N' ', CAST(120.00 AS Decimal(18, 2)), CAST(1.40 AS Decimal(18, 2)), 3, 25, 9)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (6, N'23323233233', N'Kemal su', N'durmaz', N'Erkek', CAST(N'1990-01-01' AS Date), 2, N' ', CAST(76.00 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (7, N'80623214986', N'Cevdet', N'Halkalı', N'Erkek', CAST(N'2004-02-06' AS Date), 34, N'  ', CAST(63.00 AS Decimal(18, 2)), CAST(1.76 AS Decimal(18, 2)), 3, 21, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (12, N'', N'Nadir', N'Kiral', N'Erkek', CAST(N'1992-09-01' AS Date), 1, N'İstanbul/Ümraniye', CAST(78.00 AS Decimal(18, 2)), NULL, NULL, 33, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (14, N'81358360126', N'Emel', N'Baş', N'Kadın', CAST(N'2003-04-07' AS Date), 34, N'Şişli', CAST(48.00 AS Decimal(18, 2)), CAST(1.56 AS Decimal(18, 2)), 1, 21, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (15, N'75000000000', N'Nadir', N'Kiral', N'Erkek', CAST(N'2006-09-01' AS Date), 1, N'İstanbul/Ümraniye', CAST(50.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), 1, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (16, N'85013459847', N'Hasan', N'Yılmaz', N'Erkek', CAST(N'2005-04-23' AS Date), 56, N'Üsküdar', CAST(68.00 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), 6, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (17, N'35867867864', N'Selin', N'Dal', N'Kadın', CAST(N'2005-09-23' AS Date), 56, N'Beşiktaş', CAST(53.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), 4, 33, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (18, N'45637323499', N'Kemal', N'Çeken', N'Erkek', CAST(N'2003-02-18' AS Date), 34, N'Kadıköy/Bağdat Caddesi', CAST(78.00 AS Decimal(18, 2)), CAST(184.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (20, N'82985614754', N'Kadir', N'Polat', N'Erkek', CAST(N'2005-10-11' AS Date), NULL, N'Bakırköy', CAST(78.00 AS Decimal(18, 2)), CAST(1.81 AS Decimal(18, 2)), 2, 21, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (21, N'43218751245', N'Aslı', N'Duman', N'kadın', CAST(N'1995-02-03' AS Date), 34, N'İstanbul/Eyüp', CAST(53.00 AS Decimal(18, 2)), CAST(158.00 AS Decimal(18, 2)), 1, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (22, N'6000000010', N'Ece', N'Ak', N'Kadın', CAST(N'2003-11-11' AS Date), 34, N'Üsküdar', CAST(65.50 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), 2, 26, 10)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (24, N'15648998875', N'Muzaffer', N'Kababıyık', N'Erkek', CAST(N'1999-01-02' AS Date), 44, N'Aksaray', CAST(77.00 AS Decimal(18, 2)), CAST(1.78 AS Decimal(18, 2)), NULL, 25, 8)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (27, N'51204178943', N'Hasan', N'Yılmaz', N'Erkek', CAST(N'2003-01-07' AS Date), 41, N'Mecidiyeköy', CAST(65.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)), 5, 30, 10)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (28, N'46677383599', N'Yade', N'Çeken', N'Kadın', CAST(N'2005-05-28' AS Date), 34, N'Kadıköy/Bağdat Caddesi', CAST(55.00 AS Decimal(18, 2)), CAST(174.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (29, N'36363624545', N'Özer', N'Doğan', N'Erkek', CAST(N'2002-05-12' AS Date), 54, N'Gayrettepe', CAST(74.00 AS Decimal(18, 2)), CAST(1.79 AS Decimal(18, 2)), 2, 33, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (30, N'12121212121', N'Zeynep', N'Kara', N'Kadın', CAST(N'2000-02-07' AS Date), 7, N'Üsküdar', CAST(58.00 AS Decimal(18, 2)), CAST(1.63 AS Decimal(18, 2)), NULL, 35, 7)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (31, N'21212222211', N'Zehra', N'Ateş', N'Kadın', CAST(N'2001-03-07' AS Date), 6, N'Kadıköy', CAST(56.00 AS Decimal(18, 2)), CAST(1.99 AS Decimal(18, 2)), NULL, 35, 7)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (32, N'12211222121', N'Fatma', N'Gözlük', N'Kadın', CAST(N'2008-04-07' AS Date), 4, N'Bahçelievler', CAST(78.00 AS Decimal(18, 2)), CAST(1.95 AS Decimal(18, 2)), NULL, 35, 8)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (33, N'12112211221', N'Ayşe', N'Zengin', N'Kadın', CAST(N'2006-05-07' AS Date), 5, N'Küçükçekmece', CAST(67.00 AS Decimal(18, 2)), CAST(1.88 AS Decimal(18, 2)), 5, 35, 6)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (34, N'21212211212', N'Makbule', N'Gündüz', N'Kadın', CAST(N'2001-06-07' AS Date), 4, N'Kadıköy', CAST(78.00 AS Decimal(18, 2)), CAST(1.71 AS Decimal(18, 2)), NULL, 35, 6)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (35, N'22112121211', N'Nihal', N'Gece', N'Kadın', CAST(N'2002-07-07' AS Date), 1, N'Maltepe', CAST(65.00 AS Decimal(18, 2)), CAST(1.79 AS Decimal(18, 2)), 7, 35, 4)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (36, N'22212211212', N'Lale', N'Öz', N'Kadın', CAST(N'2003-08-07' AS Date), 9, N'Pendik', CAST(91.00 AS Decimal(18, 2)), CAST(1.68 AS Decimal(18, 2)), NULL, 35, 11)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (42, N'11221212111', N'Selen', N'Serçe', N'Kadın', CAST(N'2004-05-07' AS Date), 6, N'Kadıköy', CAST(88.00 AS Decimal(18, 2)), CAST(1.90 AS Decimal(18, 2)), 7, 35, 5)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (44, N'12345678955', N'Kamuran', N'Cimri', N'Erkek', CAST(N'1999-02-03' AS Date), 1, N'Cingen Mah.', CAST(68.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), 6, 25, 7)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (45, N'61233323433', N'Merve', N'Aslan', N'Kadın', CAST(N'2002-10-11' AS Date), 34, N'Şişli', CAST(70.00 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), 3, 26, 8)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (46, N'80842387524', N'Ayla', N'Can', N'Kadın', CAST(N'2001-04-03' AS Date), 20, N'Eyüp', CAST(50.00 AS Decimal(18, 2)), CAST(1.62 AS Decimal(18, 2)), NULL, 21, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (47, N'52541236478', N'Meltem', N'Kaya', N'Kadın', CAST(N'2002-07-01' AS Date), 61, N'Kartal', CAST(55.00 AS Decimal(18, 2)), CAST(1.55 AS Decimal(18, 2)), 4, 30, 8)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (48, N'48667385496', N'Murat', N'Aksoy', N'Erkek', CAST(N'2002-11-11' AS Date), 14, N'Şile', CAST(102.00 AS Decimal(18, 2)), CAST(194.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (50, N'70152463997', N'Kerem', N'Alsancak', N'Erkek', CAST(N'2003-12-10' AS Date), 35, N'İzmir Alsancak', CAST(75.50 AS Decimal(18, 2)), CAST(179.00 AS Decimal(18, 2)), 6, 28, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (51, N'32333643145', N'Osman', N'Akyürek', N'Erkek', CAST(N'2004-12-12' AS Date), 34, N'Kadıköy', CAST(69.00 AS Decimal(18, 2)), CAST(169.00 AS Decimal(18, 2)), 1, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (54, N'15444777885', N'Tüpra', N'Uyuz', N'Kadın', CAST(N'1998-02-07' AS Date), 2, N'Tantuni Sok.', CAST(25.00 AS Decimal(18, 2)), CAST(1.23 AS Decimal(18, 2)), 5, 25, 12)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (56, N'37946732364', N'Ayberk', N'Batlan', N'Erkek', CAST(N'2002-05-22' AS Date), 68, N'ZeytinBurnu', CAST(89.00 AS Decimal(18, 2)), CAST(1.87 AS Decimal(18, 2)), 2, 33, 7)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (57, N'62023687462', N'Yasemin', N'Şeker', N'Kadın', CAST(N'2004-12-09' AS Date), 34, N'Ümraniye', CAST(68.50 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), 1, 26, 5)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (58, N'32344553145', N'Mahmut', N'Tek', N'Erkek', CAST(N'2004-11-22' AS Date), 34, N'Kadıköy', CAST(79.00 AS Decimal(18, 2)), CAST(189.00 AS Decimal(18, 2)), 1, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (59, N'84523689513', N'Canan', N'Tanrıverdi', N'Kadın', CAST(N'2003-11-11' AS Date), 35, N'Bahçelievler', CAST(60.00 AS Decimal(18, 2)), CAST(1.73 AS Decimal(18, 2)), 6, 21, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (60, N'65000000000', N'Kubra', N'Kaya', N'Kadın', CAST(N'2006-08-08' AS Date), 34, N'Kartal', CAST(88.50 AS Decimal(18, 2)), CAST(1.62 AS Decimal(18, 2)), 1, 27, 5)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (61, N'53569874512', N'Halil', N'Morgül', N'Erkek', CAST(N'2002-10-11' AS Date), NULL, N'Bebek', CAST(72.00 AS Decimal(18, 2)), CAST(1.77 AS Decimal(18, 2)), 3, 30, 5)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (62, N'32333632145', N'Engin', N'Sevinç', N'Erkek', CAST(N'2004-09-12' AS Date), 34, N'Kadıköy', CAST(109.00 AS Decimal(18, 2)), CAST(189.00 AS Decimal(18, 2)), 1, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (63, N'22222227775', N'Kardelen', N'Bitli', N'Kadın', CAST(N'1996-05-03' AS Date), 40, N'Boncuklu köyü', CAST(44.00 AS Decimal(18, 2)), CAST(1.98 AS Decimal(18, 2)), 6, 25, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (64, N'83696452364', N'Hakan', N'Kasap', N'Erkek', CAST(N'2002-10-01' AS Date), 34, N'Halkalı', CAST(80.00 AS Decimal(18, 2)), CAST(1.83 AS Decimal(18, 2)), 1, 21, 10)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (65, N'65110000000', N'Sinan', N'Canan', N'Erkek', CAST(N'2006-02-08' AS Date), 34, N'Üsküdar', CAST(80.00 AS Decimal(18, 2)), CAST(1.72 AS Decimal(18, 2)), 4, 27, 8)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (66, N'63333333333', N'Ela', N'Bora', N'Kadın', CAST(N'2005-09-10' AS Date), 34, N'Beykoz', CAST(67.00 AS Decimal(18, 2)), CAST(1.78 AS Decimal(18, 2)), 3, 26, 11)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (67, N'36547543454', N'Ege', N'Demir', N'Erkek', CAST(N'2004-04-12' AS Date), NULL, N'Umraniye', NULL, CAST(1.85 AS Decimal(18, 2)), NULL, 33, 4)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (68, N'14777788955', N'Celal', N'Kebapçı', N'Erkek', CAST(N'2007-04-08' AS Date), 39, N'Kebap', CAST(148.00 AS Decimal(18, 2)), CAST(1.44 AS Decimal(18, 2)), 7, 25, 3)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (69, N'32333643145', N'Salih', N'Dert', N'Erkek', CAST(N'2004-06-11' AS Date), 29, N'Bostancı', CAST(62.00 AS Decimal(18, 2)), CAST(174.00 AS Decimal(18, 2)), 5, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (70, N'71152463997', N'Kadir', N'Doğu', N'Erkek', CAST(N'2004-05-04' AS Date), 26, N'Eskişehir', CAST(69.00 AS Decimal(18, 2)), CAST(158.00 AS Decimal(18, 2)), 5, 28, 5)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (71, N'36478343424', N'Egecan', N'Kırklık', N'Erkek', CAST(N'2004-08-13' AS Date), 56, NULL, CAST(65.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), 4, 33, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (72, N'66454000000', N'Yaşar', N'Kemal', N'Erkek', CAST(N'2004-01-08' AS Date), 34, N'Beşiktaş', CAST(50.50 AS Decimal(18, 2)), CAST(1.82 AS Decimal(18, 2)), 2, 27, 4)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (73, N'81365866666', N'Çağrı', N'Saydam', N'Erkek', CAST(N'2004-07-07' AS Date), 42, N'Beşiktaş', CAST(90.00 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)), 1, 21, 11)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (74, N'61026354789', N'Ahmet', N'Sönmez', N'Erkek', CAST(N'2001-05-22' AS Date), 34, N'Bakırköy', CAST(80.00 AS Decimal(18, 2)), CAST(1.85 AS Decimal(18, 2)), 3, 26, 12)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (75, N'11447788555', N'Alp Tigin', N'TurhanOğulları', N'Erkek', CAST(N'2005-05-05' AS Date), 71, N'Hamşu', CAST(86.00 AS Decimal(18, 2)), CAST(1.86 AS Decimal(18, 2)), NULL, 25, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (76, N'52478123567', N'Selim', N'Çayova', N'Erkek', CAST(N'2003-11-10' AS Date), 66, NULL, CAST(65.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)), 5, 30, 12)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (77, N'65545111240', N'Cemal', N'Süreya', N'Erkek', CAST(N'2003-08-08' AS Date), 52, N'Maltepe', CAST(45.50 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)), 3, 27, 7)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (78, N'38004889489', N'Sevde', N'Sevinç', N'Kadın', CAST(N'2003-04-02' AS Date), 80, N'Sancaktepe', NULL, NULL, 5, 33, 3)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (79, N'71522463997', N'Seda', N'Erkazan', N'Kadın', CAST(N'2005-11-11' AS Date), 34, N'Fatih', CAST(53.00 AS Decimal(18, 2)), CAST(160.00 AS Decimal(18, 2)), 8, 28, 7)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (80, N'33333648145', N'Gökhan', N'İçin', N'Erkek', CAST(N'2004-09-23' AS Date), 61, N'Kartal', CAST(85.00 AS Decimal(18, 2)), CAST(185.00 AS Decimal(18, 2)), 5, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (81, N'61111111111', N'Yusuf', N'Işık', N'Erkek', CAST(N'2002-11-02' AS Date), 34, N'Aksaray', CAST(67.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), 3, 26, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (82, N'32333222332', N'Kemal su', N'Kara', N'Erkek', CAST(N'1998-02-03' AS Date), 2, N'Bakırköy', CAST(70.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (83, N'32233442323', N'Pelin su', N'Beyaz', N'Kadın', CAST(N'2000-11-11' AS Date), 2, N'Beylikdüzü', CAST(76.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (84, N'23332223333', N'Su', N'Sucukluoğlu', N'Kadın', CAST(N'2001-07-07' AS Date), 2, N'Sağmalcılar', CAST(80.00 AS Decimal(18, 2)), CAST(1.85 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (85, N'22222233333', N'Kara Cemal', N'Purple', N'Erkek', CAST(N'2002-02-01' AS Date), 2, N'Üsküdar', CAST(82.00 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (86, N'22233322333', N'Canan', N'Karatay', N'Kadın', CAST(N'2000-11-12' AS Date), 2, N'Cihangir', CAST(35.00 AS Decimal(18, 2)), CAST(1.55 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (87, N'22332323332', N'Namık', N'Ankaralı', N'Erkek', CAST(N'2001-01-12' AS Date), 2, N'Keçiören', CAST(84.00 AS Decimal(18, 2)), CAST(1.82 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (88, N'23342323332', N'Nasrettin', N'Hoca', N'Erkek', CAST(N'2002-04-05' AS Date), 2, N'Akşehir', CAST(70.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (89, N'23342333223', N'Hamit', N'Tolstoy', N'Erkek', CAST(N'2001-06-07' AS Date), 2, N'Katip Çelebi', CAST(65.00 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (90, N'23443232323', N'Oğuz', N'Yakışıklı', N'Erkek', CAST(N'2000-04-06' AS Date), 2, N'Sirkeci', CAST(76.00 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (91, N'23323342323', N'Görkem', N'Uzun', N'Erkek', CAST(N'1999-05-06' AS Date), 2, N'Pendik', CAST(76.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (92, N'23423233322', N'Barancan', N'Bilgisayarsız', N'Erkek', CAST(N'2001-08-09' AS Date), 2, N'Karaköy', CAST(84.00 AS Decimal(18, 2)), CAST(1.84 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (93, N'22334232322', N'Kenan', N'Kaptan', N'Erkek', CAST(N'2002-01-01' AS Date), 2, N'Bayrampaşa', CAST(78.00 AS Decimal(18, 2)), CAST(1.81 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (94, N'23323333233', N'Mehmet su', N'Karasu', N'Erkek', CAST(N'2003-02-05' AS Date), 2, N'Bakırköy', CAST(78.00 AS Decimal(18, 2)), CAST(1.83 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (95, N'23322233323', N'Sibel su', N'durmaz', N'Kadın', CAST(N'2002-04-05' AS Date), 2, N'Cennet Mahallesi', CAST(70.00 AS Decimal(18, 2)), CAST(1.18 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (96, N'23323323322', N'Sessiz', N'Sakin', N'Erkek', CAST(N'2004-06-07' AS Date), 2, N'Üsküdart', CAST(78.00 AS Decimal(18, 2)), CAST(1.78 AS Decimal(18, 2)), 2, 38, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (97, N'11258963475', N'Memati', N'Çakıroğlu', N'Erkek', CAST(N'2004-03-01' AS Date), 48, N'Mezar', CAST(77.00 AS Decimal(18, 2)), CAST(1.67 AS Decimal(18, 2)), NULL, 25, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (98, N'80000000212', N'Arzu', N'Haktan', N'Kadın', CAST(N'2002-09-01' AS Date), 34, N'Ataşehir', CAST(52.00 AS Decimal(18, 2)), CAST(1.61 AS Decimal(18, 2)), 7, 21, 12)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (99, N'66240000000', N'Fazıl', N'Say', N'Erkek', CAST(N'2002-02-08' AS Date), 36, N'Kartal', CAST(88.50 AS Decimal(18, 2)), CAST(1.62 AS Decimal(18, 2)), NULL, 27, 13)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (100, N'37846845685', N'Dilara', N'Ata', N'Kadın', CAST(N'2002-07-08' AS Date), 57, NULL, CAST(45.00 AS Decimal(18, 2)), CAST(1.55 AS Decimal(18, 2)), NULL, 33, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (101, N'33333698765', N'Özlem', N'Yaşar', N'Kadın', CAST(N'2004-09-23' AS Date), 33, N'Küçükyalı', CAST(45.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 4, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (102, N'54748235414', N'Ayşe', N'Öztürk', N'Kadın', CAST(N'2002-11-07' AS Date), 45, N'Bostancı', CAST(52.00 AS Decimal(18, 2)), NULL, 1, 30, 13)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (104, N'66990000000', N'Şükrü', N'Erbaş', N'Erkek', CAST(N'2005-04-04' AS Date), NULL, N'Pendik', NULL, CAST(1.62 AS Decimal(18, 2)), 1, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (105, N'84236479635', N'Nazlı', N'İlter', N'Kadın', CAST(N'2003-03-05' AS Date), 58, N'Fatih', CAST(61.00 AS Decimal(18, 2)), CAST(1.71 AS Decimal(18, 2)), 4, 21, 5)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (106, N'72589463997', N'Fatmagül', N'Bostan', N'Kadın', CAST(N'2005-09-04' AS Date), 17, N'Çanakkale Ezine', CAST(74.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), 3, 28, 9)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (108, N'35467698765', N'Derya', N'Talihsiz', N'Kadın', CAST(N'2004-11-23' AS Date), 38, N'İdealtepe', CAST(49.00 AS Decimal(18, 2)), CAST(159.00 AS Decimal(18, 2)), 1, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (109, N'38563634346', N'Burcu', N'Tatlı', NULL, CAST(N'2002-06-03' AS Date), NULL, N'Göktürk', CAST(70.00 AS Decimal(18, 2)), CAST(1.68 AS Decimal(18, 2)), 6, 33, 4)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (110, N'14785222225', N'Toprak Su', N'Ateş', N'Kadın', CAST(N'2008-05-07' AS Date), 81, N'Karte', NULL, NULL, NULL, 25, 4)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (112, N'70859463997', N'Halise', N'Yılmaz', N'Kadın', CAST(N'2004-02-02' AS Date), 1, N'Adana Seyhan', CAST(75.00 AS Decimal(18, 2)), CAST(172.00 AS Decimal(18, 2)), 2, 28, 5)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (113, N'67356000000', N'Gamze', N'Sümbül', N'Kadın', CAST(N'2002-08-08' AS Date), NULL, N'Kartal', CAST(88.50 AS Decimal(18, 2)), CAST(1.62 AS Decimal(18, 2)), 6, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (114, N'18877998825', N'Pehlül', N'Hanımcı', N'Erkek', CAST(N'2005-09-09' AS Date), 54, N'Hanım Köylü', CAST(78.00 AS Decimal(18, 2)), NULL, 6, 25, 13)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (115, N'82222222222', N'Bade', N'Uçmaz', N'Kadın', CAST(N'2003-12-12' AS Date), 34, N'Mecidiyeköy', CAST(48.00 AS Decimal(18, 2)), CAST(1.54 AS Decimal(18, 2)), 1, 21, 10)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (116, N'35469922765', N'Kadirye', N'Taşkın', N'Kadın', CAST(N'2004-11-23' AS Date), 41, N'Uğurmumcu', CAST(54.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 6, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (117, N'39546856889', N'Merve', N'Türkmen', N'Kadın', CAST(N'2001-04-03' AS Date), 53, NULL, CAST(53.00 AS Decimal(18, 2)), NULL, 3, 33, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (118, N'42794561232', N'Yasin', N'Volvo', N'erkek', CAST(N'1994-03-04' AS Date), 35, N'Üsküdar', CAST(55.00 AS Decimal(18, 2)), CAST(165.00 AS Decimal(18, 2)), 2, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (119, N'44548645124', N'Birgul', N'Çocuk', N'kadın', CAST(N'1993-04-05' AS Date), 46, N'Kadıköy', CAST(60.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), 3, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (120, N'41234567893', N'Ersin', N'Memur', N'erkek', CAST(N'1992-05-06' AS Date), 78, N'Beykoz', CAST(70.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), 4, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (121, N'42345678913', N'Ebru', N'Yemek', N'kadın', CAST(N'1991-06-07' AS Date), 23, N'Şişli', CAST(80.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), 5, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (122, N'40213546579', N'Murat', N'Asker', N'erkek', CAST(N'1990-01-01' AS Date), 14, N'Kağıthane', CAST(85.00 AS Decimal(18, 2)), CAST(185.00 AS Decimal(18, 2)), 6, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (123, N'40000000001', N'Mevlude', N'Manyak', N'kadın', CAST(N'2001-01-01' AS Date), 80, N'Sarıyer', CAST(90.00 AS Decimal(18, 2)), CAST(190.00 AS Decimal(18, 2)), 7, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (124, N'41111111112', N'Ferat', N'Oto', N'erkek', CAST(N'2001-01-01' AS Date), 44, N'Arnavutköy', CAST(52.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 8, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (125, N'42222222223', N'Ayla', N'Gezgin', N'kadın', CAST(N'2001-01-01' AS Date), 33, N'Bakırköy', CAST(55.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 1, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (126, N'44444444445', N'Mete', N'Kulak', N'erkek', CAST(N'2001-01-01' AS Date), 22, N'Gop', CAST(63.00 AS Decimal(18, 2)), CAST(163.00 AS Decimal(18, 2)), 2, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (127, N'44444444446', N'Nihal', N'Bal', N'kadın', CAST(N'2001-01-01' AS Date), 31, N'Beylikdüzü', CAST(73.00 AS Decimal(18, 2)), CAST(173.00 AS Decimal(18, 2)), 3, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (128, N'43333333335', N'Kerim', N'Tıman', N'erkek', CAST(N'2001-01-01' AS Date), 11, N'Beşiktaş', CAST(83.00 AS Decimal(18, 2)), CAST(183.00 AS Decimal(18, 2)), 4, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (129, N'43212451573', N'Ela', N'Cadı', N'kadın', CAST(N'2001-01-01' AS Date), 77, N'Beyoğlu', CAST(93.00 AS Decimal(18, 2)), CAST(193.00 AS Decimal(18, 2)), 5, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (130, N'4310578785', N'Yiğit', N'Dilbaz', N'erkek', CAST(N'2001-01-01' AS Date), 66, N'Esenler', CAST(103.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 6, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (132, N'61635659974', N'Çınar', N'Kaya', N'Erkek', CAST(N'2001-06-09' AS Date), 34, N'Kadıköy', CAST(70.00 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)), 2, 26, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (134, N'35469922874', N'Bedriye', N'Taşkın', N'Kadın', CAST(N'2004-10-23' AS Date), 41, N'Maltepe', CAST(54.00 AS Decimal(18, 2)), CAST(165.00 AS Decimal(18, 2)), 3, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (135, N'65644785666', N'Kubra', N'Akyazi', N'Kadın', CAST(N'2004-05-06' AS Date), 36, N'Esenler', CAST(60.00 AS Decimal(18, 2)), CAST(1.72 AS Decimal(18, 2)), 3, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (136, N'37754373473', N'Günce', N'Durukan', N'Kadın', CAST(N'2004-09-11' AS Date), NULL, N'Mecidiyekoy', CAST(62.00 AS Decimal(18, 2)), NULL, NULL, 33, 3)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (137, N'84444444444', N'Can', N'Elmalı', N'Erkek', CAST(N'2004-10-11' AS Date), 40, N'Okmeydanı', CAST(75.00 AS Decimal(18, 2)), CAST(1.76 AS Decimal(18, 2)), NULL, 21, 13)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (139, N'73596873997', N'Aynur', N'Kaplancı', N'Kadın', CAST(N'2006-09-15' AS Date), 47, N'Mardin Midyat', CAST(95.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), 1, 28, 7)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (141, N'32469025765', N'Huriye', N'Taşkın', N'Kadın', CAST(N'2004-03-23' AS Date), 41, N'Uğurmumcu', CAST(54.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), 6, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (142, N'66486598714', N'Eslem', N'Kara', N'Kadın', CAST(N'2003-04-09' AS Date), 34, N'Sultanbeyli', CAST(60.50 AS Decimal(18, 2)), CAST(1.52 AS Decimal(18, 2)), 7, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (143, N'17877889965', N'Usman', N'Haydarpaşa', N'Erkek', CAST(N'2002-12-11' AS Date), 34, N'Cincon Sok.', CAST(42.00 AS Decimal(18, 2)), NULL, 8, 25, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (144, N'4253564124', N'İnci', N'Saf', N'kadın', CAST(N'2001-01-01' AS Date), 55, N'Esenyurt', CAST(45.00 AS Decimal(18, 2)), CAST(149.00 AS Decimal(18, 2)), 7, 31, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (145, N'65236511452', N'Ayşegül', N'Bozkurt', N'Kadın', CAST(N'2002-04-19' AS Date), 34, N'Çamlıca', CAST(60.00 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), 1, 26, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (146, N'75000000001', N'Muhsin', N'Sahan', N'Erkek', CAST(N'2005-01-09' AS Date), 15, N'İstanbul/Kadıköy', CAST(50.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), 1, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (147, N'40354512523', N'Pırıl', N'Kenanoğlu', N'Kadın', NULL, 34, N'Beyoğlu', NULL, CAST(1.57 AS Decimal(18, 2)), 7, 33, 4)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (148, N'31365926765', N'Ajda', N'Tekkan', N'Kadın', CAST(N'2005-11-23' AS Date), 34, N'Etiler', CAST(54.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 4, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (151, N'94217521254', N'Huriye', N'Şaşkın', N'Kadın', CAST(N'2001-01-01' AS Date), 65, N'İstanbul-Kadıköy', NULL, NULL, 2, 39, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (152, N'93587421478', N'Latif', N'Keskin', N'Erkek', CAST(N'2001-12-11' AS Date), 21, N'İstanbul-Ataköy', NULL, NULL, 1, 39, 5)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (153, N'90258789654', N'Hayri', N'Nereden', N'Erkek', CAST(N'2001-11-30' AS Date), 34, N'İstanbul-Kadıköy', NULL, NULL, 7, 39, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (155, N'93258789654', N'Meral', N'Çiçek', N'Kadın', CAST(N'2003-09-03' AS Date), 52, N'İstanbul-Mecidiyeköy', NULL, NULL, 2, 39, 7)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (157, N'81313131313', N'Poyraz', N'Karaeski', N'Erkek', CAST(N'2005-01-01' AS Date), NULL, N'İncirli', CAST(78.00 AS Decimal(18, 2)), CAST(1.86 AS Decimal(18, 2)), 2, 21, 6)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (158, N'90147852125', N'Derviş', N'Karabas', N'Erkek', CAST(N'2002-12-28' AS Date), 45, N'İstanbul-Esenler', NULL, NULL, 4, 39, 8)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (160, N'71448963997', N'Nehir', N'Aydoğdu', N'Kadın', CAST(N'2005-11-25' AS Date), 1, N'Adana Kozan', CAST(55.00 AS Decimal(18, 2)), CAST(156.00 AS Decimal(18, 2)), 5, 28, 10)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (161, N'35469922765', N'Aslı', N'Tuna', N'Kadın', CAST(N'2005-11-13' AS Date), 34, N'Pendik', CAST(54.00 AS Decimal(18, 2)), CAST(159.00 AS Decimal(18, 2)), 6, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (162, N'64236510000', N'İleyda', N'Çelen', N'Kadın', CAST(N'2005-07-29' AS Date), 34, N'Acıbadem', CAST(65.00 AS Decimal(18, 2)), CAST(1.72 AS Decimal(18, 2)), 3, 26, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (163, N'35469922874', N'Seçkin', N'Sakin', N'Erkek', CAST(N'2006-10-11' AS Date), 35, N'Kaynarca', CAST(94.00 AS Decimal(18, 2)), CAST(185.00 AS Decimal(18, 2)), 3, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (164, N'80000003454', N'Gül', N'Soyak', N'Kadın', CAST(N'2002-01-12' AS Date), 50, N'Kadıköy', CAST(45.00 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)), 5, 21, 8)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (165, N'75000000002', N'Ahmad', N'Kerdim', N'Erkek', CAST(N'2005-01-01' AS Date), 1, N'NULL', CAST(51.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), NULL, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (166, N'75000000003', N'Deva', N'Gura', N'Kadın', CAST(N'2005-01-02' AS Date), 2, N'İstanbul/Ümraniye', CAST(52.00 AS Decimal(18, 2)), CAST(141.00 AS Decimal(18, 2)), 2, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (167, N'73699683997', N'Fadime', N'Arıkan', N'Kadın', CAST(N'2003-10-14' AS Date), 16, N'Bursa Osmangazi', CAST(49.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 6, 28, 12)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (168, N'75000000004', N'Füsun', N'Badun', N'Kadın', CAST(N'2005-01-03' AS Date), 3, N'İstanbul/Bağcılar', CAST(53.00 AS Decimal(18, 2)), CAST(142.00 AS Decimal(18, 2)), NULL, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (169, N'32469025765', N'   Ayla', N'Taşkın', N'Kadın', CAST(N'2004-03-23' AS Date), 41, N'Kaynarca', CAST(54.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), 6, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (170, N'62365987412', N'Tuğba', N'Süren', N'Kadın', CAST(N'2001-05-26' AS Date), 34, N'Sultanbeyli', CAST(67.00 AS Decimal(18, 2)), CAST(1.68 AS Decimal(18, 2)), 1, 26, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (171, N'78945566545', N'Pelin', N'Balcı', N'Kadın', CAST(N'2003-08-04' AS Date), 12, N'Orman mah.', CAST(99.00 AS Decimal(18, 2)), CAST(1.55 AS Decimal(18, 2)), 4, 25, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (172, N'40467346525', N'Esma', N'Çelik', N'Kadın', CAST(N'2004-03-01' AS Date), 53, N'Beşiktaş', CAST(53.00 AS Decimal(18, 2)), CAST(1.68 AS Decimal(18, 2)), 4, 33, 11)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (173, N'75000000005', N'Ahsen', N'Erra', N'NULL', CAST(N'2005-01-04' AS Date), 4, N'Ankara/Ayrancılar', CAST(54.00 AS Decimal(18, 2)), CAST(143.00 AS Decimal(18, 2)), 2, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (174, N'31333926765', N'Su', N'Hayat', N'Kadın', CAST(N'2003-11-23' AS Date), 34, N'Etiler', CAST(54.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), 4, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (175, N'81234563244', N'Fahri', N'Gül', N'Erkek', CAST(N'2001-10-12' AS Date), 34, N'Güngören', CAST(85.00 AS Decimal(18, 2)), CAST(1.76 AS Decimal(18, 2)), 6, 21, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (176, N'67486598715', N'Nazan', N'Bekiroğlu', N'Kadın', CAST(N'2003-04-10' AS Date), 34, N'Sultanbeyli', CAST(60.50 AS Decimal(18, 2)), CAST(1.52 AS Decimal(18, 2)), 7, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (177, N'68486598716', N'Ali', N'Nazik', N'Erkek', CAST(N'2004-05-30' AS Date), 38, N'Kadiköy', CAST(70.50 AS Decimal(18, 2)), CAST(1.63 AS Decimal(18, 2)), 6, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (178, N'69486598717', N'Armağan', N'Karslı', N'Erkek', CAST(N'2005-06-29' AS Date), 52, N'Üsküdar', CAST(82.50 AS Decimal(18, 2)), CAST(1.72 AS Decimal(18, 2)), 5, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (179, N'65415158718', N'Ömer', N'Zalım', N'Erkek', CAST(N'2002-07-19' AS Date), 60, N'Fatih', CAST(60.00 AS Decimal(18, 2)), CAST(1.50 AS Decimal(18, 2)), 4, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (181, N'60236874123', N'Ceren', N'Kavak', N'Kadın', CAST(N'2002-03-18' AS Date), 34, N'Avcılar', CAST(63.00 AS Decimal(18, 2)), CAST(1.72 AS Decimal(18, 2)), 3, 26, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (183, N'73698873997', NULL, N'Derdiyok', N'Erkek', CAST(N'2006-10-28' AS Date), 16, N'Yıldırım', CAST(56.00 AS Decimal(18, 2)), CAST(165.00 AS Decimal(18, 2)), 5, 28, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (184, N'31431922874', N'Seçkin', N'Kan', N'Erkek', CAST(N'2003-10-11' AS Date), 35, N'Kaynarca', CAST(94.00 AS Decimal(18, 2)), CAST(185.00 AS Decimal(18, 2)), 3, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (185, N'85216578742', N'Selin', N'Koper', N'Kadın', CAST(N'2006-05-13' AS Date), 51, N'Kartal', CAST(55.00 AS Decimal(18, 2)), NULL, 2, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (186, N'85548745698', N'Hakan', N'Hurkuş', N'Erkek', CAST(N'2004-07-23' AS Date), 45, N'Ümraniye', CAST(78.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)), 5, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (187, N'85615230746', N'Sevim', N'Kaya', N'Kadın', CAST(N'2005-11-03' AS Date), 33, N'Beykoz', CAST(50.00 AS Decimal(18, 2)), CAST(1.55 AS Decimal(18, 2)), NULL, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (188, N'85344002145', N'Harun', N'Katmer', N'Erkek', CAST(N'2005-06-11' AS Date), 53, N'Ataşehir', CAST(65.00 AS Decimal(18, 2)), NULL, 4, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (189, N'85950216678', N'Büşra', N'Kazdal', N'Kadın', CAST(N'2004-10-12' AS Date), 56, N'Kadıköy', CAST(53.00 AS Decimal(18, 2)), CAST(1.55 AS Decimal(18, 2)), 5, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (190, N'85694175783', N'Kamil', N'Karcı', N'Erkek', CAST(N'2005-08-07' AS Date), 41, N'Üsküdar', NULL, NULL, 7, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (191, N'89786214578', N'Derya', N'Samur', N'Kadın', CAST(N'2005-04-01' AS Date), 35, N'Maltepe', NULL, NULL, 1, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (192, N'86784559847', N'Hayri', N'Sönmez', N'Erkek', CAST(N'2005-06-20' AS Date), 80, N'Pendik', CAST(71.00 AS Decimal(18, 2)), CAST(1.73 AS Decimal(18, 2)), 2, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (193, N'88952143545', N'Melis', N'Keskin', N'Kadın', CAST(N'2004-09-07' AS Date), 48, N'Bakırköy', CAST(67.00 AS Decimal(18, 2)), CAST(1.63 AS Decimal(18, 2)), 1, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (194, N'87013456651', N'Murat', N'Kaya', N'Erkek', CAST(N'2005-02-15' AS Date), 32, N'Sancaktepe', NULL, NULL, 2, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (195, N'88211453367', N'Duygu', N'Öztürk', N'Kadın', CAST(N'2005-03-12' AS Date), 52, N'Sarıyer', CAST(58.00 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), 3, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (196, N'86214578933', N'Hasan', N'Göktürk', N'Erkek', CAST(N'2005-07-07' AS Date), 15, N'Beşiktaş', CAST(63.00 AS Decimal(18, 2)), CAST(1.71 AS Decimal(18, 2)), 1, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (197, N'87211244566', N'Çiğdem', N'Ekşioğlu', N'Kadın', CAST(N'2004-09-11' AS Date), 8, N'Eyüp', CAST(66.00 AS Decimal(18, 2)), CAST(1.61 AS Decimal(18, 2)), 2, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (198, N'85521456955', N'Serhat', N'Kurt', N'Erkek', CAST(N'2005-05-21' AS Date), 13, N'Ümraniye', CAST(55.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)), 1, 23, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (199, N'40347867547', N'Didem', N'Tala', N'', NULL, 78, N'Bebek', CAST(56.00 AS Decimal(18, 2)), CAST(1.72 AS Decimal(18, 2)), 5, 33, 8)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (207, N'32469025765', N'Ayla', N'Baki', N'Kadın', CAST(N'2003-03-23' AS Date), 41, N'Maltepe', CAST(64.00 AS Decimal(18, 2)), CAST(173.00 AS Decimal(18, 2)), 6, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (208, N'84445445568', N'Ediz', N'Ayar', N'Erkek', CAST(N'2006-10-10' AS Date), 34, N'Kızıltoprak', CAST(68.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), 2, 21, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (209, N'75000000007', N'Asiye', N'Dinç', N'Kadın', CAST(N'2005-01-06' AS Date), NULL, N'Ankara/Gölbaşı', CAST(55.00 AS Decimal(18, 2)), CAST(144.00 AS Decimal(18, 2)), 4, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (210, N'33356926765', N'Toprak', N'Hayat', N'Erkek', CAST(N'2004-11-23' AS Date), 34, N'Etiler', CAST(54.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), 4, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (211, N'99887742345', N'Asuman', N'Mit', N'Kadın', CAST(N'2007-06-01' AS Date), 22, N'Gizli', CAST(80.00 AS Decimal(18, 2)), CAST(2.20 AS Decimal(18, 2)), 1, 25, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (212, N'75000000008', N'Ramazan', N'Tanrıverdi', N'Erkek', CAST(N'2005-01-07' AS Date), 21, N'Diyarbakır/Bağlar', CAST(56.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), 1, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (213, N'63654987566', N'Dila', N'Yenen', N'Kadın', CAST(N'2003-02-10' AS Date), 34, N'Pendik', CAST(58.00 AS Decimal(18, 2)), CAST(1.63 AS Decimal(18, 2)), 1, 26, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (214, N'75000000009', N'Umut', N'Ket', N'Erkek', CAST(N'2005-01-08' AS Date), 6, N'İstanbul/Mecidiyeköy', CAST(57.00 AS Decimal(18, 2)), CAST(145.00 AS Decimal(18, 2)), NULL, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (215, N'75000000010', N'Salih', N'Oriç', N'Erkek', CAST(N'2005-01-09' AS Date), 7, N'İstanbul/Fatih', CAST(58.00 AS Decimal(18, 2)), CAST(146.00 AS Decimal(18, 2)), 5, 20, 8)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (216, N'75000000011', N'Efrahim', N'Demir', N'Erkek', CAST(N'2005-02-09' AS Date), 8, N'NULL', CAST(50.00 AS Decimal(18, 2)), CAST(140.00 AS Decimal(18, 2)), 6, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (217, N'75000000012', N'Suna', N'Alem', N'Kadın', CAST(N'2005-03-10' AS Date), 9, N'İstanbul/Acıbadem', CAST(59.00 AS Decimal(18, 2)), CAST(147.00 AS Decimal(18, 2)), NULL, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (221, N'22211112121', N'Leyla', N'Yeşil', N'Kadın', CAST(N'2002-09-07' AS Date), 8, N'Tavşantepe', CAST(61.00 AS Decimal(18, 2)), CAST(1.62 AS Decimal(18, 2)), 2, 35, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (222, N'12122121212', N'Canan', N'Mavi', N'Kadın', CAST(N'2002-01-07' AS Date), 4, N'Kaynarca', CAST(76.00 AS Decimal(18, 2)), CAST(1.86 AS Decimal(18, 2)), 4, 35, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (223, N'11111121121', N'Yasemin', N'Ağaç', N'Kadın', CAST(N'2002-02-07' AS Date), 2, N'Florya', CAST(89.00 AS Decimal(18, 2)), CAST(1.54 AS Decimal(18, 2)), 5, 35, 3)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (224, N'21211112111', N'Alev', N'Defterci', N'Kadın', CAST(N'2002-03-07' AS Date), 3, N'Yenibosna', CAST(52.00 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), 6, 35, 4)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (225, N'21112121111', N'Nevin', N'Makale', N'Kadın', CAST(N'2002-04-07' AS Date), 1, N'Mecidiyeköy', CAST(66.00 AS Decimal(18, 2)), CAST(1.82 AS Decimal(18, 2)), 5, 35, 3)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (226, N'37895489486', N'Meral', N'Danyıldız', N'Kadın', CAST(N'2002-01-01' AS Date), 68, N'Şişli', CAST(78.00 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), 6, 33, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (227, N'32333763145', N'Osman', N'Tembel', N'Erkek', CAST(N'2004-12-31' AS Date), 34, N'Kadıköy', CAST(69.00 AS Decimal(18, 2)), CAST(169.00 AS Decimal(18, 2)), 1, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (230, N'33225545555', N'Acar', N'Roketatar', N'Erkek', CAST(N'2012-06-04' AS Date), NULL, NULL, NULL, NULL, NULL, 25, 5)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (231, N'33344553245', N'Melih', N'Tek', N'Erkek', CAST(N'2001-01-01' AS Date), 34, N'Kadıköy', CAST(79.00 AS Decimal(18, 2)), CAST(179.00 AS Decimal(18, 2)), 1, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (232, N'64521479632', N'Beren', N'Yıldız', N'Kadın', CAST(N'2004-01-02' AS Date), 34, N'Kartal', CAST(60.00 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), 2, 26, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (233, N'74859463997', N'Gülay', N'Bozkurt', N'Kadın', CAST(N'2005-04-17' AS Date), 25, NULL, CAST(50.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 7, 28, 8)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (234, N'32333633687', N'Engin', N'Kaynarca', N'Erkek', CAST(N'2003-09-12' AS Date), 34, N'Kadıköy', CAST(100.00 AS Decimal(18, 2)), CAST(189.00 AS Decimal(18, 2)), 1, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (236, N'74111523997', N'Kamil', N'Sarıtaş', N'Erkek', CAST(N'2006-08-01' AS Date), 61, N'Trabzon', CAST(45.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 5, 28, 13)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (237, N'61253687414', N'İrem', N'Genç', N'Kadın', CAST(N'2000-10-16' AS Date), 34, N'Beyazıt', CAST(56.00 AS Decimal(18, 2)), CAST(1.63 AS Decimal(18, 2)), 2, 26, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (239, N'14774366645', N'Doldur', N'Mehtaneci', N'Kadın', CAST(N'2017-03-20' AS Date), 36, N'Zeki Cad', CAST(12.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), NULL, 25, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (240, N'67486598715', N'Aşık', N'Veysel', N'Erkek', CAST(N'2003-05-22' AS Date), 44, N'Ataşehir', CAST(62.50 AS Decimal(18, 2)), CAST(1.42 AS Decimal(18, 2)), 8, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (241, N'68486598716', N'Hikmet', N'Kıvılcımlı', N'Erkek', CAST(N'2003-08-30' AS Date), 45, N'Üsküdar', CAST(70.00 AS Decimal(18, 2)), CAST(1.83 AS Decimal(18, 2)), 5, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (242, N'69486598717', N'Cahit', N'Zarifoğlu', N'Erkek', CAST(N'2004-06-17' AS Date), 62, N'Aksaray', CAST(82.50 AS Decimal(18, 2)), CAST(1.72 AS Decimal(18, 2)), 5, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (244, N'12221121111', N'Selin', N'Mavi', N'Kadın', CAST(N'2006-07-07' AS Date), 7, N'Antalya/Alanya', CAST(88.00 AS Decimal(18, 2)), CAST(1.90 AS Decimal(18, 2)), 7, 35, 2)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (245, N'32333633637', N'Engin', N'Tarık', N'Erkek', CAST(N'2003-09-12' AS Date), 34, N'Kadıköy', CAST(100.00 AS Decimal(18, 2)), CAST(189.00 AS Decimal(18, 2)), 1, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (246, N'33651648145', N'Gökhan', N'Melek', N'Erkek', CAST(N'2003-07-23' AS Date), 61, N'Maltepe', CAST(75.00 AS Decimal(18, 2)), CAST(175.00 AS Decimal(18, 2)), 3, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (248, N'63333333333', N'Başak', N'Çelenk', N'Kadın', CAST(N'2002-08-08' AS Date), 34, N'Üsküdar', CAST(60.00 AS Decimal(18, 2)), CAST(1.73 AS Decimal(18, 2)), 1, 26, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (250, N'65415158718', N'Nazım', N'Hikmet', N'Erkek', CAST(N'2002-10-23' AS Date), 61, N'Fatih', CAST(55.00 AS Decimal(18, 2)), CAST(1.60 AS Decimal(18, 2)), 2, 27, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (251, N'74447853997', N'Gül', N'Altunel', N'Kadın', CAST(N'2005-01-03' AS Date), 34, N'Başakşehir', CAST(55.00 AS Decimal(18, 2)), CAST(152.00 AS Decimal(18, 2)), 1, 28, 12)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (252, N'75000000014', N'Duran', N'Emin', N'Erkek', CAST(N'2005-01-10' AS Date), 11, N'İstanbul/Beyoğlu', NULL, CAST(149.00 AS Decimal(18, 2)), 4, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (253, N'52214563877', N'Şeyda', N'Ölmez', N'Kadın', CAST(N'2002-06-09' AS Date), 41, N'Avcılar', CAST(51.00 AS Decimal(18, 2)), CAST(1.65 AS Decimal(18, 2)), 2, 30, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (254, N'51236547891', N'Hilal', N'Sönmez', N'Kadın', CAST(N'2003-05-08' AS Date), 72, N'Mecidiyeköy', CAST(52.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)), 3, 30, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (255, N'53563214587', N'Melek', N'Subaşı', N'Kadın', CAST(N'2002-12-12' AS Date), 49, N'Mecidiyeköy', CAST(54.00 AS Decimal(18, 2)), CAST(1.70 AS Decimal(18, 2)), 4, 30, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (256, N'55214236410', N'Banu', N'Koç', N'Kadın', CAST(N'2003-01-01' AS Date), NULL, N'Bağcılar', CAST(50.00 AS Decimal(18, 2)), CAST(1.80 AS Decimal(18, 2)), 2, 30, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (257, N'50254712365', N'Osman', N'Özberk', N'Erkek', CAST(N'2002-11-11' AS Date), 54, N'Baglarbaşı', CAST(75.00 AS Decimal(18, 2)), CAST(1.76 AS Decimal(18, 2)), 1, 30, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (258, N'52654587123', N'Orhan', N'Haklı', N'Erkek', CAST(N'2003-10-10' AS Date), 61, N'Kadıköy', CAST(72.00 AS Decimal(18, 2)), CAST(1.74 AS Decimal(18, 2)), 4, 30, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (259, N'50214536781', N'Orhun', N'Ene', N'Erkek', CAST(N'2002-09-07' AS Date), 33, N'Pendik', CAST(76.00 AS Decimal(18, 2)), CAST(1.85 AS Decimal(18, 2)), 3, 30, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (260, N'51574581242', N'Harun', N'Erdenay', N'Erkek', CAST(N'2003-08-10' AS Date), 34, NULL, CAST(73.00 AS Decimal(18, 2)), CAST(1.97 AS Decimal(18, 2)), 3, 30, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (261, N'54248756132', N'İbrahim', N'Kutluay', N'Erkek', CAST(N'2002-09-04' AS Date), 35, NULL, CAST(75.00 AS Decimal(18, 2)), CAST(1.90 AS Decimal(18, 2)), 4, 30, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (262, N'53417854213', N'Aylin', N'Yılmaz', N'Kadın', CAST(N'2003-08-05' AS Date), 50, N'Sultanbeyli', CAST(54.00 AS Decimal(18, 2)), CAST(1.75 AS Decimal(18, 2)), 2, 30, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (263, N'35467698765', N'Duygu', N'Talihsiz', N'Kadın', CAST(N'2005-06-23' AS Date), 34, N'İdealtepe', CAST(54.00 AS Decimal(18, 2)), CAST(159.00 AS Decimal(18, 2)), 5, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (264, N'75000000015', N'Lale', N'Gece', N'Kadın', CAST(N'2006-01-10' AS Date), 14, N'İstanbul/Kasımpaşa', NULL, CAST(151.00 AS Decimal(18, 2)), 1, 20, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (266, N'75558963997', N'Kerime', N'Aslım', N'Kadın', CAST(N'2004-06-05' AS Date), 34, N'Pendik', CAST(48.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 2, 28, 6)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (267, N'35487698733', N'Sevim', N'Talihsiz', N'Kadın', CAST(N'2004-05-23' AS Date), 34, N'İdealtepe', CAST(45.00 AS Decimal(18, 2)), CAST(159.00 AS Decimal(18, 2)), 5, 34, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (268, N'47436624229', N'İlhan', N'Subaşı', N'Erkek', CAST(N'2004-10-22' AS Date), 21, N'Dudullu', CAST(77.00 AS Decimal(18, 2)), CAST(177.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (269, N'46657326959', N'Kağan', N'Aykul', N'Erkek', CAST(N'2003-01-01' AS Date), 6, N'Göztepe', CAST(70.00 AS Decimal(18, 2)), CAST(178.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (270, N'47327345455', N'Merve', N'Öztürk', N'Kadın', CAST(N'2005-12-31' AS Date), 36, N'Küçükçekmece', CAST(51.00 AS Decimal(18, 2)), CAST(167.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (271, N'45637323491', N'Göktürk', N'İmat', N'Erkek', CAST(N'2004-09-11' AS Date), 14, N'Güngören', CAST(77.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (272, N'48867724490', N'Selami', N'Demiray', N'Erkek', CAST(N'2004-04-11' AS Date), 25, N'İzmir', CAST(88.00 AS Decimal(18, 2)), CAST(188.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (273, N'45534725492', N'Esra', N'Ülker', N'Kadın', CAST(N'2002-07-21' AS Date), 35, N'İzmir', CAST(64.00 AS Decimal(18, 2)), CAST(169.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (274, N'47755224455', N'Muhammed', N'Uçarer', N'Erkek', CAST(N'2003-09-26' AS Date), 2, N'Adıyaman', CAST(88.00 AS Decimal(18, 2)), CAST(188.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (275, N'47655732461', N'Yeliz', N'Aydınlatan', N'Kadın', CAST(N'2004-10-12' AS Date), 23, N'Ataşehir', CAST(55.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (276, N'46562434594', N'Melis', N'Yılmaz', N'Kadın', CAST(N'2005-06-30' AS Date), 45, N'Beyoğlu', CAST(55.00 AS Decimal(18, 2)), CAST(162.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (277, N'48765442355', N'Esra', N'Pamay', N'Kadın', CAST(N'2002-11-21' AS Date), 67, N'Beşiktaş', CAST(59.00 AS Decimal(18, 2)), CAST(171.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (278, N'48812346470', N'Meliha', N'Yokuş', N'Kadın', CAST(N'2004-08-11' AS Date), 21, N'Pendik', CAST(56.00 AS Decimal(18, 2)), CAST(171.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (279, N'48566623493', N'Mehmet', N'Çeken', N'Erkek', CAST(N'2002-08-21' AS Date), 31, N'Kadıköy/Bağdat Caddesi', CAST(88.00 AS Decimal(18, 2)), CAST(188.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (280, N'48833754692', N'Mert', N'Çelen', N'Erkek', CAST(N'2005-07-21' AS Date), 35, N'İzmir', CAST(88.00 AS Decimal(18, 2)), CAST(188.00 AS Decimal(18, 2)), NULL, 32, NULL)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (282, N'94785852124', N'Deniz', N'Karabas', N'Kadın', CAST(N'2000-09-20' AS Date), 45, N'İstanbul-Esenler', NULL, NULL, 5, 39, 6)
GO
INSERT [dbo].[Ogrenciler] ([OgrencilerID], [OgrenciTC], [OgrenciAdi], [OgrenciSoyadi], [Cinsiyeti], [DogumTarihi], [DogumYeriID], [Adres], [OgrenciKilo], [OgrenciBoy], [KanGrubuID], [KullaniciID], [SinifID]) VALUES (286, N'92142536988', N'Merdan', N'Usta', N'Erkek', CAST(N'2002-01-03' AS Date), 47, N'İstanbul-Beylikdüzü', NULL, NULL, 6, 39, 11)
GO
SET IDENTITY_INSERT [dbo].[Ogrenciler] OFF
GO
SET IDENTITY_INSERT [dbo].[OgrenciVeli] ON 
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (1, 21, 15)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (2, 21, 3)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (3, 31, 4)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (4, 32, 8)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (5, 33, 14)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (6, 75, 1)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (7, 230, 6)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (8, 114, 11)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (9, 114, 12)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (10, 239, 16)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (11, 24, 44)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (13, 21, 9)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (15, 144, 25)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (16, 15, 5)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (18, 146, 10)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (19, 146, 24)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (20, 198, 50)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (21, 165, 26)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (22, 166, 38)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (26, 195, 51)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (28, 191, 52)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (29, 208, 7)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (30, 122, 66)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (31, 6, 17)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (32, 82, 18)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (33, 83, 18)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (34, 84, 17)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (35, 85, 22)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (36, 86, 22)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (37, 87, 17)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (38, 88, 18)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (39, 90, 19)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (40, 91, 19)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (41, 92, 18)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (42, 93, 21)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (43, 94, 21)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (44, 95, 21)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (45, 96, 22)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (52, 241, 72)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (58, 125, 47)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (60, 192, 53)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (63, 27, 32)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (64, 259, 33)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (65, 257, 34)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (66, 254, 35)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (67, 258, 36)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (68, 262, 32)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (69, 50, 27)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (70, 70, 28)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (71, 79, 29)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (72, 106, 30)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (73, 112, 31)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (74, 188, 54)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (75, 242, 73)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (76, 177, 75)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (77, 176, 74)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (78, 240, 71)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (79, 175, 14)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (80, 164, 23)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (81, 157, 49)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (82, 105, 64)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (83, 108, 56)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (84, 108, 57)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (85, 101, 58)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (86, 116, 59)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (87, 116, 60)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (88, 134, 59)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (89, 134, 60)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (90, 141, 59)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (91, 141, 60)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (92, 246, 61)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (93, 246, 62)
GO
INSERT [dbo].[OgrenciVeli] ([OgrenciVeliID], [OgrenciID], [VeliID]) VALUES (94, 148, 63)
GO
SET IDENTITY_INSERT [dbo].[OgrenciVeli] OFF
GO
SET IDENTITY_INSERT [dbo].[OgretmenBilgileri] ON 
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (1, 1, CAST(N'2012-12-25' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (2, 2, CAST(N'2018-01-03' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (3, 3, CAST(N'2018-01-01' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (4, 8, CAST(N'2015-01-01' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (5, 13, CAST(N'2016-12-15' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (6, 20, CAST(N'2017-09-09' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (7, 5, CAST(N'2018-02-07' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (8, 18, CAST(N'2015-05-15' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (9, 11, CAST(N'2009-10-10' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (10, 10, CAST(N'2016-06-06' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (11, 4, CAST(N'2015-09-25' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (12, 6, CAST(N'2015-09-01' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (13, 7, CAST(N'2017-12-12' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (14, 19, CAST(N'2015-09-25' AS Date), CAST(N'2018-07-25' AS Date))
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (15, 21, CAST(N'2017-09-25' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (16, 12, CAST(N'2015-06-06' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (17, 22, CAST(N'2014-11-09' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (18, 17, CAST(N'2016-09-09' AS Date), NULL)
GO
INSERT [dbo].[OgretmenBilgileri] ([OgretmenBilgileriID], [OgretmenID], [GirisTarihi], [CikisTarihi]) VALUES (19, 16, CAST(N'2016-09-09' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[OgretmenBilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[Ogretmenler] ON 
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (1, N'24520941499', N'Oğuz', N'Irmak', N'Erkek', N'05363666636', N'Bekar', CAST(N'1996-10-07' AS Date), 36, N'ZB', 5, 16, 25, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (2, N'12313113231', N'Dilaver', N'Yavuz', N'Erkek', N'05432231312', N'Bekar', CAST(N'1996-01-07' AS Date), 7, N'Kağıthane', 2, 14, 35, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (3, N'19071907993', N'Mert', N'İnciroğlu', N'Erkek', N'232323', N'Bekar', CAST(N'1971-08-08' AS Date), 32, N'Şişli', NULL, 8, 32, NULL)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (4, N'11634543678', N'Görkem', N'Tekin', N'Erkek', N'5353266869', N'Evli', CAST(N'1988-09-23' AS Date), 34, N'Pendik', 1, 5, 34, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (5, N'33233233322', N'Hacer', N'Sav', N'Kadın', N'04545455454', N'Evli', CAST(N'1970-12-23' AS Date), 65, N'Bakırköy', 3, 17, 38, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (6, N'75000000100', N'Mualla', N'Yapıcı', N'Kadın', N'5372631566', N'Bekar', CAST(N'1992-01-09' AS Date), 6, N'İstanbul/Kadıköy', 1, 19, 20, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (7, N'1525', N'Baran', N'Polat', N'Erkek', N'05741236555', N'Evli', CAST(N'1990-05-06' AS Date), 58, N'İstanbul/Bakırköy', 1, 12, 21, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (8, N'53534532453', N'Esin', N'Eröz', N'Kadın', N'34563246445', N'Bekar', CAST(N'1995-06-26' AS Date), 34, N'Maltepe', 3, 6, 33, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (9, N'12103543647', N'Hakan', N'Çaloğlu', N'Erkek', N'05412354798', N'Bekar', CAST(N'1988-12-18' AS Date), 41, N'Kartal', 3, 7, 30, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (10, N'75757575859', N'Dilnur', N'Yılmaz', N'Kadın', N'05072187680', N'Bekar', CAST(N'1993-09-28' AS Date), 16, N'Bursa', 8, 11, 28, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (11, N'74125896321', N'Salim', N'Arpağ', N'erkek', N'05458787123', N'Bekar', CAST(N'2013-12-30' AS Date), 10, N'Kandilli', 3, 17, 31, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (12, N'2961', N'Övünç', N'Yılmaz', N'Erkek', N'05312541236', N'Bekar', CAST(N'1990-03-03' AS Date), 34, N'Şişli', 1, 10, 23, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (13, N'42423424434', N'Nurcan', N'Telkin', N'Erkek', N'53535353455', N'Bekar', CAST(N'1969-11-05' AS Date), 45, N'Üskudar', 3, 6, 33, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (14, N'33232333222', N'Mehmet', N'Görmüş', N'Erkek', N'05455455454', N'Evli', CAST(N'1977-11-13' AS Date), 34, N'Bağcılar', 2, 4, 38, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (15, N'63214569874', N'Ceyda', N'Başar', N'Kadın', N'05336541200', N'Bekar', CAST(N'1995-11-12' AS Date), 34, N'Üsküdar', 1, 16, 26, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (16, N'12312312312', N'Aylin', N'Keser', N'Kadın', N'05213123121', N'Bekar', CAST(N'1992-05-07' AS Date), 31, N'Küçükçekmece', 6, 14, 35, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (17, N'12345678998', N'Cihan', N'Yavuz', N'Erkek', N'32145698741', N'Bekar', CAST(N'2085-11-03' AS Date), 10, N'Üsküdar', 5, 4, 31, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (18, N'75000000100', N'Mualla', N'Gürses', N'Kadın', N'54665784847', N'Dul', CAST(N'1996-07-10' AS Date), 36, N'Meydan', 4, 4, 1, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (19, N'65054741169', N'Erdem', N'Bayazıt', N'Erkek', N'05324569878', N'Evli', CAST(N'1978-10-11' AS Date), 52, N'Sancaktepe', 5, 18, 27, 0)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (20, N'24157825324', N'Mehmet', N'Dinç', N'Erkek', N'05496321451', N'Evli', CAST(N'1969-10-10' AS Date), 48, N'İzmit', 1, 4, 30, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (21, N'69543333335', N'Deniz', N'Dal', N'Kadın', N'05354566548', N'Bekar', CAST(N'1988-12-15' AS Date), 52, N'Kartal', 5, 1, 27, 1)
GO
INSERT [dbo].[Ogretmenler] ([OgretmenlerID], [OgretmenTC], [OgretmenAdi], [OgretmenSoyadi], [Cinsiyet], [Telefon], [MedeniHali], [DogumTarihi], [DogumYeriID], [Adres], [KanGrubuID], [BransID], [KullaniciID], [AktifMi]) VALUES (22, N'3215', N'Yağmur', N'Kara', N'Kadın', N'05321145678', N'Bekar', CAST(N'1987-02-16' AS Date), 32, N'Üsküdar', 2, 10, 23, 1)
GO
SET IDENTITY_INSERT [dbo].[Ogretmenler] OFF
GO
SET IDENTITY_INSERT [dbo].[Sınıflar] ON 
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (2, N'9', N'A', 1, 1)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (3, N'9', N'B', 2, 1)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (4, N'9', N'C', 3, 1)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (5, N'10', N'Fen-A', 9, 2)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (6, N'10', N'Fen-B', 12, 2)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (7, N'10', N'EA-A', 18, 4)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (8, N'10', N'Söz-B', 20, 3)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (9, N'10', N'Dil-A', 21, 5)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (10, N'11', N'Fen-A', 4, 2)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (11, N'11', N'Söz-A', 8, 3)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (12, N'12', N'Fen-A', 16, 2)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (13, N'12', N'Söz-A', 14, 3)
GO
INSERT [dbo].[Sınıflar] ([SınıflarID], [SınıfNo], [SınıfSubesi], [OgretmenID], [BolumID]) VALUES (14, N'12', N'Söz-D', 14, 3)
GO
SET IDENTITY_INSERT [dbo].[Sınıflar] OFF
GO
SET IDENTITY_INSERT [dbo].[Veliler] ON 
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (1, N'12345678915', N'Kül Tigin', N'Turhanoğulları', N'Erkek', CAST(N'1915-02-03' AS Date), 71, NULL, N'Hamşu', N'Dul', 5, 25)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (2, N'12122112221', N'Arif', N'Mor', N'Erkek', CAST(N'1990-01-01' AS Date), 7, N'05344423212', N'Kadıköy', N'Evli', 2, 35)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (3, N'11212221121', N'Mehmet', N'Kara', N'Erkek', CAST(N'1990-01-01' AS Date), 7, N'05344221212', N'Üsküdar', N'Evli', 2, 35)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (4, N'12221121121', N'Hanife', N'Ateş', N'Kadın', CAST(N'1991-01-01' AS Date), 6, N'05423213112', N'Kadıköy', N'Evli', 5, 35)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (5, N'75000000020', N'Murat', N'Kiral', N'Erkek', CAST(N'1972-01-10' AS Date), 1, N'5372631561', N'İstanbul/Kasımpaşa', NULL, 1, 20)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (6, N'12345678925', N'Tanku', N'Roketatar', N'Erkek', CAST(N'1977-05-08' AS Date), 66, NULL, N'Savaş cad', N'Evli', 8, 25)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (7, N'80236987896', N'İdil', N'Ayar', N'Kadın', CAST(N'1980-06-06' AS Date), 68, N'05693265414', N'Kızıltoprak', N'Evli', 5, 21)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (8, N'12121212212', N'Tankut', N'Gözlük', N'Erkek', CAST(N'1992-01-01' AS Date), 4, N'05213422132', N'Bahçelievler', N'Evli', 5, 35)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (9, N'45612378912', N'Fatma', N'Duman', N'kadın', CAST(N'1964-04-23' AS Date), 58, N'2546845121', N'Eyüp', N'1', 5, 31)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (10, N'75000000030', N'Ayşe', N'Sahan', N'Kadın', CAST(N'1976-01-10' AS Date), 15, N'5369850215', N'İstanbul/Kadıköy', N'160', 1, 20)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (11, N'12345678935', N'Bihter', N'Hanımcı', N'Kadın', CAST(N'1964-02-08' AS Date), 54, N'16545468', N'Hanım Köylü', N'Bekar', 8, 25)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (12, N'12345678945', N'Behlül', N'Hanımcı', N'Erkek', CAST(N'1964-02-08' AS Date), 54, N'15678984', N'HanımKöylü', N'Bekar', 7, 25)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (13, N'21112112221', N'Serpil', N'Zengin', N'Kadın', CAST(N'1993-01-01' AS Date), 5, N'05312213212', N'Küçükçekmece', N'Evli', 5, 35)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (14, N'80000468468', N'Hayri', N'Gül', N'Erkek', CAST(N'1979-10-10' AS Date), 34, N'05875224414', N'Güngören', N'Evli', 1, 21)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (15, N'44125236988', N'Mustafa', N'Duman', N'erkek', CAST(N'1950-01-01' AS Date), 58, N'05698978413', N'Eyüp', N'1', 2, 31)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (16, N'12345678955', N'Fiski', N'Meytaneci', N'Erkek', CAST(N'1978-05-07' AS Date), 36, N'2859749841', N'Zeki sok.', N'Evli', 8, 25)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (17, N'22332332233', N'Cemil', N'Uzun', N'Erkek', CAST(N'1970-12-02' AS Date), 3, N'05456566565', N'Yıldırım', N'Evli', 1, 38)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (18, N'22332332233', N'Sevcan', N'Kar', N'Kadın', CAST(N'1965-11-07' AS Date), 8, N'05456567645', N'Beyazıt', N'Evli', 1, 38)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (19, N'22332332233', N'Kenan', N'Yağmur', N'Erkek', CAST(N'1975-09-01' AS Date), 15, N'05463453465', N'Karaman', N'Evli', 1, 38)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (21, N'22332332233', N'Enes', N'Dağlı', N'Erkek', CAST(N'1986-10-23' AS Date), 55, N'05426545355', N'Laleli', N'Bekar', 1, 38)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (22, N'22332332233', N'Melis', N'Buz', N'Kadın', CAST(N'1970-10-22' AS Date), 3, N'05646457565', N'Fatih', N'Evli', 1, 38)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (23, N'82222546988', N'Hazal', N'Soyak', N'Kadın', CAST(N'1976-02-04' AS Date), 34, N'05236547891', N'Kadıköy', N'Evli', 2, 21)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (24, N'75000000030', N'Mennan', N'Sahan', N'Erkek', CAST(N'1978-01-05' AS Date), 15, N'5369850215', N'İstanbul/Kadıköy', N'160', NULL, 20)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (25, N'41236478963', N'Hanife', N'Saf', N'kadın', CAST(N'1977-04-20' AS Date), 58, N'052597878', N'Eyüp', N'0', 3, 31)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (26, N'75000000040', N'Mahmut', N'Kerdim', N'Erkek', CAST(N'1973-01-10' AS Date), 1, N'5369851111', N'İstanbul/Fikirtepe', N'170', NULL, 20)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (27, N'71152463997', N'Kenan', N'Alsancak', N'Erkek', CAST(N'1980-12-10' AS Date), 35, N'05432545878', N'İzmir Alsancak', N'Evli', 6, 28)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (28, N'71252463997', N'Hamit', N'Doğu', N'Erkek', CAST(N'1975-05-04' AS Date), 26, N'05356564988', N'Eskişehir', N'Evli', 5, 28)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (29, N'71222463997', N'Sadegül', N'Erkazan', N'Kadın', CAST(N'1972-11-11' AS Date), 34, N'05384564988', N'Fatih', N'Evli', 8, 28)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (30, N'72489463997', N'Hamide', N'Bostan', N'Kadın', CAST(N'1970-09-04' AS Date), 17, N'05334256498', N'Çanakkale Ezine', N'Evli', 3, 28)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (31, N'75459463997', N'Hayriye', N'Yılmaz', N'Kadın', CAST(N'1974-02-02' AS Date), 1, N'05432564988', N'Adana Seyhan', N'Evli', 2, 28)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (32, N'54879125212', N'Mahmut', N'Yılmaz', N'Erkek', CAST(N'1969-05-12' AS Date), 45, NULL, N'Sultanbeyli', N'Evli', 4, 30)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (33, N'52364589254', N'Murat', N'Ene', N'Erkek', CAST(N'1965-09-11' AS Date), 33, N'05564421547', N'Pendik', N'Evli', 3, 30)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (34, N'51254632012', N'Meryem', N'Özberk', N'Kadın', CAST(N'1976-10-09' AS Date), 54, N'05562247854', N'Bağlarbaşı', N'Evli', 1, 30)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (35, N'50215463258', N'Sevim', N'Sönmez', N'Kadın', CAST(N'1979-05-20' AS Date), 30, N'05542263587', N'Mecidiyeköy', N'Evli', 5, 30)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (36, N'54234565201', N'Fatma', N'Haklı', N'Kadın', CAST(N'1977-05-06' AS Date), 26, N'05413257841', N'Kadıköy', N'Evli', 2, 30)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (37, N'64444444444', N'İnci', N'Çelen', N'Kadın', CAST(N'1978-03-03' AS Date), 34, NULL, N'Acıbadem', N'Evli', 1, 26)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (38, N'75000000050', N'Rubai', N'Gura', N'Kadın', CAST(N'1975-01-05' AS Date), 2, N'5369852222', N'İstanbul/Ümraniye', N'175', 1, 20)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (39, N'46755234454', N'Emin', N'Aykul', N'Erkek', CAST(N'1985-04-28' AS Date), 6, N'05356343232', N'Göztepe', N'Bekar', NULL, 32)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (40, N'4674435224', N'Ozan', N'Aydınlatan', N'Erkek', CAST(N'1980-11-12' AS Date), 34, N'05446553221', N'Harbiye', N'Evli', NULL, 32)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (41, N'4674435224', N'Cenk', N'Yılmaz', N'Erkek', CAST(N'1989-08-17' AS Date), 34, N'05356653429', N'Kayışdağı', N'Evli', NULL, 32)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (42, N'4674435224', N'Doruk', N'Demiray', N'Erkek', CAST(N'1986-05-17' AS Date), 34, N'05336563565', N'Bornova', N'Evli', NULL, 32)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (43, N'4674435224', N'Efe', N'Aksoy', N'Erkek', CAST(N'1988-07-27' AS Date), 37, N'0345983221', N'Sarıyer', N'Evli', NULL, 32)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (44, N'12345678965', N'Murtazaaaa', N'Kababıyık', N'Erkek', CAST(N'1965-09-02' AS Date), 44, N'1658468541', N'Aksaray', N'Dul', 4, 25)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (46, N'61111111111', N'Ayşe', N'Kavak', N'Kadın', CAST(N'1977-04-10' AS Date), 34, NULL, N'Avcılar', N'Evli', 2, 26)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (47, N'43214569871', N'Asya', N'Gezgin', N'kadın', CAST(N'1985-11-12' AS Date), 58, N'0539874123', N'kağıthane', N'0', 6, 31)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (48, N'36623623463', N'Timuçin', N'Demir', N'Erkek', CAST(N'1965-03-02' AS Date), 53, N'3424234243', N'Şişli', N'Evli', 4, 33)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (49, N'84446464444', N'Seda', N'Karaeski', N'Kadın', CAST(N'1975-12-12' AS Date), 34, NULL, N'İncirli', NULL, 8, 21)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (50, N'86322415367', N'Sadık', N'Kurt', N'Erkek', CAST(N'1978-11-04' AS Date), 60, N'05326631425', N'Ümraniye', N'Evli', 2, 23)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (51, N'86432217852', N'Gamze', N'Öztürk', N'Kadın', CAST(N'1979-07-14' AS Date), 38, N'05312231455', N'Beşiktaş', N'Evli', 1, 23)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (52, N'87221246333', N'Gökhan', N'Samur', N'Erkek', CAST(N'1976-02-18' AS Date), 57, N'05306631425', N'Maltepe', N'Evli', 3, 23)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (53, N'89328415301', N'Ramiz', N'Sönmez', N'Erkek', CAST(N'1975-09-17' AS Date), 71, N'05398546412', N'Pendik', N'Evli', 5, 23)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (54, N'87363214521', N'Hatice', N'Katmer ', N'Kadın', CAST(N'1974-05-21' AS Date), 75, N'05328954532', N'Ataşehir', N'Evli', 6, 23)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (55, N'63214569874', N'Ahmet', N'Çelenk', N'Erkek', CAST(N'1975-03-12' AS Date), 34, NULL, N'Üsküdar', N'Evli', 3, 26)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (56, N'31323335371', N'Mahmut', N'Talihsiz', N'Erkek', CAST(N'1972-11-20' AS Date), 34, N'5354752324', N'Kadıköy', N'Evli', 1, 34)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (57, N'32523835081', N'Elif', N'Talihsiz', N'Kadın', CAST(N'1975-05-20' AS Date), 34, N'5354752326', N'Kadıköy', N'Evli', 1, 34)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (58, N'34323334671', N'Ekrem', N'Yaşar', N'Erkek', CAST(N'1973-06-20' AS Date), 33, N'5456752324', N'Kartal', N'Evli', 3, 34)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (59, N'31523375871', N'Ali', N'Taşkın', N'Erkek', CAST(N'1961-03-20' AS Date), 41, N'5357752724', N'İzmit', N'Evli', 4, 34)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (60, N'32323365371', N'Fatma', N'Taşkın', N'Kadın', CAST(N'1965-02-20' AS Date), 41, N'5373752724', N'İzmit', N'Evli', 5, 34)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (61, N'31343335667', N'Demet', N'Melek', N'Kadın', CAST(N'1973-10-10' AS Date), 34, N'5324762324', N'Kadıköy', N'Evli', 1, 34)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (62, N'32303330607', N'Samet', N'Melek', N'Erkek', CAST(N'1963-12-30' AS Date), 34, N'5324267320', N'Maltepe', N'Evli', 1, 34)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (63, N'33303780600', N'Hülya', N'Avşar', N'Kadın', CAST(N'1963-02-20' AS Date), 29, N'5324265221', N'Maltepe', N'Evli', 1, 34)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (64, N'83563335635', N'Gülen', N'İlter', N'Kadın', CAST(N'1978-01-11' AS Date), 58, N'05111113211', N'Fatih', N'Bekar', NULL, 21)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (65, N'62156479896', N'Tolga', N'Yenen', N'Erkek', CAST(N'1974-08-13' AS Date), 34, NULL, N'Pendik', N'Evli', 4, 26)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (66, N'45423697214', N'Burçin', N'Asker', N'erkek', CAST(N'1966-02-24' AS Date), 58, N'04225358785', N'Beşiktaş', N'1', 2, 31)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (67, N'60123647896', N'Fatma', N'Süren', N'Kadın', CAST(N'1979-10-02' AS Date), 34, NULL, N'Sultanbeyli', N'Evli', 2, 26)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (68, N'37462362664', N'Nurten', N'Dal', N'Kadın', CAST(N'1954-03-22' AS Date), 54, N'6353463464', N'Beşiktaş', N'Evli', 5, 33)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (69, N'63625489741', N'Esra', N'Bozkurt', N'Kadın', CAST(N'1980-11-12' AS Date), 34, NULL, N'Çamlıca', N'Evli', 1, 26)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (70, N'69631122222', N'Ali', N'Kıvılcımlı', N'Erkek', CAST(N'1975-10-10' AS Date), 61, N'05368714678', N'Fatih', N'Evli', 3, 27)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (71, N'67947625564', N'Ayşe', N'Veysel', N'Kadın', CAST(N'1986-09-30' AS Date), 44, N'02466579142', N'Ataşehir', N'Bekar', 2, 27)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (72, N'68853641345', N'Kazım', N'Kıvılcımlı', N'Erkek', CAST(N'1982-12-02' AS Date), 45, N'05987154598', N'Üsküdar', N'Evli', 4, 27)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (73, N'69325729941', N'Emine', N'Zarifoğlu', N'Kadın', CAST(N'1966-01-25' AS Date), 62, N'05547645411', N'Aksaray', N'Evli', 7, 27)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (74, N'67657789526', N'Müslim', N'Bekiroğlu', N'Erkek', CAST(N'1985-05-10' AS Date), 34, N'5656565655', N'Sultanbeyli', N'Bekar', 7, 27)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (75, N'65456232141', N'Kübra', N'Nazik', N'Kadın', CAST(N'1989-09-30' AS Date), 38, N'05322222222', N'Kadiköy', N'Evli', 6, 27)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (76, N'38478347834', N'Temel', N'Kırıklık', N'Erkek', CAST(N'1962-09-09' AS Date), 35, N'53425235423', N'Beşiktaş', N'Evli', 2, 33)
GO
INSERT [dbo].[Veliler] ([VelilerID], [VeliTC], [VeliAdi], [VeliSoyadi], [Cinsiyet], [DogumTarihi], [DogumYeriID], [Telefon], [Adres], [MedeniHali], [KanGrubuID], [KullaniciID]) VALUES (77, N'39578783478', N'Sema', N'Çelik', N'Kadın', CAST(N'1965-03-01' AS Date), 64, N'46236233456', N'Bebek', N'Evli', 5, 33)
GO
SET IDENTITY_INSERT [dbo].[Veliler] OFF
GO
SET IDENTITY_INSERT [dbo].[Yetkiler] ON 
GO
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (1, N'Öğretmen')
GO
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (2, N'Öğrenci')
GO
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (3, N'Personeller')
GO
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (4, N'İdari')
GO
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (5, N'Admin')
GO
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (6, N'Öğretmen')
GO
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (7, N'Öğrenci')
GO
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (8, N'Personeller')
GO
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (9, N'İdari')
GO
INSERT [dbo].[Yetkiler] ([YetkilerID], [YetkiAdi]) VALUES (10, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Yetkiler] OFF
GO
ALTER TABLE [dbo].[IdariKadro]  WITH CHECK ADD  CONSTRAINT [FK_IdariKadro_Ogretmenler] FOREIGN KEY([OgretmenID])
REFERENCES [dbo].[Ogretmenler] ([OgretmenlerID])
GO
ALTER TABLE [dbo].[IdariKadro] CHECK CONSTRAINT [FK_IdariKadro_Ogretmenler]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanicilar_Yetkiler] FOREIGN KEY([YetkiID])
REFERENCES [dbo].[Yetkiler] ([YetkilerID])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_Yetkiler]
GO
ALTER TABLE [dbo].[Notlar]  WITH CHECK ADD  CONSTRAINT [FK_Notlar_Dersler] FOREIGN KEY([DersID])
REFERENCES [dbo].[Dersler] ([DerslerID])
GO
ALTER TABLE [dbo].[Notlar] CHECK CONSTRAINT [FK_Notlar_Dersler]
GO
ALTER TABLE [dbo].[Notlar]  WITH CHECK ADD  CONSTRAINT [FK_Notlar_Ogrenciler] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Ogrenciler] ([OgrencilerID])
GO
ALTER TABLE [dbo].[Notlar] CHECK CONSTRAINT [FK_Notlar_Ogrenciler]
GO
ALTER TABLE [dbo].[OgrenciDers]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciDers_Dersler] FOREIGN KEY([DersID])
REFERENCES [dbo].[Dersler] ([DerslerID])
GO
ALTER TABLE [dbo].[OgrenciDers] CHECK CONSTRAINT [FK_OgrenciDers_Dersler]
GO
ALTER TABLE [dbo].[OgrenciDers]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciDers_Ogrenciler] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Ogrenciler] ([OgrencilerID])
GO
ALTER TABLE [dbo].[OgrenciDers] CHECK CONSTRAINT [FK_OgrenciDers_Ogrenciler]
GO
ALTER TABLE [dbo].[OgrenciIzin]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciIzin_Yoklama] FOREIGN KEY([YoklamaID])
REFERENCES [dbo].[Yoklama] ([YoklamalarID])
GO
ALTER TABLE [dbo].[OgrenciIzin] CHECK CONSTRAINT [FK_OgrenciIzin_Yoklama]
GO
ALTER TABLE [dbo].[Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenciler_iller] FOREIGN KEY([DogumYeriID])
REFERENCES [dbo].[iller] ([illerID])
GO
ALTER TABLE [dbo].[Ogrenciler] CHECK CONSTRAINT [FK_Ogrenciler_iller]
GO
ALTER TABLE [dbo].[Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenciler_KanGruplari] FOREIGN KEY([KanGrubuID])
REFERENCES [dbo].[KanGruplari] ([KanGruplariID])
GO
ALTER TABLE [dbo].[Ogrenciler] CHECK CONSTRAINT [FK_Ogrenciler_KanGruplari]
GO
ALTER TABLE [dbo].[Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenciler_Sınıflar] FOREIGN KEY([SinifID])
REFERENCES [dbo].[Sınıflar] ([SınıflarID])
GO
ALTER TABLE [dbo].[Ogrenciler] CHECK CONSTRAINT [FK_Ogrenciler_Sınıflar]
GO
ALTER TABLE [dbo].[OgrenciProje]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciProje_Ogrenciler] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Ogrenciler] ([OgrencilerID])
GO
ALTER TABLE [dbo].[OgrenciProje] CHECK CONSTRAINT [FK_OgrenciProje_Ogrenciler]
GO
ALTER TABLE [dbo].[OgrenciProje]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciProje_Projeler] FOREIGN KEY([ProjeID])
REFERENCES [dbo].[Projeler] ([ProjelerID])
GO
ALTER TABLE [dbo].[OgrenciProje] CHECK CONSTRAINT [FK_OgrenciProje_Projeler]
GO
ALTER TABLE [dbo].[OgrenciTakim]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciTakim_Ogrenciler] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Ogrenciler] ([OgrencilerID])
GO
ALTER TABLE [dbo].[OgrenciTakim] CHECK CONSTRAINT [FK_OgrenciTakim_Ogrenciler]
GO
ALTER TABLE [dbo].[OgrenciTakim]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciTakim_OkulTakimi] FOREIGN KEY([OkulTakimiID])
REFERENCES [dbo].[OkulTakimi] ([OkulTakımiID])
GO
ALTER TABLE [dbo].[OgrenciTakim] CHECK CONSTRAINT [FK_OgrenciTakim_OkulTakimi]
GO
ALTER TABLE [dbo].[OgrenciVeli]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciVeli_Ogrenciler] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Ogrenciler] ([OgrencilerID])
GO
ALTER TABLE [dbo].[OgrenciVeli] CHECK CONSTRAINT [FK_OgrenciVeli_Ogrenciler]
GO
ALTER TABLE [dbo].[OgrenciVeli]  WITH CHECK ADD  CONSTRAINT [FK_OgrenciVeli_Veliler] FOREIGN KEY([VeliID])
REFERENCES [dbo].[Veliler] ([VelilerID])
GO
ALTER TABLE [dbo].[OgrenciVeli] CHECK CONSTRAINT [FK_OgrenciVeli_Veliler]
GO
ALTER TABLE [dbo].[OgretmenBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_OgretmenBilgileri_Ogretmenler] FOREIGN KEY([OgretmenID])
REFERENCES [dbo].[Ogretmenler] ([OgretmenlerID])
GO
ALTER TABLE [dbo].[OgretmenBilgileri] CHECK CONSTRAINT [FK_OgretmenBilgileri_Ogretmenler]
GO
ALTER TABLE [dbo].[OgretmenDers]  WITH CHECK ADD  CONSTRAINT [FK_OgretmenDers_Dersler] FOREIGN KEY([DersID])
REFERENCES [dbo].[Dersler] ([DerslerID])
GO
ALTER TABLE [dbo].[OgretmenDers] CHECK CONSTRAINT [FK_OgretmenDers_Dersler]
GO
ALTER TABLE [dbo].[OgretmenDers]  WITH CHECK ADD  CONSTRAINT [FK_OgretmenDers_Ogretmenler] FOREIGN KEY([OgretmenID])
REFERENCES [dbo].[Ogretmenler] ([OgretmenlerID])
GO
ALTER TABLE [dbo].[OgretmenDers] CHECK CONSTRAINT [FK_OgretmenDers_Ogretmenler]
GO
ALTER TABLE [dbo].[OgretmenIzin]  WITH CHECK ADD  CONSTRAINT [FK_OgretmenIzin_Ogretmenler] FOREIGN KEY([OgretmenID])
REFERENCES [dbo].[Ogretmenler] ([OgretmenlerID])
GO
ALTER TABLE [dbo].[OgretmenIzin] CHECK CONSTRAINT [FK_OgretmenIzin_Ogretmenler]
GO
ALTER TABLE [dbo].[Ogretmenler]  WITH CHECK ADD  CONSTRAINT [FK_Ogretmenler_Branslar] FOREIGN KEY([BransID])
REFERENCES [dbo].[Branslar] ([BranslarID])
GO
ALTER TABLE [dbo].[Ogretmenler] CHECK CONSTRAINT [FK_Ogretmenler_Branslar]
GO
ALTER TABLE [dbo].[Ogretmenler]  WITH CHECK ADD  CONSTRAINT [FK_Ogretmenler_iller] FOREIGN KEY([DogumYeriID])
REFERENCES [dbo].[iller] ([illerID])
GO
ALTER TABLE [dbo].[Ogretmenler] CHECK CONSTRAINT [FK_Ogretmenler_iller]
GO
ALTER TABLE [dbo].[Ogretmenler]  WITH CHECK ADD  CONSTRAINT [FK_Ogretmenler_KanGruplari] FOREIGN KEY([KanGrubuID])
REFERENCES [dbo].[KanGruplari] ([KanGruplariID])
GO
ALTER TABLE [dbo].[Ogretmenler] CHECK CONSTRAINT [FK_Ogretmenler_KanGruplari]
GO
ALTER TABLE [dbo].[OgretmenProje]  WITH CHECK ADD  CONSTRAINT [FK_OgretmenProje_Ogretmenler] FOREIGN KEY([OgretmenID])
REFERENCES [dbo].[Ogretmenler] ([OgretmenlerID])
GO
ALTER TABLE [dbo].[OgretmenProje] CHECK CONSTRAINT [FK_OgretmenProje_Ogretmenler]
GO
ALTER TABLE [dbo].[OgretmenProje]  WITH CHECK ADD  CONSTRAINT [FK_OgretmenProje_Projeler] FOREIGN KEY([ProjeID])
REFERENCES [dbo].[Projeler] ([ProjelerID])
GO
ALTER TABLE [dbo].[OgretmenProje] CHECK CONSTRAINT [FK_OgretmenProje_Projeler]
GO
ALTER TABLE [dbo].[PersonelBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_PersonelBilgileri_Personeller] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Personeller] ([PersonellerID])
GO
ALTER TABLE [dbo].[PersonelBilgileri] CHECK CONSTRAINT [FK_PersonelBilgileri_Personeller]
GO
ALTER TABLE [dbo].[Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Personeller_iller] FOREIGN KEY([DogumYeriID])
REFERENCES [dbo].[iller] ([illerID])
GO
ALTER TABLE [dbo].[Personeller] CHECK CONSTRAINT [FK_Personeller_iller]
GO
ALTER TABLE [dbo].[Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Personeller_KanGruplari] FOREIGN KEY([KanGrubuID])
REFERENCES [dbo].[KanGruplari] ([KanGruplariID])
GO
ALTER TABLE [dbo].[Personeller] CHECK CONSTRAINT [FK_Personeller_KanGruplari]
GO
ALTER TABLE [dbo].[Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Personeller_Kullanicilar] FOREIGN KEY([KullanıcıID])
REFERENCES [dbo].[Kullanicilar] ([KullanicilarID])
GO
ALTER TABLE [dbo].[Personeller] CHECK CONSTRAINT [FK_Personeller_Kullanicilar]
GO
ALTER TABLE [dbo].[Sınıflar]  WITH CHECK ADD  CONSTRAINT [FK_Sınıflar_Bolumler] FOREIGN KEY([BolumID])
REFERENCES [dbo].[Bolumler] ([BolumlerID])
GO
ALTER TABLE [dbo].[Sınıflar] CHECK CONSTRAINT [FK_Sınıflar_Bolumler]
GO
ALTER TABLE [dbo].[Sınıflar]  WITH CHECK ADD  CONSTRAINT [FK_Sınıflar_Ogretmenler] FOREIGN KEY([OgretmenID])
REFERENCES [dbo].[Ogretmenler] ([OgretmenlerID])
GO
ALTER TABLE [dbo].[Sınıflar] CHECK CONSTRAINT [FK_Sınıflar_Ogretmenler]
GO
ALTER TABLE [dbo].[TakimOgretmenleri]  WITH CHECK ADD  CONSTRAINT [FK_TakimOgretmenleri_Ogretmenler] FOREIGN KEY([OgretmenID])
REFERENCES [dbo].[Ogretmenler] ([OgretmenlerID])
GO
ALTER TABLE [dbo].[TakimOgretmenleri] CHECK CONSTRAINT [FK_TakimOgretmenleri_Ogretmenler]
GO
ALTER TABLE [dbo].[TakimOgretmenleri]  WITH CHECK ADD  CONSTRAINT [FK_TakimOgretmenleri_OkulTakimi] FOREIGN KEY([TakimID])
REFERENCES [dbo].[OkulTakimi] ([OkulTakımiID])
GO
ALTER TABLE [dbo].[TakimOgretmenleri] CHECK CONSTRAINT [FK_TakimOgretmenleri_OkulTakimi]
GO
ALTER TABLE [dbo].[Veliler]  WITH CHECK ADD  CONSTRAINT [FK_Veliler_iller] FOREIGN KEY([DogumYeriID])
REFERENCES [dbo].[iller] ([illerID])
GO
ALTER TABLE [dbo].[Veliler] CHECK CONSTRAINT [FK_Veliler_iller]
GO
ALTER TABLE [dbo].[Veliler]  WITH CHECK ADD  CONSTRAINT [FK_Veliler_KanGruplari] FOREIGN KEY([KanGrubuID])
REFERENCES [dbo].[KanGruplari] ([KanGruplariID])
GO
ALTER TABLE [dbo].[Veliler] CHECK CONSTRAINT [FK_Veliler_KanGruplari]
GO
ALTER TABLE [dbo].[Yoklama]  WITH CHECK ADD  CONSTRAINT [FK_Yoklama_Ogrenciler] FOREIGN KEY([OgrenciID])
REFERENCES [dbo].[Ogrenciler] ([OgrencilerID])
GO
ALTER TABLE [dbo].[Yoklama] CHECK CONSTRAINT [FK_Yoklama_Ogrenciler]
GO
