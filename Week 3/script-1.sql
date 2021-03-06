USE [GSQ2_Michael_DAD]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 22/05/2018 10:40:19 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](30) NULL,
	[LoginID] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 22/05/2018 10:40:19 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](10) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 22/05/2018 10:40:19 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](300) NULL,
	[Warranty] [float] NOT NULL,
	[PricePerItem] [money] NOT NULL,
	[Stock] [int] NOT NULL,
	[Max_Limit] [int] NOT NULL,
	[Min_Limit] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sale]    Script Date: 22/05/2018 10:40:19 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[SaleID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalPrice] [money] NOT NULL,
	[PurchaseDate] [date] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoppingMall]    Script Date: 22/05/2018 10:40:19 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingMall](
	[SMID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Website] [nvarchar](300) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Owner] [nvarchar](50) NOT NULL,
	[LoginID] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingMall] PRIMARY KEY CLUSTERED 
(
	[SMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 22/05/2018 10:40:19 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[VendorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[MallID] [int] NOT NULL,
	[Owner] [varchar](50) NOT NULL,
	[LoginID] [int] NOT NULL,
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([ID], [Role], [UserName], [Password]) VALUES (3, N'VOwner', N'v', N'v')
INSERT [dbo].[Login] ([ID], [Role], [UserName], [Password]) VALUES (4, N'SOwner', N's', N's')
INSERT [dbo].[Login] ([ID], [Role], [UserName], [Password]) VALUES (5, N'Customer', N'c', N'c')
SET IDENTITY_INSERT [dbo].[Login] OFF
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Login] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Login] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Login]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Vendor] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([VendorID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Vendor]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Customer]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Product]
GO
ALTER TABLE [dbo].[ShoppingMall]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingMall_Login] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Login] ([ID])
GO
ALTER TABLE [dbo].[ShoppingMall] CHECK CONSTRAINT [FK_ShoppingMall_Login]
GO
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_Login] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Login] ([ID])
GO
ALTER TABLE [dbo].[Vendor] CHECK CONSTRAINT [FK_Vendor_Login]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [Role_Constraint] CHECK  (([Role]='VOwner' OR [Role]='Customer' OR [Role]='SOwner'))
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [Role_Constraint]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [Max_LimitConstraint] CHECK  (([Max_Limit]>[Min_Limit]))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [Max_LimitConstraint]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [Min_LimitConstraint] CHECK  (([Min_Limit]>=(5)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [Min_LimitConstraint]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [PricePerItem_ Contraint] CHECK  (([PricePerItem]>(0)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [PricePerItem_ Contraint]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [Stock_Constraint] CHECK  (([Stock]>=[Min_Limit] AND [Stock]<=[Max_Limit]))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [Stock_Constraint]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [Warranty_Constraint] CHECK  (([Warranty]>=(0) AND [Warranty]<=(5)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [Warranty_Constraint]
GO
