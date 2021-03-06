USE [master]
GO
/****** Object:  Database [StokYonetim]    Script Date: 27.12.2018 14:43:48 ******/
CREATE DATABASE [StokYonetim]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StokYonetim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StokYonetim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StokYonetim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StokYonetim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StokYonetim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StokYonetim] SET ARITHABORT OFF 
GO
ALTER DATABASE [StokYonetim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StokYonetim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StokYonetim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StokYonetim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StokYonetim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StokYonetim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StokYonetim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StokYonetim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StokYonetim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StokYonetim] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StokYonetim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StokYonetim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StokYonetim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StokYonetim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StokYonetim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StokYonetim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StokYonetim] SET RECOVERY FULL 
GO
ALTER DATABASE [StokYonetim] SET  MULTI_USER 
GO
ALTER DATABASE [StokYonetim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StokYonetim] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'StokYonetim', N'ON'
GO
USE [StokYonetim]
GO
/****** Object:  Table [dbo].[tblAtikKontrol]    Script Date: 27.12.2018 14:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAtikKontrol](
	[atikKontrolId] [int] IDENTITY(1,1) NOT NULL,
	[urunId] [int] NULL,
	[atikurunAdet] [int] NULL,
 CONSTRAINT [PK_tblAtikKontrol] PRIMARY KEY CLUSTERED 
(
	[atikKontrolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDepartman]    Script Date: 27.12.2018 14:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDepartman](
	[departmanId] [int] IDENTITY(1,1) NOT NULL,
	[departmanAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblDepartman] PRIMARY KEY CLUSTERED 
(
	[departmanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKullanıcı]    Script Date: 27.12.2018 14:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKullanıcı](
	[kullanıcıId] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](100) NULL,
	[roleId] [int] NULL,
	[sonGirisTarihi] [datetime] NULL,
 CONSTRAINT [PK_tblKullanıcı] PRIMARY KEY CLUSTERED 
(
	[kullanıcıId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblParcaTipi]    Script Date: 27.12.2018 14:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblParcaTipi](
	[urunParcaId] [int] IDENTITY(1,1) NOT NULL,
	[parcaTipi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblParcaTipi] PRIMARY KEY CLUSTERED 
(
	[urunParcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPersonel]    Script Date: 27.12.2018 14:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPersonel](
	[personelId] [int] IDENTITY(1,1) NOT NULL,
	[personelAd] [nvarchar](50) NULL,
	[personelSoyad] [nvarchar](50) NULL,
	[Aktiflik] [bit] NULL,
	[departmanId] [int] NULL,
	[SGKNO] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblPersonel] PRIMARY KEY CLUSTERED 
(
	[personelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 27.12.2018 14:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRole](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleAd] [nvarchar](50) NULL,
	[departmanId] [int] NULL,
 CONSTRAINT [PK_tblRole] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStok]    Script Date: 27.12.2018 14:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStok](
	[stokId] [int] IDENTITY(1,1) NOT NULL,
	[urunGenelId] [int] NULL,
 CONSTRAINT [PK_tblStok] PRIMARY KEY CLUSTERED 
(
	[stokId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUrun]    Script Date: 27.12.2018 14:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUrun](
	[urunId] [int] IDENTITY(1,1) NOT NULL,
	[urunAd] [nvarchar](50) NULL,
	[urunSatinAlmaTarih] [datetime] NULL,
	[urunFiyat] [money] NULL,
	[urunParcaId] [int] NULL,
	[Aktiflik] [bit] NULL,
	[satinAlinanKurum] [nvarchar](50) NULL,
	[zimmetDurumu] [bit] NULL,
	[urunGenelId] [int] NOT NULL,
 CONSTRAINT [PK_tblUrun] PRIMARY KEY CLUSTERED 
(
	[urunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUrunGenel]    Script Date: 27.12.2018 14:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUrunGenel](
	[urunGenelId] [int] IDENTITY(1,1) NOT NULL,
	[urunAd] [nvarchar](50) NULL,
	[urunSatinAlmaTarih] [datetime] NULL,
	[urunFiyat] [money] NULL,
	[urunToplamFİyat] [money] NULL,
	[urunParcaId] [int] NULL,
	[Aktiflik] [bit] NULL,
	[urunAdet] [int] NULL,
	[satinAlinanKurum] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblUrunGenel] PRIMARY KEY CLUSTERED 
(
	[urunGenelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblZimmet]    Script Date: 27.12.2018 14:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblZimmet](
	[zimmetId] [int] IDENTITY(1,1) NOT NULL,
	[personelId] [int] NULL,
	[urunId] [int] NULL,
 CONSTRAINT [PK_tblZimmet] PRIMARY KEY CLUSTERED 
(
	[zimmetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAtikKontrol] ON 

INSERT [dbo].[tblAtikKontrol] ([atikKontrolId], [urunId], [atikurunAdet]) VALUES (20, 1090, 2)
INSERT [dbo].[tblAtikKontrol] ([atikKontrolId], [urunId], [atikurunAdet]) VALUES (22, 1095, 2)
INSERT [dbo].[tblAtikKontrol] ([atikKontrolId], [urunId], [atikurunAdet]) VALUES (23, 1100, 2)
INSERT [dbo].[tblAtikKontrol] ([atikKontrolId], [urunId], [atikurunAdet]) VALUES (24, 1127, 1)
SET IDENTITY_INSERT [dbo].[tblAtikKontrol] OFF
SET IDENTITY_INSERT [dbo].[tblDepartman] ON 

INSERT [dbo].[tblDepartman] ([departmanId], [departmanAd]) VALUES (1, N'Pazarlama')
INSERT [dbo].[tblDepartman] ([departmanId], [departmanAd]) VALUES (2, N'İnsan Kaynakları')
INSERT [dbo].[tblDepartman] ([departmanId], [departmanAd]) VALUES (3, N'Bilişim ')
INSERT [dbo].[tblDepartman] ([departmanId], [departmanAd]) VALUES (4, N'Hukuk')
INSERT [dbo].[tblDepartman] ([departmanId], [departmanAd]) VALUES (6, N'AR-GE')
INSERT [dbo].[tblDepartman] ([departmanId], [departmanAd]) VALUES (12, N'Muhasebe')
SET IDENTITY_INSERT [dbo].[tblDepartman] OFF
SET IDENTITY_INSERT [dbo].[tblKullanıcı] ON 

INSERT [dbo].[tblKullanıcı] ([kullanıcıId], [username], [email], [password], [roleId], [sonGirisTarihi]) VALUES (1, N'AdminUser', N'sabricam2016@hotmail.com', N'DtQ/3vVazaZ31RL6l75u96NI2qI5yeqJAGg58LaY0js=', 5, CAST(N'2018-12-27T13:54:54.283' AS DateTime))
INSERT [dbo].[tblKullanıcı] ([kullanıcıId], [username], [email], [password], [roleId], [sonGirisTarihi]) VALUES (4, N'UserPBY', N'xyz@outlook.com', N'UqIw+u2sCV7CH2MfH/+LUQ==', 1, CAST(N'2018-12-27T08:46:23.903' AS DateTime))
INSERT [dbo].[tblKullanıcı] ([kullanıcıId], [username], [email], [password], [roleId], [sonGirisTarihi]) VALUES (5, N'UserIKBY', N'qwert@gmail.com', N'q1exYnwR4JEHJRx7N75JDbxSlqH7xIKoRC1jkbpa7mY=', 2, CAST(N'2018-12-26T16:19:51.033' AS DateTime))
INSERT [dbo].[tblKullanıcı] ([kullanıcıId], [username], [email], [password], [roleId], [sonGirisTarihi]) VALUES (6, N'UserBBY', N'abcdef@hotmail.com', N'/+njXY+vaNgKUYofzuNHIeNqHEeY64JNfV1rllMmGBk=', 3, CAST(N'2018-12-26T16:22:36.633' AS DateTime))
INSERT [dbo].[tblKullanıcı] ([kullanıcıId], [username], [email], [password], [roleId], [sonGirisTarihi]) VALUES (8, N'UserABY', N'cvxzcs_35@hotmail.com', N'6VjRuMri3fRJf429GVEN6UcvR4J3CP4MClXA4LhH4c0=', 8, CAST(N'2018-12-26T16:25:35.873' AS DateTime))
INSERT [dbo].[tblKullanıcı] ([kullanıcıId], [username], [email], [password], [roleId], [sonGirisTarihi]) VALUES (9, N'UserHBY', N'opadadad78@hotmail.com', N'Mn48WEnZOfxfm8D2Ei9QmMYaLL65/MogfudpAIN3Doo=', 6, CAST(N'2018-12-26T16:27:01.053' AS DateTime))
INSERT [dbo].[tblKullanıcı] ([kullanıcıId], [username], [email], [password], [roleId], [sonGirisTarihi]) VALUES (10, N'UserSA', N'asodlasd_06@hotmail.com', N'XCq1dsuk1QxE+dwsviEOLqwFx1SrfijRoTI1ZM4rw/4=', 4, CAST(N'2018-12-27T08:44:13.877' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblKullanıcı] OFF
SET IDENTITY_INSERT [dbo].[tblParcaTipi] ON 

INSERT [dbo].[tblParcaTipi] ([urunParcaId], [parcaTipi]) VALUES (1, N'Hazır')
INSERT [dbo].[tblParcaTipi] ([urunParcaId], [parcaTipi]) VALUES (2, N'Toplama')
SET IDENTITY_INSERT [dbo].[tblParcaTipi] OFF
SET IDENTITY_INSERT [dbo].[tblPersonel] ON 

INSERT [dbo].[tblPersonel] ([personelId], [personelAd], [personelSoyad], [Aktiflik], [departmanId], [SGKNO]) VALUES (10, N'ALİ', N'DEMİR', 1, 1, N'36875')
INSERT [dbo].[tblPersonel] ([personelId], [personelAd], [personelSoyad], [Aktiflik], [departmanId], [SGKNO]) VALUES (11, N'VELİ', N'ARSLAN', 1, 2, N'45897')
INSERT [dbo].[tblPersonel] ([personelId], [personelAd], [personelSoyad], [Aktiflik], [departmanId], [SGKNO]) VALUES (12, N'OKAN', N'CELIK', 1, 6, N'54786')
INSERT [dbo].[tblPersonel] ([personelId], [personelAd], [personelSoyad], [Aktiflik], [departmanId], [SGKNO]) VALUES (13, N'PINAR', N'DENİZ', 1, 4, N'56983')
INSERT [dbo].[tblPersonel] ([personelId], [personelAd], [personelSoyad], [Aktiflik], [departmanId], [SGKNO]) VALUES (14, N'GAMZE', N'YILMAZ', 1, 12, N'47125')
INSERT [dbo].[tblPersonel] ([personelId], [personelAd], [personelSoyad], [Aktiflik], [departmanId], [SGKNO]) VALUES (15, N'SİMGE', N'YANKI', 1, 3, N'16329')
SET IDENTITY_INSERT [dbo].[tblPersonel] OFF
SET IDENTITY_INSERT [dbo].[tblRole] ON 

INSERT [dbo].[tblRole] ([roleId], [roleAd], [departmanId]) VALUES (1, N'Birim Yetkilisi', 1)
INSERT [dbo].[tblRole] ([roleId], [roleAd], [departmanId]) VALUES (2, N'Birim Yetkilisi', 2)
INSERT [dbo].[tblRole] ([roleId], [roleAd], [departmanId]) VALUES (3, N'Birim Yetkilisi', 3)
INSERT [dbo].[tblRole] ([roleId], [roleAd], [departmanId]) VALUES (4, N'Satın Alma', NULL)
INSERT [dbo].[tblRole] ([roleId], [roleAd], [departmanId]) VALUES (5, N'Admin', NULL)
INSERT [dbo].[tblRole] ([roleId], [roleAd], [departmanId]) VALUES (6, N'Birim Yetkilisi', 4)
INSERT [dbo].[tblRole] ([roleId], [roleAd], [departmanId]) VALUES (8, N'Birim Yetkilisi', 6)
SET IDENTITY_INSERT [dbo].[tblRole] OFF
SET IDENTITY_INSERT [dbo].[tblStok] ON 

INSERT [dbo].[tblStok] ([stokId], [urunGenelId]) VALUES (1031, 1031)
INSERT [dbo].[tblStok] ([stokId], [urunGenelId]) VALUES (1032, 1032)
INSERT [dbo].[tblStok] ([stokId], [urunGenelId]) VALUES (1033, 1033)
SET IDENTITY_INSERT [dbo].[tblStok] OFF
SET IDENTITY_INSERT [dbo].[tblUrun] ON 

INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1090, N'LENOVO', CAST(N'2018-12-24T19:09:44.463' AS DateTime), 5000.0000, 2, 0, N'VATAN PC', 0, 1025)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1091, N'LENOVO', CAST(N'2018-12-24T19:09:44.463' AS DateTime), 5000.0000, 2, 0, N'VATAN PC', 0, 1025)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1092, N'LENOVO', CAST(N'2018-12-24T19:09:44.463' AS DateTime), 5000.0000, 2, 1, N'VATAN PC', 1, 1025)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1093, N'LENOVO', CAST(N'2018-12-24T19:09:44.463' AS DateTime), 5000.0000, 2, 1, N'VATAN PC', 1, 1025)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1094, N'LENOVO', CAST(N'2018-12-24T19:09:44.463' AS DateTime), 5000.0000, 2, 1, N'VATAN PC', 1, 1025)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1095, N'ASUS', CAST(N'2018-12-24T19:09:53.473' AS DateTime), 5000.0000, 2, 0, N'TEKNOSA', 0, 1026)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1096, N'ASUS', CAST(N'2018-12-24T19:09:53.473' AS DateTime), 5000.0000, 2, 0, N'TEKNOSA', 0, 1026)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1097, N'ASUS', CAST(N'2018-12-24T19:09:53.473' AS DateTime), 5000.0000, 2, 1, N'TEKNOSA', 1, 1026)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1098, N'ASUS', CAST(N'2018-12-24T19:09:53.473' AS DateTime), 5000.0000, 2, 1, N'TEKNOSA', 1, 1026)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1099, N'ASUS', CAST(N'2018-12-24T19:09:53.473' AS DateTime), 5000.0000, 2, 1, N'TEKNOSA', 1, 1026)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1100, N'HP', CAST(N'2018-12-24T19:10:07.183' AS DateTime), 3500.0000, 1, 0, N'MEDIA MARKT', 0, 1027)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1101, N'HP', CAST(N'2018-12-24T19:10:07.183' AS DateTime), 3500.0000, 1, 0, N'MEDIA MARKT', 0, 1027)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1102, N'HP', CAST(N'2018-12-24T19:10:07.183' AS DateTime), 3500.0000, 1, 1, N'MEDIA MARKT', 1, 1027)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1103, N'HP', CAST(N'2018-12-24T19:10:07.183' AS DateTime), 3500.0000, 1, 1, N'MEDIA MARKT', 1, 1027)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1104, N'HP', CAST(N'2018-12-24T19:10:07.183' AS DateTime), 3500.0000, 1, 1, N'MEDIA MARKT', 1, 1027)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1110, N'APPLE MAC PRO', CAST(N'2018-12-26T07:40:29.287' AS DateTime), 8000.0000, 1, 1, N'TEKNOSA', NULL, 1031)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1111, N'APPLE MAC PRO', CAST(N'2018-12-26T07:40:29.287' AS DateTime), 8000.0000, 1, 1, N'TEKNOSA', NULL, 1031)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1112, N'APPLE MAC PRO', CAST(N'2018-12-26T07:40:29.287' AS DateTime), 8000.0000, 1, 1, N'TEKNOSA', NULL, 1031)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1113, N'DELL', CAST(N'2018-12-26T09:15:18.613' AS DateTime), 5600.0000, 1, 1, N'VATAN PC', NULL, 1032)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1114, N'DELL', CAST(N'2018-12-26T09:15:18.613' AS DateTime), 5600.0000, 1, 1, N'VATAN PC', NULL, 1032)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1115, N'DELL', CAST(N'2018-12-26T09:15:18.613' AS DateTime), 5600.0000, 1, 1, N'VATAN PC', NULL, 1032)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1118, N'SAMSUNG', CAST(N'2018-12-27T08:10:55.987' AS DateTime), 4800.0000, 1, 1, N'AmazonTR', NULL, 1033)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1119, N'SAMSUNG', CAST(N'2018-12-27T08:10:55.987' AS DateTime), 4800.0000, 1, 1, N'AmazonTR', NULL, 1033)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1122, N'DDR4UUUUUUUUUUUUUUU', CAST(N'2018-12-27T13:58:35.443' AS DateTime), 0.0000, 1, 1, N'Vatan Bilgisayar', 1, 1035)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1123, N'DDR4UUUUUUUUUUUUUUU', CAST(N'2018-12-27T13:58:35.443' AS DateTime), 0.0000, 1, 1, N'Vatan Bilgisayar', 1, 1035)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1124, N'DDR4UUUUUUUUUUUUUUU', CAST(N'2018-12-27T13:58:35.443' AS DateTime), 0.0000, 1, 1, N'Vatan Bilgisayar', 1, 1035)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1125, N'DDR4UUUUUUUUUUUUUUU', CAST(N'2018-12-27T13:58:35.443' AS DateTime), 0.0000, 1, 1, N'Vatan Bilgisayar', 1, 1035)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1126, N'DDR4UUUUUUUUUUUUUUU', CAST(N'2018-12-27T13:58:35.443' AS DateTime), 0.0000, 1, 1, N'Vatan Bilgisayar', 1, 1035)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1127, N'DDR4UUUUUUUUUUUUUUU', CAST(N'2018-12-27T13:58:35.443' AS DateTime), 0.0000, 1, 0, N'Vatan Bilgisayar', 0, 1035)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1128, N'DDR4UUUUUUUUUUUUUUU', CAST(N'2018-12-27T13:58:35.443' AS DateTime), 0.0000, 1, 1, N'Vatan Bilgisayar', 1, 1035)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1129, N'DDR4UUUUUUUUUUUUUUU', CAST(N'2018-12-27T13:58:35.443' AS DateTime), 0.0000, 1, 1, N'Vatan Bilgisayar', 1, 1035)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1130, N'DDR4UUUUUUUUUUUUUUU', CAST(N'2018-12-27T13:58:35.443' AS DateTime), 0.0000, 1, 1, N'Vatan Bilgisayar', 1, 1035)
INSERT [dbo].[tblUrun] ([urunId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunParcaId], [Aktiflik], [satinAlinanKurum], [zimmetDurumu], [urunGenelId]) VALUES (1131, N'DDR4UUUUUUUUUUUUUUU', CAST(N'2018-12-27T13:58:35.443' AS DateTime), 0.0000, 1, 1, N'Vatan Bilgisayar', 1, 1035)
SET IDENTITY_INSERT [dbo].[tblUrun] OFF
SET IDENTITY_INSERT [dbo].[tblUrunGenel] ON 

INSERT [dbo].[tblUrunGenel] ([urunGenelId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunToplamFİyat], [urunParcaId], [Aktiflik], [urunAdet], [satinAlinanKurum]) VALUES (1025, N'LENOVO', CAST(N'2018-12-24T19:09:44.463' AS DateTime), 5000.0000, 0.0000, 2, 1, 0, N'VATAN PC')
INSERT [dbo].[tblUrunGenel] ([urunGenelId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunToplamFİyat], [urunParcaId], [Aktiflik], [urunAdet], [satinAlinanKurum]) VALUES (1026, N'ASUS', CAST(N'2018-12-24T19:09:53.473' AS DateTime), 5000.0000, 0.0000, 2, 1, 0, N'TEKNOSA')
INSERT [dbo].[tblUrunGenel] ([urunGenelId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunToplamFİyat], [urunParcaId], [Aktiflik], [urunAdet], [satinAlinanKurum]) VALUES (1027, N'HP', CAST(N'2018-12-24T19:10:07.183' AS DateTime), 3500.0000, 0.0000, 1, 1, 0, N'MEDIA MARKT')
INSERT [dbo].[tblUrunGenel] ([urunGenelId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunToplamFİyat], [urunParcaId], [Aktiflik], [urunAdet], [satinAlinanKurum]) VALUES (1031, N'APPLE MAC PRO', CAST(N'2018-12-26T07:40:29.287' AS DateTime), 8000.0000, 24000.0000, 1, 1, 3, N'TEKNOSA')
INSERT [dbo].[tblUrunGenel] ([urunGenelId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunToplamFİyat], [urunParcaId], [Aktiflik], [urunAdet], [satinAlinanKurum]) VALUES (1032, N'DELL', CAST(N'2018-12-26T09:15:18.613' AS DateTime), 5600.0000, 16800.0000, 1, 1, 3, N'VATAN PC')
INSERT [dbo].[tblUrunGenel] ([urunGenelId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunToplamFİyat], [urunParcaId], [Aktiflik], [urunAdet], [satinAlinanKurum]) VALUES (1033, N'SAMSUNG', CAST(N'2018-12-27T06:18:00.443' AS DateTime), 4800.0000, 9600.0000, 1, 1, 2, N'AmazonTR')
INSERT [dbo].[tblUrunGenel] ([urunGenelId], [urunAd], [urunSatinAlmaTarih], [urunFiyat], [urunToplamFİyat], [urunParcaId], [Aktiflik], [urunAdet], [satinAlinanKurum]) VALUES (1035, N'DDR4UUUUUUUUUUUUUUU', CAST(N'2018-12-27T13:58:35.443' AS DateTime), 0.0000, 0.0000, 1, 1, 0, N'Vatan Bilgisayar')
SET IDENTITY_INSERT [dbo].[tblUrunGenel] OFF
SET IDENTITY_INSERT [dbo].[tblZimmet] ON 

INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1043, 10, 1097)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1044, 12, 1098)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1045, 10, 1092)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1046, 11, 1102)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1047, 11, 1103)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1048, 12, 1093)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1049, 11, 1099)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1050, 10, 1104)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1051, 12, 1094)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1052, 10, 1122)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1053, 10, 1123)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1054, 10, 1124)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1055, 10, 1125)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1056, 10, 1126)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1058, 10, 1128)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1059, 10, 1129)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1060, 10, 1130)
INSERT [dbo].[tblZimmet] ([zimmetId], [personelId], [urunId]) VALUES (1061, 10, 1131)
SET IDENTITY_INSERT [dbo].[tblZimmet] OFF
ALTER TABLE [dbo].[tblAtikKontrol]  WITH CHECK ADD  CONSTRAINT [FK_tblAtikKontrol_tblUrun1] FOREIGN KEY([urunId])
REFERENCES [dbo].[tblUrun] ([urunId])
GO
ALTER TABLE [dbo].[tblAtikKontrol] CHECK CONSTRAINT [FK_tblAtikKontrol_tblUrun1]
GO
ALTER TABLE [dbo].[tblKullanıcı]  WITH CHECK ADD  CONSTRAINT [FK_tblKullanıcı_tblRole] FOREIGN KEY([roleId])
REFERENCES [dbo].[tblRole] ([roleId])
GO
ALTER TABLE [dbo].[tblKullanıcı] CHECK CONSTRAINT [FK_tblKullanıcı_tblRole]
GO
ALTER TABLE [dbo].[tblPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonel_tblDepartman] FOREIGN KEY([departmanId])
REFERENCES [dbo].[tblDepartman] ([departmanId])
GO
ALTER TABLE [dbo].[tblPersonel] CHECK CONSTRAINT [FK_tblPersonel_tblDepartman]
GO
ALTER TABLE [dbo].[tblRole]  WITH CHECK ADD  CONSTRAINT [FK_tblRole_tblDepartman] FOREIGN KEY([departmanId])
REFERENCES [dbo].[tblDepartman] ([departmanId])
GO
ALTER TABLE [dbo].[tblRole] CHECK CONSTRAINT [FK_tblRole_tblDepartman]
GO
ALTER TABLE [dbo].[tblStok]  WITH CHECK ADD  CONSTRAINT [FK_tblStok_tblUrunGenel] FOREIGN KEY([urunGenelId])
REFERENCES [dbo].[tblUrunGenel] ([urunGenelId])
GO
ALTER TABLE [dbo].[tblStok] CHECK CONSTRAINT [FK_tblStok_tblUrunGenel]
GO
ALTER TABLE [dbo].[tblUrun]  WITH CHECK ADD  CONSTRAINT [FK_tblUrun_tblUrunGenel] FOREIGN KEY([urunGenelId])
REFERENCES [dbo].[tblUrunGenel] ([urunGenelId])
GO
ALTER TABLE [dbo].[tblUrun] CHECK CONSTRAINT [FK_tblUrun_tblUrunGenel]
GO
ALTER TABLE [dbo].[tblUrunGenel]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunGenel_tblParcaTipi] FOREIGN KEY([urunParcaId])
REFERENCES [dbo].[tblParcaTipi] ([urunParcaId])
GO
ALTER TABLE [dbo].[tblUrunGenel] CHECK CONSTRAINT [FK_tblUrunGenel_tblParcaTipi]
GO
ALTER TABLE [dbo].[tblZimmet]  WITH CHECK ADD  CONSTRAINT [FK_tblZimmet_tblPersonel] FOREIGN KEY([personelId])
REFERENCES [dbo].[tblPersonel] ([personelId])
GO
ALTER TABLE [dbo].[tblZimmet] CHECK CONSTRAINT [FK_tblZimmet_tblPersonel]
GO
ALTER TABLE [dbo].[tblZimmet]  WITH CHECK ADD  CONSTRAINT [FK_tblZimmet_tblUrun] FOREIGN KEY([urunId])
REFERENCES [dbo].[tblUrun] ([urunId])
GO
ALTER TABLE [dbo].[tblZimmet] CHECK CONSTRAINT [FK_tblZimmet_tblUrun]
GO
USE [master]
GO
ALTER DATABASE [StokYonetim] SET  READ_WRITE 
GO
