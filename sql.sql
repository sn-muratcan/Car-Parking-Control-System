USE [AracTakipSistemi]
GO
/****** Object:  Table [dbo].[tbl_Arac_Giris]    Script Date: 18.01.2023 11:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Arac_Giris](
	[AracID] [int] IDENTITY(1,1) NOT NULL,
	[AracPlaka] [varchar](50) NULL,
	[AracMarkaModel] [varchar](50) NULL,
	[AracTuru] [varchar](10) NULL,
	[GirisTarihi] [datetime2](7) NULL,
	[IcerdeDisarida] [varchar](10) NULL,
	[Ucret] [int] NULL,
	[CikisTarihi] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_toplam_sure]    Script Date: 18.01.2023 11:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_toplam_sure](
	[toplamsure] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_Arac_Giris] ON 

INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (37, N'34ABC34', N'MERCEDES', N'BinekAraç', CAST(N'2023-01-16 15:09:32.1570000' AS DateTime2), N'Dışarıda', 75, CAST(N'2023-01-18 01:35:57.2800000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (38, N'34LTA4557', N'TOGG', N'Motor', CAST(N'2023-01-17 15:32:57.7900000' AS DateTime2), N'Dışarıda', 25, CAST(N'2023-01-17 17:58:31.1800000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (39, N'34LTA4557', N'TOGG', N'Motor', CAST(N'2023-01-17 15:32:57.7900000' AS DateTime2), N'Dışarıda', 25, CAST(N'2023-01-17 17:58:31.1800000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (40, N'01ADN7448', N'TOFAŞ', N'BinekAraç', CAST(N'2023-01-17 17:28:22.7700000' AS DateTime2), N'Dışarıda', 20, CAST(N'2023-01-17 19:16:16.7870000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (41, N'02OSM7448', N'TOFAŞ', N'BinekAraç', CAST(N'2023-01-17 17:28:22.7700000' AS DateTime2), N'Dışarıda', 15, CAST(N'2023-01-17 19:22:12.3000000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (42, N'34ABC344', N'MERCEDES', N'BinekAraç', CAST(N'2023-01-17 17:36:51.9900000' AS DateTime2), N'Dışarıda', 15, CAST(N'2023-01-17 18:51:05.3570000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (50, N'34AAA35', N'SKODA', N'', CAST(N'2023-01-18 00:33:37.2100000' AS DateTime2), N'Dışarıda', NULL, CAST(N'2023-01-18 01:30:01.6530000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (53, N'34ASD34', N'BMW', N'Motor', CAST(N'2023-01-18 01:34:17.8500000' AS DateTime2), N'Dışarıda', 15, CAST(N'2023-01-18 01:34:54.9400000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (55, N'34ABC34', N'MERCEDES', N'BinekAraç', CAST(N'2023-01-18 01:35:40.5130000' AS DateTime2), N'Dışarıda', 15, CAST(N'2023-01-18 01:35:57.2800000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (56, N'34ABC34', N'MERCEDES', N'Motor', CAST(N'2023-01-18 01:37:30.4800000' AS DateTime2), N'Dışarıda', 15, CAST(N'2023-01-18 01:37:44.7330000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (58, N'34ATT3504', N'BMW', N'BinekAraç', CAST(N'2023-01-18 11:18:24.5870000' AS DateTime2), N'Dışarıda', 30, CAST(N'2023-01-18 11:21:56.7030000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (59, N'34KMU6512', N'BMW', N'BinekAraç', CAST(N'2023-01-18 11:23:03.3230000' AS DateTime2), N'Dışarıda', 30, CAST(N'2023-01-18 11:23:51.3300000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (54, N'34ASD34', N'BMW', N'Motor', CAST(N'2023-01-18 01:34:17.8500000' AS DateTime2), N'Dışarıda', 15, CAST(N'2023-01-18 02:08:02.5570000' AS DateTime2))
INSERT [dbo].[tbl_Arac_Giris] ([AracID], [AracPlaka], [AracMarkaModel], [AracTuru], [GirisTarihi], [IcerdeDisarida], [Ucret], [CikisTarihi]) VALUES (57, N'35YUM35', N'MERCEDES', N'Kamyonet', CAST(N'2023-01-16 02:24:09.1130000' AS DateTime2), N'Dışarıda', 240, CAST(N'2023-01-18 02:25:30.3270000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tbl_Arac_Giris] OFF
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (145)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (107)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (113)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (1670)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (107)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (56)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (56)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (56)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (56)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (56)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (33)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (3)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (145)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (74)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (145)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (145)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (37)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (56)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
GO
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (0)
INSERT [dbo].[tbl_toplam_sure] ([toplamsure]) VALUES (2881)
