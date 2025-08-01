USE [master]
GO
/****** Object:  Database [WebNhac]    Script Date: 10-25-2024 2:01:30 PM ******/
CREATE DATABASE [WebNhac]
 
GO
ALTER DATABASE [WebNhac] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebNhac] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebNhac] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebNhac] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebNhac] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebNhac] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebNhac] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebNhac] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebNhac] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebNhac] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebNhac] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebNhac] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebNhac] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebNhac] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebNhac] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebNhac] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebNhac] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebNhac] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebNhac] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebNhac] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebNhac] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebNhac] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebNhac] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebNhac] SET  MULTI_USER 
GO
ALTER DATABASE [WebNhac] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebNhac] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebNhac] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebNhac] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebNhac] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebNhac] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebNhac', N'ON'
GO
ALTER DATABASE [WebNhac] SET QUERY_STORE = OFF
GO
USE [WebNhac]
GO
/****** Object:  Table [dbo].[account]    Script Date: 10-25-2024 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[MaTK] [int] IDENTITY(1000,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[PassWord] [varchar](50) NULL,
	[Role] [int] NULL,
	[Ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaSi]    Script Date: 10-25-2024 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaSi](
	[MaCS] [int] IDENTITY(1000,1) NOT NULL,
	[TenCS] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 10-25-2024 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuDe](
	[MaCD] [int] IDENTITY(1000,1) NOT NULL,
	[TenCD] [nvarchar](100) NULL,
	[Picture] [nvarchar](100) NULL,
	[Color] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhac]    Script Date: 10-25-2024 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhac](
	[MaBH] [int] IDENTITY(1000,1) NOT NULL,
	[TenBH] [nvarchar](100) NULL,
	[Files] [varchar](100) NULL,
	[image] [nvarchar](200) NULL,
	[NgayPH] [date] NULL,
	[MaCS] [int] NULL,
	[MaTL] [int] NULL,
	[MaCD] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayList]    Script Date: 10-25-2024 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayList](
	[Matk] [int] NULL,
	[MaBH] [int] NULL,
	[TenPL] [nvarchar](100) NULL,
	[stt] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 10-25-2024 2:01:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTL] [int] IDENTITY(1000,1) NOT NULL,
	[TenTL] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([MaTK], [Email], [PassWord], [Role], [Ten]) VALUES (1042, N'vohuuphuoc@gmail.com', N'1234', 1, N'Phước')
INSERT [dbo].[account] ([MaTK], [Email], [PassWord], [Role], [Ten]) VALUES (1043, N'vohuuphuoc1@gmail.com', N'123', 0, N'Võ Hữu Phước')
INSERT [dbo].[account] ([MaTK], [Email], [PassWord], [Role], [Ten]) VALUES (1048, N'vohuuphuoc2@gmail.com', N'1234', 0, N'Demo')
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[CaSi] ON 

INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1002, N'Mono')
INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1003, N'Soobin Hoàng Sơn')
INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1004, N'Rhymastic')
INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1005, N'Dalab')
INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1006, N'Justatee')
INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1007, N'Quang Hà ')
INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1008, N'Trung Quân')
INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1009, N'Binz')
INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1010, N'Đen ')
INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1011, N'Mr Siro')
INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1012, N'Vũ Cát Tường')
INSERT [dbo].[CaSi] ([MaCS], [TenCS]) VALUES (1013, N'Hoàng khoa')
SET IDENTITY_INSERT [dbo].[CaSi] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuDe] ON 

INSERT [dbo].[ChuDe] ([MaCD], [TenCD], [Picture], [Color]) VALUES (1000, N'Tết1', N'1608452588021_500.jpg', N'yellowgreen         ')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD], [Picture], [Color]) VALUES (1001, N'Giáng sinh', N'1605521487016_500.jpg', N'royalblue           ')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD], [Picture], [Color]) VALUES (1002, N'Tình yêu', N'1512189587492_500.jpg', N'rosybrown           ')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD], [Picture], [Color]) VALUES (1003, N'Cho ngày mưa', N'1478616045438_500.jpg', N'red                 ')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD], [Picture], [Color]) VALUES (1004, N'Nghe trên xe', N'1531124811438_500.jpg', N'yellowgreen         ')
INSERT [dbo].[ChuDe] ([MaCD], [TenCD], [Picture], [Color]) VALUES (1009, N'mùa thu', N'tải xuống.jpg', N'red                 ')
SET IDENTITY_INSERT [dbo].[ChuDe] OFF
GO
SET IDENTITY_INSERT [dbo].[Nhac] ON 

INSERT [dbo].[Nhac] ([MaBH], [TenBH], [Files], [image], [NgayPH], [MaCS], [MaTL], [MaCD]) VALUES (1032, N'Đi về nhà ', N'DiVeNha-DenJustaTee-6892051.mp3', N'1608452588021_500.jpg', CAST(N'2024-10-05' AS Date), 1010, 1000, 1000)
INSERT [dbo].[Nhac] ([MaBH], [TenBH], [Files], [image], [NgayPH], [MaCS], [MaTL], [MaCD]) VALUES (1033, N'Phía sau một cô gái', N'PhiaSauMotCoGai-SoobinHoangSon-4632323.mp3', N'1502986360943_500.jpg', CAST(N'2024-11-10' AS Date), 1003, 1003, 1002)
INSERT [dbo].[Nhac] ([MaBH], [TenBH], [Files], [image], [NgayPH], [MaCS], [MaTL], [MaCD]) VALUES (1036, N'Bài ca tuổi trẻ', N'BaiCaTuoiTre-DaLABLinhCaoMelG-4452195.mp3', N'1531124811438_500.jpg', CAST(N'2024-11-15' AS Date), 1005, 1002, 1004)
INSERT [dbo].[Nhac] ([MaBH], [TenBH], [Files], [image], [NgayPH], [MaCS], [MaTL], [MaCD]) VALUES (1037, N'về đâu mái tóc người thương', N'VeDauMaiTocNguoiThuong-DangTheLua_3m3qf.mp3', N'tải xuống.jpg', CAST(N'2024-11-14' AS Date), 1013, 1001, 1002)
INSERT [dbo].[Nhac] ([MaBH], [TenBH], [Files], [image], [NgayPH], [MaCS], [MaTL], [MaCD]) VALUES (1039, N'Em gái mưa', N'EmGaiMuaPianoCover-MrSiro-5181981.mp3', N'tải xuống.jpg', CAST(N'2024-11-15' AS Date), 1011, 1003, 1003)
INSERT [dbo].[Nhac] ([MaBH], [TenBH], [Files], [image], [NgayPH], [MaCS], [MaTL], [MaCD]) VALUES (1040, N'Sao cũng được', N'SaoCungDuocGuitarVersion-Binz-5411337.mp3', N'1520688037080_500.jpg', CAST(N'2024-11-19' AS Date), 1009, 1000, 1002)
INSERT [dbo].[Nhac] ([MaBH], [TenBH], [Files], [image], [NgayPH], [MaCS], [MaTL], [MaCD]) VALUES (1041, N'Jingle bells', N'JingleBellsTiengChuongNgan-Harmony-2611706.mp3', N'1605521487016_500.jpg', CAST(N'2024-11-10' AS Date), 1012, 1002, 1001)
INSERT [dbo].[Nhac] ([MaBH], [TenBH], [Files], [image], [NgayPH], [MaCS], [MaTL], [MaCD]) VALUES (1042, N'Đã lỡ yêu em nhiều', N'DaLoYeuEmNhieuMasewRemix-JustaTee-5302205.mp3', N'1512189587492_500.jpg', CAST(N'2024-11-08' AS Date), 1006, 1003, 1002)
INSERT [dbo].[Nhac] ([MaBH], [TenBH], [Files], [image], [NgayPH], [MaCS], [MaTL], [MaCD]) VALUES (1043, N'Thả vào mưa', N'ThaVaoMua-TrungQuanIdol-4501032.mp3', N'1478616045438_500.jpg', CAST(N'2024-11-20' AS Date), 1008, 1003, 1003)
INSERT [dbo].[Nhac] ([MaBH], [TenBH], [Files], [image], [NgayPH], [MaCS], [MaTL], [MaCD]) VALUES (1044, N'xuân này con không về', N'XuanNayConKhongVe-QuangHa-4449110.mp3', N'1463456439925_500.jpg', CAST(N'2024-11-17' AS Date), 1013, 1001, 1000)
SET IDENTITY_INSERT [dbo].[Nhac] OFF
GO
SET IDENTITY_INSERT [dbo].[PlayList] ON 

INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1042, 1032, N'playlist1', 24)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1042, 1032, N'Bài hát yêu thích', 26)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1042, 1033, N'Bài hát yêu thích', 27)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1042, 1033, N'playlist1', 28)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1042, 1036, N'playlist1', 44)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1043, 1032, N'Bài hát yêu thích', 1044)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1043, 1036, N'Bài hát yêu thích', 1045)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1042, NULL, N'playlist1', 1048)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1042, NULL, N'Bài hát yêu thích', 1049)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1043, NULL, N'Bài hát yêu thích', 1050)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1042, NULL, N'Play', 1051)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1043, NULL, N'myPlay', 1052)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1043, 1032, N'myPlay', 1053)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1042, 1032, N'Bài hát yêu thích', 1054)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1042, 1033, N'Bài hát yêu thích', 1055)
INSERT [dbo].[PlayList] ([Matk], [MaBH], [TenPL], [stt]) VALUES (1042, 1040, N'Bài hát yêu thích', 1056)
SET IDENTITY_INSERT [dbo].[PlayList] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (1000, N'rap')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (1001, N'bolero')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (1002, N'Pop')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (1003, N'Ballad')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
ALTER TABLE [dbo].[Nhac]  WITH CHECK ADD FOREIGN KEY([MaCD])
REFERENCES [dbo].[ChuDe] ([MaCD])
GO
ALTER TABLE [dbo].[Nhac]  WITH CHECK ADD FOREIGN KEY([MaCS])
REFERENCES [dbo].[CaSi] ([MaCS])
GO
ALTER TABLE [dbo].[Nhac]  WITH CHECK ADD FOREIGN KEY([MaTL])
REFERENCES [dbo].[TheLoai] ([MaTL])
GO
ALTER TABLE [dbo].[PlayList]  WITH CHECK ADD FOREIGN KEY([MaBH])
REFERENCES [dbo].[Nhac] ([MaBH])
GO
ALTER TABLE [dbo].[PlayList]  WITH CHECK ADD FOREIGN KEY([Matk])
REFERENCES [dbo].[account] ([MaTK])
GO
USE [master]
GO
ALTER DATABASE [WebNhac] SET  READ_WRITE 
GO
