USE [master]
GO
/****** Object:  Database [HaThanhFood]    Script Date: 6/28/2024 8:27:12 AM ******/
CREATE DATABASE [HaThanhFood]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HealthyMeatball', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\HealthyMeatball.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HealthyMeatball_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\HealthyMeatball_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [HaThanhFood] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HaThanhFood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HaThanhFood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HaThanhFood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HaThanhFood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HaThanhFood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HaThanhFood] SET ARITHABORT OFF 
GO
ALTER DATABASE [HaThanhFood] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HaThanhFood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HaThanhFood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HaThanhFood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HaThanhFood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HaThanhFood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HaThanhFood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HaThanhFood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HaThanhFood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HaThanhFood] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HaThanhFood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HaThanhFood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HaThanhFood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HaThanhFood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HaThanhFood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HaThanhFood] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HaThanhFood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HaThanhFood] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HaThanhFood] SET  MULTI_USER 
GO
ALTER DATABASE [HaThanhFood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HaThanhFood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HaThanhFood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HaThanhFood] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HaThanhFood] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HaThanhFood] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HaThanhFood] SET QUERY_STORE = ON
GO
ALTER DATABASE [HaThanhFood] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [HaThanhFood]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[accId] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](255) NULL,
	[fullName] [nvarchar](100) NULL,
	[phone] [nvarchar](12) NULL,
	[status] [int] NULL,
	[role] [int] NULL,
	[token] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[accId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NULL,
	[content] [nvarchar](255) NULL,
	[coverImgPath] [nvarchar](255) NULL,
	[mainImgPath] [nvarchar](255) NULL,
	[createdDate] [date] NULL,
	[cateId] [int] NULL,
	[accId] [int] NULL,
	[description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogCategory]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogTags]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogTags](
	[blogId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[blogId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[cateId] [int] IDENTITY(1,1) NOT NULL,
	[cateName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[cateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[blogId] [int] NULL,
	[accId] [int] NULL,
	[content] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[province] [nvarchar](50) NULL,
	[district] [nvarchar](50) NULL,
	[ward] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[detailId] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NULL,
	[pId] [int] NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[detailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[ordDate] [date] NULL,
	[shipDate] [date] NULL,
	[note] [nvarchar](255) NULL,
	[status] [int] NULL,
	[accId] [int] NULL,
	[shippingId] [int] NULL,
	[totalPrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plants]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plants](
	[pId] [int] IDENTITY(1,1) NOT NULL,
	[pName] [nvarchar](50) NULL,
	[price] [int] NULL,
	[imgPath] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[status] [int] NULL,
	[cateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pId] [int] NULL,
	[rating] [int] NULL,
	[comment] [nvarchar](255) NULL,
	[accId] [int] NULL,
	[createdDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[phone] [nvarchar](12) NULL,
	[address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 6/28/2024 8:27:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([accId], [email], [password], [fullName], [phone], [status], [role], [token]) VALUES (1, N'messi@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Messi', N'0312456756', 1, 0, N'lGCWprNpGqa79gEW6oal9f1c7Mhycjad')
INSERT [dbo].[Accounts] ([accId], [email], [password], [fullName], [phone], [status], [role], [token]) VALUES (2, N'ronaldo@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Ronaldo', N'0185967483', 1, 1, N'FVSAigVBZRsNahEbSE5HUWr33GjGIddo')
INSERT [dbo].[Accounts] ([accId], [email], [password], [fullName], [phone], [status], [role], [token]) VALUES (3, N'minhnghia01052004@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Le Minh Nghia', N'0791234125', 1, 0, NULL)
INSERT [dbo].[Accounts] ([accId], [email], [password], [fullName], [phone], [status], [role], [token]) VALUES (4, N'batman@gmail.com', N'123456', N'BatVanMan', N'0791234124', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([cateId], [cateName]) VALUES (1, N'Đặc sản Hà Thành')
INSERT [dbo].[Categories] ([cateId], [cateName]) VALUES (2, N'Món ăn theo mùa')
INSERT [dbo].[Categories] ([cateId], [cateName]) VALUES (3, N'Nước uống giải khát')
INSERT [dbo].[Categories] ([cateId], [cateName]) VALUES (4, N'Phòng Vip')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([detailId], [orderId], [pId], [quantity], [price]) VALUES (11, 1, 1, 1, 50000)
INSERT [dbo].[OrderDetails] ([detailId], [orderId], [pId], [quantity], [price]) VALUES (12, 1, 2, 1, 58000)
INSERT [dbo].[OrderDetails] ([detailId], [orderId], [pId], [quantity], [price]) VALUES (13, 1, 3, 1, 64000)
INSERT [dbo].[OrderDetails] ([detailId], [orderId], [pId], [quantity], [price]) VALUES (14, 2, 1, 1, 50000)
INSERT [dbo].[OrderDetails] ([detailId], [orderId], [pId], [quantity], [price]) VALUES (15, 2, 2, 1, 58000)
INSERT [dbo].[OrderDetails] ([detailId], [orderId], [pId], [quantity], [price]) VALUES (16, 2, 3, 1, 64000)
INSERT [dbo].[OrderDetails] ([detailId], [orderId], [pId], [quantity], [price]) VALUES (17, 3, 1, 1, 50000)
INSERT [dbo].[OrderDetails] ([detailId], [orderId], [pId], [quantity], [price]) VALUES (18, 3, 2, 1, 58000)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([orderId], [ordDate], [shipDate], [note], [status], [accId], [shippingId], [totalPrice]) VALUES (1, CAST(N'2024-06-24' AS Date), CAST(N'2024-06-24' AS Date), N'n', 2, 1, 4, 172000)
INSERT [dbo].[Orders] ([orderId], [ordDate], [shipDate], [note], [status], [accId], [shippingId], [totalPrice]) VALUES (2, CAST(N'2024-06-24' AS Date), CAST(N'2024-06-24' AS Date), N'nn', 2, 1, 5, 172000)
INSERT [dbo].[Orders] ([orderId], [ordDate], [shipDate], [note], [status], [accId], [shippingId], [totalPrice]) VALUES (3, CAST(N'2024-06-24' AS Date), NULL, N'n', 3, 1, 6, 108000)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([id], [name]) VALUES (1, N'Processing')
INSERT [dbo].[OrderStatus] ([id], [name]) VALUES (2, N'Completed')
INSERT [dbo].[OrderStatus] ([id], [name]) VALUES (3, N'Canceled')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Plants] ON 

INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (1, N'Mẹt lòng đồi lợn', 99300, N'./images/menu1/met_do_lon.jpg', N'Mẹt lòng đồi lợn ngon tuyệt', 1, 1)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (2, N'Bò cái bang', 359000, N'./images/menu1/bo_cai_bang.jpg', N'Bò "Cái Bang" hấp dẫn', 1, 1)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (3, N'Chả ốc', 145000, N'./images/menu1/cha_oc1.jpg', N'Chả ốc giòn tan', 1, 1)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (4, N'Nem rán', 139000, N'./images/menu1/nem_don_ganh.jpg', N'Nem rán giòn rụm', 1, 1)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (5, N'Lẩu ốc thả giấm bỗng', 749000, N'./images/menu1/lau_oc.jpg', N'Lẩu ốc thả giấm bỗng đậm đà', 1, 1)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (6, N'Riêu cua bánh đúc', 89000, N'./images/menu1/rieu_cua_banh_duc.jpg', N'Riêu cua bánh đúc thơm ngon', 1, 1)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (7, N'Cá bóng sông Đà chiên lá lốt', 269000, N'./images/menu2/ca_bong_song_da_chien_la_lot.jpg', N'Cá bóng sông Đà chiên lá lốt giòn tan', 1, 2)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (8, N'Chả giò vỏ', 249000, N'./images/menu2/cha_gia_vo.jpg', N'Chả giò vỏ thơm ngon', 1, 2)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (9, N'Chuối búng sườn non', 249000, N'./images/menu2/chuoi_bung_suon_non.jpg', N'Chuối búng sườn non ngọt mềm', 1, 2)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (11, N'Lươn cuốn rơm ươm ớt', 289000, N'./images/menu2/luon_cuon_rom_om.jpg', N'Lươn cuốn rơm ươm ớt cay nóng', 1, 2)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (12, N'Nắm rau muống tép đồng', 139000, N'./images/menu2/nom_rau_muong_tep_dong.jpg', N'Nắm rau muống tép đồng thanh mát', 1, 2)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (13, N'Súp bào ngu vi cá cung đình', 109000, N'./images/menu2/sup_bao_ngu_vi_ca_cung_dinh.jpg', N'Súp bào ngu vi cá cung đình dinh dưỡng', 1, 2)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (14, N'Vò vò xào rau bí', 219000, N'./images/menu2/vo_vo_xao_rau_bi.jpg', N'Vò vò xào rau bí ngon tuyệt vời', 1, 2)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (15, N'Tôm hùm đất sốt bơ ớt', 220000, N'./images/menu2/crawFish.jpg', N'Crawfish tươi sống sốt bơ ớt vô cùng hấp dẫn', 1, 2)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (16, N'Blue Soda', 45000, N'./images/drink/blue_soda.jpg', N'Blue Soda tuoi mát', 1, 3)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (17, N'Cam Quế Mùa Hè', 50000, N'./images/drink/cam_que_mua he.jpg', N'Sự kết hợp giữa tinh dầu cam và mùi hương của quế đem đến trải nghiệm khó quên', 1, 3)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (18, N'Bia Corona', 60000, N'./images/drink/corona.jpg', N'Bia Corona đậm đà', 1, 3)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (19, N'Bia Heniken', 55000, N'./images/drink/heniken.jpg', N'Bia Heniken thom ngon', 1, 3)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (20, N'Milk Shake', 40000, N'./images/drink/milk_shake.jpg', N'Milk Shake ngọt ngào ngào', 1, 3)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (21, N'Trà sữa trân châu đường đen', 35000, N'./images/drink/milk_tea.jpg', N'Trà Sữa thom ngon', 1, 3)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (22, N'Trà dâu giải nhiệt', 45000, N'./images/drink/tra_dau_giai_nhiet.jpg', N'Trà dâu giải nhiệt tươi mát', 1, 3)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (24, N'Phòng VIP cung đình', 720000, N'./images/room/vip1.jpg', N'Căn phòng sang trọng và yên tĩnh vô cùng thích hợp cho những cuộc họp mặt gia đình hoặc đối tác làm việc-Để đặt phòng vui lòng liên hệ:094 639 8558(A Nghĩa)', 1, 4)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (25, N'Phòng mùa Hạ', 560000, N'./images/room/vip2.jpg', N'Căn phòng sang trọng và yên tĩnh vô cùng thích hợp cho những cuộc họp mặt gia đình hoặc đối tác làm việc-Để đặt phòng vui lòng liên hệ:094 639 8558(A Nghĩa)', 1, 4)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (26, N'Phòng "thư thái"', 530000, N'./images/room/vip3.jpg', N'Căn phòng sang trọng và yên tĩnh vô cùng thích hợp cho những cuộc họp mặt gia đình hoặc đối tác làm việc-Để đặt phòng vui lòng liên hệ:094 639 8558(A Nghĩa)', 1, 4)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (27, N'Phòng Hạnh Phúc', 660000, N'./images/room/vip4.jpg', N'Căn phòng sang trọng và yên tĩnh vô cùng thích hợp cho những cuộc họp mặt gia đình hoặc đối tác làm việc-Để đặt phòng vui lòng liên hệ:094 639 8558(A Nghĩa)', 1, 4)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (28, N'Phòng họp mặt thường', 440000, N'./images/room/vip5.jpg', N'Căn phòng sang trọng và yên tĩnh vô cùng thích hợp cho những cuộc họp mặt gia đình hoặc đối tác làm việc-Để đặt phòng vui lòng liên hệ:094 639 8558(A Nghĩa)', 1, 4)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (29, N'Phòng gia đình vừa', 120000, N'./images/room/vip6.jpg', N'Căn phòng sang trọng và yên tĩnh vô cùng thích hợp cho những cuộc họp mặt gia đình hoặc đối tác làm việc-Để đặt phòng vui lòng liên hệ:094 639 8558(A Nghĩa)', 1, 4)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (30, N'Phòng mini', 800000, N'./images/room/vip7.jpg', N'Căn phòng sang trọng và yên tĩnh vô cùng thích hợp cho những cuộc họp mặt gia đình hoặc đối tác làm việc-Để đặt phòng vui lòng liên hệ:094 639 8558(A Nghĩa)', 1, 4)
INSERT [dbo].[Plants] ([pId], [pName], [price], [imgPath], [description], [status], [cateId]) VALUES (38, N'Ghẹ sữa chiên lá lốt', 199000, N'./images/menu2/ghe_thai_tu_chien_la_lot.jpg', N'Ghẹ sữa chiên lá lốt đặc biệt', 1, 2)
SET IDENTITY_INSERT [dbo].[Plants] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (1, N'hihi', N'0312456756', N'hihi')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (2, N'hihi', N'0312456756', N'haha')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (3, N'hihi', N'0312456756', N'aa')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (4, N'hihi', N'0312456756', N'n')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (5, N'hihi', N'0312456756', N'nn')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (6, N'hihi', N'0312456756', N'n')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Accounts__AB6E616498A8808F]    Script Date: 6/28/2024 8:27:13 AM ******/
ALTER TABLE [dbo].[Accounts] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Accounts__AB6E6164B5B9B3E8]    Script Date: 6/28/2024 8:27:13 AM ******/
ALTER TABLE [dbo].[Accounts] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Accounts__AB6E6164F8731F2F]    Script Date: 6/28/2024 8:27:13 AM ******/
ALTER TABLE [dbo].[Accounts] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_ordDate]  DEFAULT (getdate()) FOR [ordDate]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([accId])
REFERENCES [dbo].[Accounts] ([accId])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([accId])
REFERENCES [dbo].[Accounts] ([accId])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([accId])
REFERENCES [dbo].[Accounts] ([accId])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([cateId])
REFERENCES [dbo].[BlogCategory] ([id])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([cateId])
REFERENCES [dbo].[BlogCategory] ([id])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([cateId])
REFERENCES [dbo].[BlogCategory] ([id])
GO
ALTER TABLE [dbo].[BlogTags]  WITH CHECK ADD FOREIGN KEY([blogId])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[BlogTags]  WITH CHECK ADD FOREIGN KEY([blogId])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[BlogTags]  WITH CHECK ADD FOREIGN KEY([blogId])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[BlogTags]  WITH CHECK ADD FOREIGN KEY([tagId])
REFERENCES [dbo].[Tags] ([id])
GO
ALTER TABLE [dbo].[BlogTags]  WITH CHECK ADD FOREIGN KEY([tagId])
REFERENCES [dbo].[Tags] ([id])
GO
ALTER TABLE [dbo].[BlogTags]  WITH CHECK ADD FOREIGN KEY([tagId])
REFERENCES [dbo].[Tags] ([id])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([accId])
REFERENCES [dbo].[Accounts] ([accId])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([accId])
REFERENCES [dbo].[Accounts] ([accId])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([accId])
REFERENCES [dbo].[Accounts] ([accId])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([blogId])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([blogId])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([blogId])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[Orders] ([orderId])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([pId])
REFERENCES [dbo].[Plants] ([pId])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([pId])
REFERENCES [dbo].[Plants] ([pId])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([pId])
REFERENCES [dbo].[Plants] ([pId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([accId])
REFERENCES [dbo].[Accounts] ([accId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([shippingId])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([shippingId])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([status])
REFERENCES [dbo].[OrderStatus] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([status])
REFERENCES [dbo].[OrderStatus] ([id])
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD FOREIGN KEY([cateId])
REFERENCES [dbo].[Categories] ([cateId])
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD FOREIGN KEY([cateId])
REFERENCES [dbo].[Categories] ([cateId])
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD FOREIGN KEY([cateId])
REFERENCES [dbo].[Categories] ([cateId])
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD FOREIGN KEY([accId])
REFERENCES [dbo].[Accounts] ([accId])
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD FOREIGN KEY([accId])
REFERENCES [dbo].[Accounts] ([accId])
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD FOREIGN KEY([accId])
REFERENCES [dbo].[Accounts] ([accId])
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD FOREIGN KEY([pId])
REFERENCES [dbo].[Plants] ([pId])
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD FOREIGN KEY([pId])
REFERENCES [dbo].[Plants] ([pId])
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD FOREIGN KEY([pId])
REFERENCES [dbo].[Plants] ([pId])
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD CHECK  (([role]=(1) OR [role]=(0)))
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD CHECK  (([role]=(1) OR [role]=(0)))
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD CHECK  (([role]=(1) OR [role]=(0)))
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD CHECK  (([status]=(1) OR [status]=(0)))
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD CHECK  (([status]=(1) OR [status]=(0)))
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD CHECK  (([status]=(1) OR [status]=(0)))
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD CHECK  (([price]>=(0.0)))
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD CHECK  (([price]>=(0.0)))
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD CHECK  (([price]>=(0.0)))
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD CHECK  (([quantity]>=(1)))
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD CHECK  (([quantity]>=(1)))
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD CHECK  (([quantity]>=(1)))
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD CHECK  (([price]>=(0)))
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD CHECK  (([price]>=(0)))
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD CHECK  (([price]>=(0)))
GO
USE [master]
GO
ALTER DATABASE [HaThanhFood] SET  READ_WRITE 
GO
