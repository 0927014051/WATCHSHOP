USE [WATCHSHOP]
GO
/****** Object:  Table [dbo].[address]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address](
	[address_id] [bigint] IDENTITY(1,1) NOT NULL,
	[receiver_name] [nvarchar](50) NULL,
	[address] [nvarchar](250) NULL,
	[phone] [nchar](10) NULL,
	[user_id] [bigint] NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_id] [bigint] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[total_price] [bigint] NOT NULL,
	[order_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[brand_id] [bigint] IDENTITY(1,1) NOT NULL,
	[brand_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_brands] PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [bigint] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customer_id] [bigint] IDENTITY(1,1) NOT NULL,
	[customer_name] [nvarchar](50) NULL,
	[gender] [nvarchar](4) NULL,
	[address] [nvarchar](200) NULL,
	[birthday] [date] NULL,
	[user_id] [bigint] NULL,
	[phone] [nvarchar](11) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discount]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount](
	[discount_id] [bigint] IDENTITY(1,1) NOT NULL,
	[discount_name] [nvarchar](100) NOT NULL,
	[staff_id] [bigint] NOT NULL,
	[discount_percent] [decimal](10, 2) NULL,
 CONSTRAINT [PK_discount] PRIMARY KEY CLUSTERED 
(
	[discount_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discount_detail]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount_detail](
	[discount_detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[discount_id] [bigint] NOT NULL,
	[watch_id] [nchar](9) NOT NULL,
	[date_start] [date] NOT NULL,
	[date_end] [date] NOT NULL,
	[price_discount] [money] NULL,
 CONSTRAINT [PK_discount_detail_1] PRIMARY KEY CLUSTERED 
(
	[discount_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item_detail]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item_detail](
	[item_detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[item_id] [bigint] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [money] NULL,
	[watch_id] [nchar](9) NULL,
 CONSTRAINT [PK_item_detail_1] PRIMARY KEY CLUSTERED 
(
	[item_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[items]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[items](
	[item_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
 CONSTRAINT [PK_items] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_detail_id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_id] [bigint] NULL,
	[watch_id] [nchar](9) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [bigint] NOT NULL,
 CONSTRAINT [PK_order_detail_1] PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_day] [date] NOT NULL,
	[total_price] [bigint] NOT NULL,
	[order_status] [int] NULL,
	[user_id] [bigint] NOT NULL,
	[address_id] [bigint] NULL,
	[user_delivery] [bigint] NULL,
	[user_accept] [bigint] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[review_id] [bigint] IDENTITY(1,1) NOT NULL,
	[watch_id] [nchar](9) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[comments] [nvarchar](200) NULL,
	[star] [float] NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_reviews_1] PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [bigint] NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staffs]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staffs](
	[staff_id] [bigint] IDENTITY(1,1) NOT NULL,
	[staff_name] [nvarchar](50) NULL,
	[gender] [nchar](4) NULL,
	[birthday] [date] NULL,
	[address] [nvarchar](200) NULL,
	[phone] [nchar](10) NULL,
	[user_id] [bigint] NULL,
 CONSTRAINT [PK_staffs] PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [bigint] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[status] [nchar](1) NOT NULL,
	[role_id] [bigint] NOT NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nchar](10) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[warranty]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warranty](
	[warranty_id] [bigint] IDENTITY(1,1) NOT NULL,
	[start_day] [date] NOT NULL,
	[end_day] [date] NOT NULL,
	[watch_id] [nchar](10) NOT NULL,
	[order_detail_id] [bigint] NULL,
 CONSTRAINT [PK_warranty] PRIMARY KEY CLUSTERED 
(
	[warranty_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[warranty_detail]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[warranty_detail](
	[warranty_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[status] [nvarchar](200) NULL,
 CONSTRAINT [PK_warranty_detail] PRIMARY KEY CLUSTERED 
(
	[warranty_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[watchs]    Script Date: 6/11/2023 7:21:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[watchs](
	[watch_id] [nchar](9) NOT NULL,
	[watch_name] [nvarchar](45) NOT NULL,
	[price] [bigint] NULL,
	[total_quantity] [int] NULL,
	[picture] [nvarchar](255) NULL,
	[describe] [ntext] NULL,
	[brand_id] [bigint] NOT NULL,
	[category_id] [bigint] NOT NULL,
	[size] [nvarchar](15) NULL,
	[crystal] [ntext] NULL,
	[bracelet_material] [ntext] NULL,
	[movement] [ntext] NULL,
 CONSTRAINT [PK_watchs] PRIMARY KEY CLUSTERED 
(
	[watch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[address] ON 

INSERT [dbo].[address] ([address_id], [receiver_name], [address], [phone], [user_id], [status]) VALUES (10016, N'Trịnh Thanh Sơn', N'12A hẻm 63 đường 10, Tăng Nhơn Phú B, TP Thủ Đức, Tp Hồ Chí Minh', N'0927014051', 10040, N'1')
INSERT [dbo].[address] ([address_id], [receiver_name], [address], [phone], [user_id], [status]) VALUES (10017, N'Trịnh Thanh Sơn', N'12A hẻm 63 đường 10, Tăng Nhơn Phú B, TP Thủ Đức, Tp Hồ Chí Minh', N'0927014051', 10040, N'0')
INSERT [dbo].[address] ([address_id], [receiver_name], [address], [phone], [user_id], [status]) VALUES (10021, N'Trịnh Thanh Sơn', N'12A hẻm 63 đường 10, Tăng Nhơn Phú B, TP Thủ Đức, Tp Hồ Chí Minh', N'0927123456', 10044, N'0')
INSERT [dbo].[address] ([address_id], [receiver_name], [address], [phone], [user_id], [status]) VALUES (10022, N'Trần Thị Thuý', N'97 Man Thiện, TP Thủ Đức, TP Hồ Chí Minh', N'0987345192', 10044, N'0')
INSERT [dbo].[address] ([address_id], [receiver_name], [address], [phone], [user_id], [status]) VALUES (10023, N'Trịnh Thanh Sơn', N'12A hẻm 63 đường 10, Tăng Nhơn Phú B, TP Thủ Đức, Tp Hồ Chí Minh', N'0927014857', 10047, N'0')
SET IDENTITY_INSERT [dbo].[address] OFF
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([bill_id], [date], [total_price], [order_id], [user_id]) VALUES (20, CAST(N'2023-06-07' AS Date), 14140000, 10091, 10041)
INSERT [dbo].[bill] ([bill_id], [date], [total_price], [order_id], [user_id]) VALUES (21, CAST(N'2023-06-07' AS Date), 14140000, 10091, 10041)
INSERT [dbo].[bill] ([bill_id], [date], [total_price], [order_id], [user_id]) VALUES (22, CAST(N'2023-06-08' AS Date), 10473000, 10092, 10041)
INSERT [dbo].[bill] ([bill_id], [date], [total_price], [order_id], [user_id]) VALUES (23, CAST(N'2023-06-08' AS Date), 10473000, 10095, 10041)
INSERT [dbo].[bill] ([bill_id], [date], [total_price], [order_id], [user_id]) VALUES (24, CAST(N'2023-06-09' AS Date), 10473000, 10094, 10041)
INSERT [dbo].[bill] ([bill_id], [date], [total_price], [order_id], [user_id]) VALUES (25, CAST(N'2023-06-09' AS Date), 10473000, 10093, 10041)
INSERT [dbo].[bill] ([bill_id], [date], [total_price], [order_id], [user_id]) VALUES (26, CAST(N'2023-06-10' AS Date), 11886000, 10098, 10041)
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
SET IDENTITY_INSERT [dbo].[brands] ON 

INSERT [dbo].[brands] ([brand_id], [brand_name]) VALUES (1, N'Casio')
INSERT [dbo].[brands] ([brand_id], [brand_name]) VALUES (2, N'Citizen')
INSERT [dbo].[brands] ([brand_id], [brand_name]) VALUES (3, N'Apple')
INSERT [dbo].[brands] ([brand_id], [brand_name]) VALUES (4, N'Orient')
INSERT [dbo].[brands] ([brand_id], [brand_name]) VALUES (5, N'Samsung')
INSERT [dbo].[brands] ([brand_id], [brand_name]) VALUES (10024, N'NEW1')
SET IDENTITY_INSERT [dbo].[brands] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_name]) VALUES (1, N'Đồng Hồ Điện Tử')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (2, N'Đồng Hồ Cơ')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (3, N'Đồng Hồ Thông Minh')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (10025, N'LOAINEW1')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([customer_id], [customer_name], [gender], [address], [birthday], [user_id], [phone]) VALUES (10030, N'Lê Việt Thành', N'Nam', N'Tăng Nhơn Phú B, TP Thủ Đức, Tp Hồ Chí Minh', CAST(N'2002-07-16' AS Date), 10040, N'0927123444')
INSERT [dbo].[customer] ([customer_id], [customer_name], [gender], [address], [birthday], [user_id], [phone]) VALUES (10032, N'Trần Thi Thuý', N'Nữ', N'Thủ Đức, TP Hồ Chí Minh', CAST(N'2002-06-05' AS Date), 10044, N'123456789')
INSERT [dbo].[customer] ([customer_id], [customer_name], [gender], [address], [birthday], [user_id], [phone]) VALUES (10034, N'Trần Thị Thuý', N'Nữ', N'12A hẻm 63, Đương 10, Tăng Nhơn Phu B, TP Thủ Đức, TP Hồ Chí Minh', CAST(N'2002-02-05' AS Date), 10047, N'0862986345')
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[item_detail] ON 

INSERT [dbo].[item_detail] ([item_detail_id], [item_id], [quantity], [price], [watch_id]) VALUES (10194, 10024, 3, 3550000.0000, N'MADH02-26')
INSERT [dbo].[item_detail] ([item_detail_id], [item_id], [quantity], [price], [watch_id]) VALUES (10196, 10026, 1, 907000.0000, N'MADH24-35')
INSERT [dbo].[item_detail] ([item_detail_id], [item_id], [quantity], [price], [watch_id]) VALUES (10198, 10026, 1, 20990000.0000, N'MADH23-44')
INSERT [dbo].[item_detail] ([item_detail_id], [item_id], [quantity], [price], [watch_id]) VALUES (10199, 10024, 2, 4690000.0000, N'MADH29-45')
INSERT [dbo].[item_detail] ([item_detail_id], [item_id], [quantity], [price], [watch_id]) VALUES (10211, 10028, 1, 3000000.0000, N'MADONGHO ')
SET IDENTITY_INSERT [dbo].[item_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[items] ON 

INSERT [dbo].[items] ([item_id], [user_id]) VALUES (10024, 10040)
INSERT [dbo].[items] ([item_id], [user_id]) VALUES (10026, 10044)
INSERT [dbo].[items] ([item_id], [user_id]) VALUES (10028, 10047)
SET IDENTITY_INSERT [dbo].[items] OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10058, 10091, N'MADH03-44', 1, 10590000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10059, 10091, N'MADH02-26', 1, 3550000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10060, 10092, N'MADH04-35', 1, 1296000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10061, 10092, N'MADH05-40', 1, 9177000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10062, 10093, N'MADH04-35', 1, 1296000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10063, 10093, N'MADH05-40', 1, 9177000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10064, 10094, N'MADH04-35', 1, 1296000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10065, 10094, N'MADH05-40', 1, 9177000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10066, 10095, N'MADH04-35', 1, 1296000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10067, 10095, N'MADH05-40', 1, 9177000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10068, 10096, N'MADH30-40', 1, 8600000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10069, 10097, N'MADH03-44', 1, 9531000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10070, 10097, N'MADH30-40', 1, 7740000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10071, 10098, N'MADH04-35', 1, 1296000)
INSERT [dbo].[order_detail] ([order_detail_id], [order_id], [watch_id], [quantity], [price]) VALUES (10072, 10098, N'MADH03-44', 1, 10590000)
SET IDENTITY_INSERT [dbo].[order_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([order_id], [order_day], [total_price], [order_status], [user_id], [address_id], [user_delivery], [user_accept]) VALUES (10091, CAST(N'2023-06-06' AS Date), 14140000, 4, 10040, 10016, 10041, 1)
INSERT [dbo].[orders] ([order_id], [order_day], [total_price], [order_status], [user_id], [address_id], [user_delivery], [user_accept]) VALUES (10092, CAST(N'2023-06-08' AS Date), 10473000, 4, 10040, 10017, 10041, 1)
INSERT [dbo].[orders] ([order_id], [order_day], [total_price], [order_status], [user_id], [address_id], [user_delivery], [user_accept]) VALUES (10093, CAST(N'2023-06-08' AS Date), 10473000, 4, 10040, 10017, 10041, 1)
INSERT [dbo].[orders] ([order_id], [order_day], [total_price], [order_status], [user_id], [address_id], [user_delivery], [user_accept]) VALUES (10094, CAST(N'2023-06-08' AS Date), 10473000, 5, 10040, 10017, 10041, 1)
INSERT [dbo].[orders] ([order_id], [order_day], [total_price], [order_status], [user_id], [address_id], [user_delivery], [user_accept]) VALUES (10095, CAST(N'2023-06-08' AS Date), 10473000, 5, 10040, 10017, 10041, 1)
INSERT [dbo].[orders] ([order_id], [order_day], [total_price], [order_status], [user_id], [address_id], [user_delivery], [user_accept]) VALUES (10096, CAST(N'2023-06-09' AS Date), 8600000, 5, 10044, 10022, NULL, NULL)
INSERT [dbo].[orders] ([order_id], [order_day], [total_price], [order_status], [user_id], [address_id], [user_delivery], [user_accept]) VALUES (10097, CAST(N'2023-06-09' AS Date), 17271000, 2, 10040, 10017, NULL, 1)
INSERT [dbo].[orders] ([order_id], [order_day], [total_price], [order_status], [user_id], [address_id], [user_delivery], [user_accept]) VALUES (10098, CAST(N'2023-06-10' AS Date), 11886000, 4, 10047, 10023, 10041, 1)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[reviews] ON 

INSERT [dbo].[reviews] ([review_id], [watch_id], [user_id], [comments], [star], [date]) VALUES (11, N'MADH03-44', 10040, N'Hàng chất lượng cao ', 5, CAST(N'2023-06-08' AS Date))
INSERT [dbo].[reviews] ([review_id], [watch_id], [user_id], [comments], [star], [date]) VALUES (12, N'MADH05-40', 10040, N'Hàng tốt, vừa ý', 5, CAST(N'2023-06-08' AS Date))
INSERT [dbo].[reviews] ([review_id], [watch_id], [user_id], [comments], [star], [date]) VALUES (13, N'MADH02-26', 10040, N'Hàng chất lượng tốt, đẹp y như mẫu', 5, CAST(N'2023-06-09' AS Date))
INSERT [dbo].[reviews] ([review_id], [watch_id], [user_id], [comments], [star], [date]) VALUES (14, N'MADH04-35', 10047, N'Hàng chất lượng tốt lắm!', 5, CAST(N'2023-06-10' AS Date))
SET IDENTITY_INSERT [dbo].[reviews] OFF
GO
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (0, N'ADMIN')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (1, N'Quản lý')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (2, N'Nhân viên')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (3, N'Khách hàng')
GO
SET IDENTITY_INSERT [dbo].[staffs] ON 

INSERT [dbo].[staffs] ([staff_id], [staff_name], [gender], [birthday], [address], [phone], [user_id]) VALUES (1, N'Trịnh Thanh Sơn', N'Nam ', CAST(N'2002-07-25' AS Date), N'', N'0927014051', 1)
INSERT [dbo].[staffs] ([staff_id], [staff_name], [gender], [birthday], [address], [phone], [user_id]) VALUES (20048, N'Nguyễn Huỳnh Trúc Thanh', N'Nữ  ', CAST(N'2002-05-01' AS Date), N'Phước Long B, TP Thủ Đức, TP Hồ Chí Minh', N'0285687543', 10041)
INSERT [dbo].[staffs] ([staff_id], [staff_name], [gender], [birthday], [address], [phone], [user_id]) VALUES (20049, N'levietthanh', NULL, NULL, N'', N'0967534267', 10045)
INSERT [dbo].[staffs] ([staff_id], [staff_name], [gender], [birthday], [address], [phone], [user_id]) VALUES (20050, N'thanhle', NULL, NULL, N'', N'0967543667', 10048)
SET IDENTITY_INSERT [dbo].[staffs] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [username], [password], [status], [role_id], [email], [phone]) VALUES (1, N'son', N'123456', N'0', 1, N'thanh@gmail.com', N'0927014051')
INSERT [dbo].[users] ([user_id], [username], [password], [status], [role_id], [email], [phone]) VALUES (10040, N'thanhson', N'123456', N'0', 3, N'thanhson12a12002@gmail.com', N'0927123444')
INSERT [dbo].[users] ([user_id], [username], [password], [status], [role_id], [email], [phone]) VALUES (10041, N'tructhanh', N'123456', N'0', 2, N'truc@gmail.com', N'0285687543')
INSERT [dbo].[users] ([user_id], [username], [password], [status], [role_id], [email], [phone]) VALUES (10044, N'tranthithuy', N'123456', N'0', 3, N'thanh@gmail.com', N'123456789 ')
INSERT [dbo].[users] ([user_id], [username], [password], [status], [role_id], [email], [phone]) VALUES (10045, N'levietthanh', N'0967534267', N'0', 2, N'levietthanh@gmail.com', N'0967534267')
INSERT [dbo].[users] ([user_id], [username], [password], [status], [role_id], [email], [phone]) VALUES (10047, N'tranthuy', N'qDtZEB', N'0', 3, N'ngtrung5423@gmail.com', N'0862986345')
INSERT [dbo].[users] ([user_id], [username], [password], [status], [role_id], [email], [phone]) VALUES (10048, N'thanhle', N'0967543667', N'0', 2, N'thanhle@gmail.com', N'0967543667')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET IDENTITY_INSERT [dbo].[warranty] ON 

INSERT [dbo].[warranty] ([warranty_id], [start_day], [end_day], [watch_id], [order_detail_id]) VALUES (10062, CAST(N'2023-06-07' AS Date), CAST(N'2024-06-07' AS Date), N'MADH03-44 ', 10058)
INSERT [dbo].[warranty] ([warranty_id], [start_day], [end_day], [watch_id], [order_detail_id]) VALUES (10063, CAST(N'2023-06-07' AS Date), CAST(N'2024-06-07' AS Date), N'MADH02-26 ', 10059)
INSERT [dbo].[warranty] ([warranty_id], [start_day], [end_day], [watch_id], [order_detail_id]) VALUES (10064, CAST(N'2023-06-07' AS Date), CAST(N'2024-06-07' AS Date), N'MADH03-44 ', 10058)
INSERT [dbo].[warranty] ([warranty_id], [start_day], [end_day], [watch_id], [order_detail_id]) VALUES (10065, CAST(N'2023-06-07' AS Date), CAST(N'2024-06-07' AS Date), N'MADH02-26 ', 10059)
INSERT [dbo].[warranty] ([warranty_id], [start_day], [end_day], [watch_id], [order_detail_id]) VALUES (10066, CAST(N'2023-06-08' AS Date), CAST(N'2024-06-08' AS Date), N'MADH04-35 ', 10060)
INSERT [dbo].[warranty] ([warranty_id], [start_day], [end_day], [watch_id], [order_detail_id]) VALUES (10067, CAST(N'2023-06-08' AS Date), CAST(N'2024-06-08' AS Date), N'MADH05-40 ', 10061)
INSERT [dbo].[warranty] ([warranty_id], [start_day], [end_day], [watch_id], [order_detail_id]) VALUES (10068, CAST(N'2023-06-09' AS Date), CAST(N'2024-06-09' AS Date), N'MADH04-35 ', 10062)
INSERT [dbo].[warranty] ([warranty_id], [start_day], [end_day], [watch_id], [order_detail_id]) VALUES (10069, CAST(N'2023-06-09' AS Date), CAST(N'2024-06-09' AS Date), N'MADH05-40 ', 10063)
INSERT [dbo].[warranty] ([warranty_id], [start_day], [end_day], [watch_id], [order_detail_id]) VALUES (10070, CAST(N'2023-06-10' AS Date), CAST(N'2024-06-10' AS Date), N'MADH04-35 ', 10071)
INSERT [dbo].[warranty] ([warranty_id], [start_day], [end_day], [watch_id], [order_detail_id]) VALUES (10071, CAST(N'2023-06-10' AS Date), CAST(N'2024-06-10' AS Date), N'MADH03-44 ', 10072)
SET IDENTITY_INSERT [dbo].[warranty] OFF
GO
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'DONGHO001', N'APPLE WATCH NEW ', 3000000, 20, N'10.png', N'sản phẩm đến từ apple', 1, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH01-45', N'Casio AE-1200WHD-1AVDF', 3000000, 20, N'01.png', N':Đồng hồ Casio AE-1200WHD-1AVDF dành cho Nam chức năng world time bản đồ thế giới, chống nước 100m, pin 10 năm, 5 chế độ báo thức, có thể thay từ dây kim loại sang dây da, với thiết kế độc đáo và mới lạ bởi mặt đồng hồ điện tử vuông kết hợp với các chức năng của đồng hồ được hiển thị độc lập và xen kẽ trên màn hình hiển thị sẽ giúp cho người đeo dễ dàng nắm bắt được thời gian và còn giúp cho đồng hồ thêm phần nổi bật và đa dạng. Hơn nưa với thiết kế dây kim loại độc đáo mang lại cho các bạn trai sự trưởng thành và lịch lãm dễ dàng hơn hẳn trong việc phối đồ mà mình yêu thích nhé.', 1, 2, N'20mm', N'Resin Glass (Kính Nhựa)', N'Dây kim loại - 24.3 mm.', N'Quartz (Pin)')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH02-26', N'CITIZEN EU6022-54E NEW', 4000000, 20, N'02.png', N'Đồng hồ Citizen EU6022-54E có vỏ và dây đeo kim loại mạ vàng sang trọng, kim chỉ và vạch số được làm thanh mãnh nổi bật trên nền số màu đen có vân độc đáo.
', 2, 2, N'26mm', N'Mineral Crystal (Kính Cứng)', N'Thép Không Gỉ', N'Quartz')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH03-44', N'Apple Watch Series 6', 10590000, 16, N'03.png', N'Với vẻ ngoài bắt mắt cùng hiệu năng vượt trội và tiện ích nổi bật, đồng hồ thông minh Apple Watch Series 6 44mm là dòng sản phẩm Apple đáng sở hữu trong tầm giá. Tính năng đo điện tâm đồ, đo SPO2 mọi lúc mọi nơi cùng khả năng hỗ trợ đắc lực trong việc tập luyện sẽ mang đến cho bạn một cuộc sống năng động hơn, một cơ thể khỏe mạnh và tinh thần thoải mái hơn.', 3, 3, N'44mm', N'Stripes
', N'Silicone
', N'WacthOS 7
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH04-35', N'CASIO B640WDG-7DF', 1296000, 16, N'04.png', N'Mẫu Casio B640WDG-7DF mặt số vuông điện tử hiện thị đa chức năng kiểu dáng năng động phối cùng mẫu dây đeo kim loại mạ bạc.', 1, 1, N'35mm', N'Thép không gỉ 316L
', N' Resin Glass (Kính Nhựa)
', N'Quartz (Pin)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH05-40', N'CITIZEN C7 NH8394-70H', 9177000, 18, N'05.png', N'Mẫu Citizen C7 NH8394-70H phiên bản dây đeo demi thời trang phối cùng các chi tiết kim chỉ cùng cọc vạch số mạ vàng hồng sang trọng trên nền mặt số 40mm với họa tiết trải tia nhẹ.', 2, 2, N'40mm', N'Mặt kính khoáng(Mineral)
', N'Dây đeo thép không gỉ 20mm
', N'
Automatic (Tự Động)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH06-42', N'ORIENT FER2A005Y0', 4950000, 20, N'06.png', N'Đồng hồ Orient FER2A005Y0 mang thiết kế thể thao năng động, với mặt số tròn, kim chỉ có phản quang và vạch số với chữ số to rõ được phu màu đen nổi bật trền nền vàng trắng tinh xảo.', 4, 2, N'42mm', N'Mineral Crystal (Kính Cứng)
', N'Dây Da Chính Hãng
', N'Automatic (Tự Động)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH07-40', N'ORIENT BAMBINO FAC0000DD0', 7510000, 20, N'07.png', N'Đồng hồ Orient FAC0000DD0 với thiết kế dành cho nam theo phong cách thời trang, kim chỉ và vạch số thiết kế mỏng nổi bật trên nền số xanh, ô lịch ngày vị trí 3 giờ, dây đeo bằng da màu đen tạo vẻ thời trang trẻ trung.', 4, 2, N'40mm', N'Mineral Crystal (Kính Cứng)
', N'Dây Da Chính Hãng
', N'Automatic (Tự Động)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH08-24', N'Samsung Galaxy Fit Bạc', 2290000, 20, N'08.png', N'Samsung Galaxy Fit Bạc nổi bật với kiểu vòng đeo tay đơn giản cùng dây đeo cao su, sở hữu màn hình màu AMOLED 0.95”. Thiết kế mỏng và thời trang cho phép bạn theo dõi dễ dàng và trực quan, giúp đạt được mục tiêu tập thể dục của bạn', 5, 3, N'24mm', N'Kính cường lực
', N'Silicone
', N'Hệ điều hành FreeRTOS
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH09-44', N'Samsung Galaxy Watch Active 2 - Đen', 9990000, 20, N'09.png', N'Samsung Galaxy Watch Active2 - 44mm (Mặt Thép) (Đen) được thiết kế đơn giản và phong cách để bạn có thể thoải mái thể hiện chất tôi khác biệt.Dây đeo Silicone hạn chế bị trầy xước và dễ lau khô khi tiếp xúc với nước hay mồ hôi.Mặt kính cường lực giúp người đeo an tâm khi mang ra ngoài. Nổi bật với màn hình tròn được thiết kế tràn viền, bao bọc bởi vỏ nhôm bền nhẹ kết hợp với dây đeo thời thượng đậm cá tính. Chiếc đồng hồ thông minh Samsung thế hệ mới này sẽ làm tôn dáng tay và khiến bạn luôn nổi bật dù ở bất kỳ đâu.
', 5, 3, N'44mm', N'Kính cường lực Gorilla Glass Dx+
', N'dây silicone
', N'Exynos 9110
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH10-42', N'Apple Watch Series 3 GPS', 6000000, 20, N'10.png', N'Mẫu Apple Watch S3 GPS (viền nhôm dây silicone) Vỏ nhôm màu xám bạc, vàng kim hoặc bạc
Mặt kính Ion-X, màn hình Retina và mặt lưng làm bằng nhựa tổng hợp .Tích hợp những cảm biến quen thuộc gồm cảm biến đo nhịp tim, GPS, NFC, chip không dây, SOS khẩn cấp, cao độ kế, loa, Wi-Fi, LTE và khả năng chống nước ở độ sâu tới 50 mét. Với thời lượng pin trung bình 18 tiếng, người dùng sẽ phải sạc pin hàng ngày để sản phẩm có thể hoạt động liên tục.có thể cập nhật được lên hệ điều hành WatchOS 6 mang đến các tính năng mới thú vị. Bên cạnh đó, ứng dụng tiếng ồn mới sẽ cảnh báo người dùng khi đang ở môi trường có tiếng ồn cao, gây nguy hiểm', 3, 3, N'42mm', N'Ion-X strengthened glass
', N'dây silicone
', N'Apple W2
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH11-41', N'CASIO MTP-VC01L-7EUDF', 1710000, 20, N'11.png', N'Mẫu Casio MTP-VC01L-7EUDF phiên bản kết hợp giữa chức năng kim chỉ cùng với ô số điện tử tạo nên vẻ thời trang độc đáo trên nền mặt số với kích thước 41mm.', 1, 1, N'41mm', N'Mineral(kính cứng)
', N'Dây da chính hãng
', N'Quartz(pin)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH12-29', N'CITIZEN PD7144-57A', 7985000, 20, N'12.png', N'Mẫu Citizen PD7144-57A mặt số tròn nhỏ size 29mm cùng với thiết kế đơn giản chức năng 3 kim, vẻ ngoài trẻ trung sang trọng với chi tiết kim chỉ cùng cọc vạch số mạ vàng. Bộ máy Automatic/ Máy tự động lên dây cót. Chất liệu dây đeo Thép không gỉ 316L/ Mạ vàng công nghệ PVD. Mặt kính với công nghệ Sapphire/ Chống trầy xước mang đến trải nghiệm an toàn cho khách hàng 
', 2, 2, N'29mm', N'Sapphire (Kính Chống Trầy)
', N'dây thép không gỉ
', N' Automatic tự động lên dây cót
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH13-33', N'CITIZEN ED8180-52X', 3885000, 20, N'13.png', N'Mẫu Citizen ED8180-52X phiên bản sang trọng 11 viên đá pha lê được đính tương ứng với các múi giờ hiện thị trên nền mặt số kích thước vừa vặn không quá lớn 33mm.', 2, 1, N'33mm', N'Mineral Crystal (Kính Cứng)
', N'dây thép không gỉ
', N'Quartz (Pin)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH14-28', N'CASIO LTP-1183A-7ADF', 1140000, 20, N'14.png', N'Đồng hồ nữ Casio LTP-1183A-7ADF thanh lịch tinh tế, mặt đồng hồ có nền trắng cùng chữ số lớn, kiểu dáng 3 kim đơn giản cùng 1 lịch ngày.', 1, 1, N'28mm', N'Mineral Crystal (Kính Cứng)
', N'dây hợp kim
', N'Quartz (Pin)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH15-25', N'CASIO LA680WA-1DF', 1140000, 20, N'15.png', N'Đồng hồ Casio LA680WA-1DF với hình dáng cổ điển, nét hiện đại thể hiện ở dây đeo kim loại được mạ bạc sang trọng, đèn LED với độ chiếu sáng cao có thể coi rõ trong bóng tối.', 1, 1, N'25mm', N'Nhựa Resin
', N'dây inox
', N'Quartz (Pin)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH16-40', N'Samsung Galaxy Watch Active 2 - Vàng', 8990000, 20, N'16.png', N'Galaxy Watch Active 2 là thế hệ thứ 2 của dòng đồng hồ Active đến từ Samsung. Sản phẩm là một bản nâng cấp hoàn hảo so với người tiền nhiệm khi được trang bị và cải tiến nhiều công nghệ hiện đại, phục vụ tối ưu cho nhu cầu sử dụng của người dùng.', 5, 3, N'40mm', N'Kính cường lực Gorilla Glass Dx+
', N'dây silicone
', N'Exynos 9110
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH17-46', N'Samsung Gear S3 Frontier Like New', 1490000, 20, N'17.png', N'Samsung Gear S3 frontier là một phiên bản đồng hồ thông minh tiếp theo sau Gear S2, được đánh giá cao với nhiều cải tiến đáng chú ý. Dây cao su cá tính được thiết kế với họa tiết kẻ sọc tạo điểm nhấn bắt mắt hơn và cũng được làm dày hơn, mang đến độ chắc chắn và bền bỉ hơn. Đồng thời, Gear S3 frontier đạt tiêu chuẩn chống nước IP68, cho phép bạn sử dụng thoải mái khi rửa tay hoặc trong điều kiện mưa. Khả năng chống shock của nó cũng rất tốt, giúp bảo vệ thiết bị khỏi va đập và tổn thương. Màn hình kích thước 1.3 inch của Gear S3 frontier hiển thị chất lượng cao, với màu sắc, chi tiết và độ sáng ấn tượng, đảm bảo bạn có trải nghiệm tốt ngay cả khi ở ngoài ánh sáng mạnh.
', 5, 3, N'46mm', N'Kính cường lực
', N'Dây cao su
', N'Exynos 7 Dual 7270 (14 nm)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH18-41', N'ORIENT ESTEEM GEN 2 FAG02003W0', 7330000, 20, N'18.png', N'Đồng hồ Orient Esteem Gen 2 FAG02003W0 có 3 ưu điểm nổi bật là cơ lộ máy, dây da chính hãng, và chống nước 5ATM. Thiết kế của đồng hồ được cải tiến với mặt số lộ máy và bộ máy F6T22 sản xuất tại Nhật. Chất liệu và chế tác cao cấp, bao gồm mặt kính Mineral Crystal, kim giờ và phần niềng được mạ vàng, dây da chính hãng có vân cá sấu, và khóa kim truyền thống.
', 4, 2, N'41mm', N'Kính khoáng Mineral
', N'Dây da
', N'Automatic (Tự Động)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH19-40', N'ORIENT RA-AC0F08G10B', 8960000, 20, N'19.png', N'Mẫu Orient RA-AC0F08G10B phiên bản mạ vàng trên phần kim chỉ cùng nền cọc số, thiết kế trẻ trung với phần dây đeo vàng demi.
', 4, 2, N'40mm', N'Kính Sapphire
', N'Thép không gỉ
', N'Automatic (Tự Động)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH20-29', N'CITIZEN PD7153-05A', 8720000, 20, N'20.png', N'Mẫu Citizen PD7153-05A phiên bản vỏ máy cơ phối phiên bản màu vàng hồng thời trang sang trọng cho phái đẹp, cùng với thiết kế đơn giản chức năng 3 kim.
', 2, 2, N'29mm', N'Kính Sapphire
', N'Thép không gỉ
', N'Automatic (Tự Động)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH21-35', N'CITIZEN EV0052-50E', 3470000, 20, N'21.png', N'Đồng hồ Citizen EV0052-50E có mặt số sang trọng với nền đen quyến rũ, vạch số được đính pha lê cùng kim chỉ phủ vàng nổi bật, vỏ và dây đeo kim loại mạ vàng.
', 2, 1, N'35mm', N'Kính khoáng Mineral
', N'Thép không gỉ
', N'Automatic (Tự Động)
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH22-38', N'Apple Watch Series 2 Sport', 5990000, 20, N'22.png', N'Đồng hồ Thông Minh Apple Watch Series 2 - 38mm Space Gray Aluminum Case with Black Sport Band-MP0D2LL/A được "gã khổng lồ" công nghệ Mỹ đem lên khả năng chống nước cực kì ấn tượng. Theo đó, Đồng hồ có thể hoạt động tốt ở độ sâu 50 mét. Thậm chí, Apple còn cho biết họ thực hiện các bài kiểm tra rất nghiêm ngặt về tính năng này để đảm bảo rằng bạn có thể đi bơi hàng ngày với Apple Watch Series 2.
', 3, 3, N'38mm', N'Kính cường lực Ion-X
', N'Dây cao su
', N'S2
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH23-44', N'Apple Serie 5 GPS + Cellular MWWH2VN/A', 20990000, 20, N'23.png', N'Một tính năng mới được nâng cấp trên Apple Watch Series 5 không thể không nhắc tới đó là tính năng màn hình luôn luôn bật. Apple cuối cùng đã cho chúng ta tùy chọn để xem thời gian và một vài thông tin khác trên màn hình mọi lúc. Khi khởi động tính năng bạn chỉ cần lật cổ tay hoặc che màn hình bằng tay – màn hình sẽ mờ và một số hình ảnh động, như kim giây, sẽ dừng lại. Trên hết, Apple nói rằng điều này không ảnh hưởng tới thời lượng pin. Bạn vẫn sẽ sử dụng được tới 18 tiếng cho 1 lần sạc.', 3, 3, N'44mm', N'Kính cường lực Ion-X3
', N'Dây cao su cao cấp
', N'S5
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH24-35', N'CASIO LW-200-2AVDF', 907000, 20, N'24.png', N'Đồng hồ nữ Casio LW-200-2AVDF với mặt đồng hồ điện tử kính nhựa cao cấp, vỏ niềng làm bằng thép không gỉ màu trắng, dây đeo là cao su siêu bền màu xanh, với các tính năng của đồng hồ điện tử.', 1, 1, N'35mm', N'Kính nhựa Resin
', N'Dây cao su
', N'T1202
')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH25-45', N'CASIO MRW-200H-1EVDF', 856000, 20, N'25.png', N'Đồng hồ nam Casio MRW-200H-1EVDF mang phong cách nam tính và mạnh mẽ, với kiểu dáng ấn tượng từng chi tiết, đặc biệt là sự kết hợp giữa 2 màu đen và cam mang đến cho phái mạnh sự mới lạ.Đồng hồ nam Casio MRW-200H-1EVDF mang hơi hướng cổ điển với mặt  đồng hồ lên tới 44.6mm và chỉ số lượng  dễ nhìn. Khả năng chống nước lên tới 100 mét nước đầy ấn tượng, bạn đã có một chiếc đồng hồ nào dễ đọc, thiết kế đơn giản, dễ sử dùng mà lại có độ bền cao như chiếc đồng hồ này chưa.', 1, 1, N'45mm', N'Mặt kính nhựa có độ cứng cao, chống trầy xước', N'Dây nhựa', N'Quartz (Pin)')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH26-42', N'CITIZEN NJ0080-50A', 11185000, 20, N'26.png', N'Nhắc đến đồng hồ năng lượng ánh sáng thì cái tên danh giá nhất vẫn là Citizen, thế nhưng không vì thế mà các sản phẩm đồng hồ cơ lại kém nổi bật. Theo đó, đây là sản phẩm rất ăn khách không chỉ tại thị trường nội địa bởi từ lâu, người dùng đã nhận ra được chất lượng đến từ thương hiệu này.Bằng việc cho ra đời nhiều bộ sưu tập khác nhau, Citizen đã mang đến đa dạng sự lựa chọn ở nhiều phân khúc giá thành, phong cách thời trang dành cho mọi đối tượng, đặc biệt là nam. Riêng sản phẩm Citizen NJ0080-50A vừa được ra mắt lại nằm ở phân khúc giá rẻ mà ai cũng có thể sở hữu.Cũng như bao nhiêu thiết kế trước đó của Citizen, đồng hồ cơ Citizen NJ0080-50A sở hữu những đường nét tinh tế đến mượt mà. Việc tích hợp thêm bộ máy do chính thương hiệu này sản xuất đã giúp tăng thêm độ uy tín cho người sử dụng. Đây cũng là lợi thế riêng mà ít thương hiệu nào có được.', 2, 2, N'42mm', N'Sapphire (Kính Chống Trầy)', N'Thép Không Gỉ', N'Automatic (Tự Động)')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH27-43', N'ORIENT CABALLERO FAG00003W0', 8050000, 20, N'27.png', N'Bên cạnh việc mang đến hình ảnh lịch lãm, tinh tế của chi tiết cơ lộ máy, đồng hồ Orient FAG00003W0 còn thể hiện ngay mình chính là sự lựa chọn tuyệt vời, đẳng cấp nhất dành cho quý ông.

Với trào lưu là đồng hồ cơ khí, Orient FAG00003W0 đã bắt trọn xu hướng và mang đến cho phái mạnh một dòng sản phẩm thật sự chất lượng.Với phần lộ cơ đầy tinh tế, chiếm trọn vị trí 8h – 10h ngay trên mặt đồng hồ.Cụ thể, phần cơ lộ máy sở hữu chiếm trọn không gian rộng lớn trên mặt đồng hồ, giúp khoe trọn được những đường nét đến từ bộ máy bên trong. 

Trên thực tế, người dùng còn bị chinh phục bởi 22 chân kính cùng tần số 21.600 VPH, đảm bảo chuyển động nhanh, liên tục và bền bỉ theo thời gian.Cũng nhờ tần số chuyển động cao nên Orient FAG00003W0 có mức độ sai số cực kỳ thấp, đảm bảo thấp nhất -15 giây và cao nhất là +25 giây mỗi ngày. 

Ngoài chi tiết cơ lộ máy trên mặt, bạn cũng có thể dễ dàng chiêm ngưỡng khung cảnh hoạt động ấn tượng của dòng đồng hồ cơ bằng chi tiết thiết kế trong suốt ở mặt sau đồng hồ. Dĩ nhiên, phiên bản lần này cũng vậy.', 4, 2, N'43mm', N'Mineral Crystal (Kính Cứng)', N'Dây Da Chính Hãng', N'Automatic (Tự Động)')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH28-41', N'Apple watch series 8 LTE', 11890000, 20, N'28.png', N'Đồng hồ thông minh Apple Watch S8 LTE 41mm viền nhôm là một trong những dòng sản phẩm cao cấp được Apple trình làng vào tháng 9/2022. Với thiết kế thời thượng đi cùng nhiều tiện ích cao cấp, đây hứa hẹn sẽ là siêu phẩm được rất nhiều người săn đón.
Kiểu dáng hiện đại, phù hợp với đa dạng phong cách
Có thể thấy thiết kế của những chiếc đồng hồ thông minh Apple đều khá giống nhau kể từ khi mẫu đầu tiên ra mắt vào năm 2015. Và Apple Watch S8 LTE 41mm cũng sở hữu diện mạo đậm chất nhà Táo với mặt đồng hồ hình chữ nhật có các cạnh bo cong tinh tế, kết hợp cùng dây đeo silicone tạo cảm giác mềm mại, thoải mái và đủ nhẹ để bạn không cảm thấy bị vướng víu khi đeo trên tay.

Đồng hồ có kích thước mặt 41mm mang đến không gian hiển thị vừa đủ, tấm nền OLED đi cùng độ phân giải 430 x 352 pixels cho chất lượng hình ảnh sống động, rõ nét trong từng chi tiết. Chưa hết, màn hình của Apple Watch S8 LTE còn đạt độ sáng tối đa lên đến 1.000 nits, giúp bạn có thể nhìn tốt khi hoạt động trong môi trường ánh sáng mạnh.', 3, 3, N'41mm', N'Ion-X strengthened glass', N'Silicone', N'WatchOS phiên bản mới nhất')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH29-45', N'Samsung Galaxy Watch 3 Bluetooth GPS', 4690000, 20, N'29.png', N'Samsung Galaxy Watch 3 LTE 45mm dây da có thiết kế cổ điển, lịch lãm và hiện đại. Với tấm nền Super AMOLED 1.4 inch và độ phân giải 360x360 pixels, đồng hồ có khả năng hiển thị xuất sắc với màu sắc rực rỡ, thông tin hiển thị đầy đủ, rõ ràng. Khung viền xoay bezel được thay thế cho mặt xoay cảm ứng ở bản Watch Active 2.Galaxy Watch 3 được trang bị 40 mặt đồng hồ với nhiều phong cách khác nhau, khiến bạn luôn có cảm giác thú vị và mới mẻ trong quá trình sử dụng. Hỗ trợ eSIM giúp bạn có thể nghe, nhận cuộc gọi mà không cần phải mang theo điện thoại mọi lúc mọi nơi. Galaxy Watch 3 LTE còn có thể hiển thị toàn bộ đoạn hội thoại gần đây thay vì chỉ hiện tin nhắn đến, giúp mạch trò chuyện không bị gián đoạn. Hệ thống sẽ phân tích hình ảnh và đoạn hội thoại và đề xuất những câu trả lời theo đề tài, tiết kiệm thời gian nhập liệu cho bạn.Đồng hồ thông minh Galaxy Watch 3 có thời lượng pin tốt, dung lượng pin 340 mAh và được trang bị đế sạc nam châm không dây. Chỉ cần sạc trong 2 giờ, bạn đã có lượng pin đủ để sử dụng trong vòng 2 ngày.', 5, 3, N'45mm', N'Kính cường lực Gorilla Glass Dx+', N'Thép không gỉ', N'OS TIZEN')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADH30-40', N'CITIZEN NY4053-05A', 8600000, 18, N'30.png', N'Đồng hồ nam Citizen NY4053-05A có vỏ kim loại màu đồng tạo nên vẻ chắc chắn, kim chỉ và vạch số in nổi bật trên nền trắng trang trọng, kết hợp với dây đeo bằng chất liệu da màu nâu đem lại phong cách cổ điển lịch lãm cho phái mạnh.', 2, 2, N'40mm', N' Sapphire (Kính Chống  Trầy)', N'Dây Da Chính Hãng', N'Automatic (Tự Động)')
INSERT [dbo].[watchs] ([watch_id], [watch_name], [price], [total_quantity], [picture], [describe], [brand_id], [category_id], [size], [crystal], [bracelet_material], [movement]) VALUES (N'MADONGHO ', N'MADONGHO', 3000000, 10, N'01.png', N'dđ', 1, 1, NULL, NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[category] ADD  CONSTRAINT [DF_category_category_name]  DEFAULT (NULL) FOR [category_name]
GO
ALTER TABLE [dbo].[watchs] ADD  CONSTRAINT [DF_watchs_picture]  DEFAULT (NULL) FOR [picture]
GO
ALTER TABLE [dbo].[watchs] ADD  CONSTRAINT [DF_watchs_brand_id]  DEFAULT (NULL) FOR [brand_id]
GO
ALTER TABLE [dbo].[watchs] ADD  CONSTRAINT [DF_watchs_category_id]  DEFAULT (NULL) FOR [category_id]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_users]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_orders]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_users]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FK_customer_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK_customer_users]
GO
ALTER TABLE [dbo].[discount]  WITH CHECK ADD  CONSTRAINT [FK_discount_staffs1] FOREIGN KEY([staff_id])
REFERENCES [dbo].[staffs] ([staff_id])
GO
ALTER TABLE [dbo].[discount] CHECK CONSTRAINT [FK_discount_staffs1]
GO
ALTER TABLE [dbo].[discount_detail]  WITH CHECK ADD  CONSTRAINT [FK_discount_detail_discount] FOREIGN KEY([discount_id])
REFERENCES [dbo].[discount] ([discount_id])
GO
ALTER TABLE [dbo].[discount_detail] CHECK CONSTRAINT [FK_discount_detail_discount]
GO
ALTER TABLE [dbo].[discount_detail]  WITH CHECK ADD  CONSTRAINT [FK_discount_detail_watchs] FOREIGN KEY([watch_id])
REFERENCES [dbo].[watchs] ([watch_id])
GO
ALTER TABLE [dbo].[discount_detail] CHECK CONSTRAINT [FK_discount_detail_watchs]
GO
ALTER TABLE [dbo].[item_detail]  WITH CHECK ADD  CONSTRAINT [FK_item_detail_items] FOREIGN KEY([item_id])
REFERENCES [dbo].[items] ([item_id])
GO
ALTER TABLE [dbo].[item_detail] CHECK CONSTRAINT [FK_item_detail_items]
GO
ALTER TABLE [dbo].[item_detail]  WITH CHECK ADD  CONSTRAINT [FK_item_detail_watchs] FOREIGN KEY([watch_id])
REFERENCES [dbo].[watchs] ([watch_id])
GO
ALTER TABLE [dbo].[item_detail] CHECK CONSTRAINT [FK_item_detail_watchs]
GO
ALTER TABLE [dbo].[items]  WITH CHECK ADD  CONSTRAINT [FK_items_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[items] CHECK CONSTRAINT [FK_items_users]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([order_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_orders]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_watchs] FOREIGN KEY([watch_id])
REFERENCES [dbo].[watchs] ([watch_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_watchs]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_address] FOREIGN KEY([address_id])
REFERENCES [dbo].[address] ([address_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_address]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users] FOREIGN KEY([user_accept])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users2] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users2]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users3] FOREIGN KEY([user_delivery])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users3]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FK_reviews_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FK_reviews_users]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FK_reviews_watchs] FOREIGN KEY([watch_id])
REFERENCES [dbo].[watchs] ([watch_id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FK_reviews_watchs]
GO
ALTER TABLE [dbo].[staffs]  WITH CHECK ADD  CONSTRAINT [FK_staffs_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[staffs] CHECK CONSTRAINT [FK_staffs_users]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_role]
GO
ALTER TABLE [dbo].[warranty]  WITH CHECK ADD  CONSTRAINT [FK_warranty_order_detail] FOREIGN KEY([order_detail_id])
REFERENCES [dbo].[order_detail] ([order_detail_id])
GO
ALTER TABLE [dbo].[warranty] CHECK CONSTRAINT [FK_warranty_order_detail]
GO
ALTER TABLE [dbo].[warranty_detail]  WITH CHECK ADD  CONSTRAINT [FK_warranty_detail_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[warranty_detail] CHECK CONSTRAINT [FK_warranty_detail_users]
GO
ALTER TABLE [dbo].[warranty_detail]  WITH CHECK ADD  CONSTRAINT [FK_warranty_detail_warranty] FOREIGN KEY([warranty_id])
REFERENCES [dbo].[warranty] ([warranty_id])
GO
ALTER TABLE [dbo].[warranty_detail] CHECK CONSTRAINT [FK_warranty_detail_warranty]
GO
ALTER TABLE [dbo].[watchs]  WITH CHECK ADD  CONSTRAINT [FK_watchs_brands] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brands] ([brand_id])
GO
ALTER TABLE [dbo].[watchs] CHECK CONSTRAINT [FK_watchs_brands]
GO
ALTER TABLE [dbo].[watchs]  WITH CHECK ADD  CONSTRAINT [FK_watchs_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[watchs] CHECK CONSTRAINT [FK_watchs_category]
GO
