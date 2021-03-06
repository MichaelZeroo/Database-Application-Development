USE [GSQ2_Michael_DAD]
GO
/****** Object:  Table [dbo].[TCustomer]    Script Date: 5/28/2018 1:32:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TCustomer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_TCustomer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TCustomer] ON 

INSERT [dbo].[TCustomer] ([ID], [Name], [Email], [Phone]) VALUES (1, N'Gurpreet', N'ga@gmail.com', N'123456')
INSERT [dbo].[TCustomer] ([ID], [Name], [Email], [Phone]) VALUES (2, N'Rakesh', N'rk@gmail.com', N'23456')
INSERT [dbo].[TCustomer] ([ID], [Name], [Email], [Phone]) VALUES (3, N'Kimat', N'ki@gmail.com', N'4567')
INSERT [dbo].[TCustomer] ([ID], [Name], [Email], [Phone]) VALUES (4, N'r', N'r', N'r123')
INSERT [dbo].[TCustomer] ([ID], [Name], [Email], [Phone]) VALUES (5, N't', N't', N't')
INSERT [dbo].[TCustomer] ([ID], [Name], [Email], [Phone]) VALUES (6, N'u', N'u', N'u')
SET IDENTITY_INSERT [dbo].[TCustomer] OFF
