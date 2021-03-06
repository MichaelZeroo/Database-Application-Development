USE [GSQ2_Michael_DAD]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 6/6/2018 10:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Credit] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/6/2018 10:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Course]    Script Date: 6/6/2018 10:00:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Course](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SID] [int] NULL,
	[CID] [int] NULL,
	[EnrolDate] [date] NULL,
 CONSTRAINT [PK_Student_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseID], [Name], [Credit]) VALUES (1, N'GDIT', 100)
INSERT [dbo].[Course] ([CourseID], [Name], [Credit]) VALUES (2, N'GDIT', 100)
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([SID], [Name], [Address]) VALUES (1, N'Garry', N'Auckland')
INSERT [dbo].[Student] ([SID], [Name], [Address]) VALUES (2, N'Garry', N'Auckland')
INSERT [dbo].[Student] ([SID], [Name], [Address]) VALUES (3, N'Reza', N'Auckland')
INSERT [dbo].[Student] ([SID], [Name], [Address]) VALUES (4, N'Reza1', N'Auckland')
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[Student_Course] ON 

INSERT [dbo].[Student_Course] ([ID], [SID], [CID], [EnrolDate]) VALUES (1, 2, 2, NULL)
INSERT [dbo].[Student_Course] ([ID], [SID], [CID], [EnrolDate]) VALUES (2, 3, 1, NULL)
INSERT [dbo].[Student_Course] ([ID], [SID], [CID], [EnrolDate]) VALUES (3, 4, 1, CAST(N'2018-06-06' AS Date))
SET IDENTITY_INSERT [dbo].[Student_Course] OFF
ALTER TABLE [dbo].[Student_Course]  WITH CHECK ADD  CONSTRAINT [FK_Student_Course_Course] FOREIGN KEY([CID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Student_Course] CHECK CONSTRAINT [FK_Student_Course_Course]
GO
ALTER TABLE [dbo].[Student_Course]  WITH CHECK ADD  CONSTRAINT [FK_Student_Course_Student] FOREIGN KEY([SID])
REFERENCES [dbo].[Student] ([SID])
GO
ALTER TABLE [dbo].[Student_Course] CHECK CONSTRAINT [FK_Student_Course_Student]
GO
