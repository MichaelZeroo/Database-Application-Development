USE [GSQ2_Michael_DAD]
GO
/****** Object:  Table [dbo].[CarFeature]    Script Date: 22/05/2018 11:47:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarFeature](
	[FeatureID] [int] IDENTITY(1,1) NOT NULL,
	[Car_Feature_Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarFeature] PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarModel]    Script Date: 22/05/2018 11:47:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarModel](
	[ModelID] [int] IDENTITY(1,1) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[NumberOfSeats] [int] NOT NULL,
	[EngineSize] [float] NOT NULL,
 CONSTRAINT [PK_CarModel] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cars_Sold]    Script Date: 22/05/2018 11:47:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars_Sold](
	[Car_Sold_ID] [int] IDENTITY(1,1) NOT NULL,
	[Car_For_Sale_Id] [int] NOT NULL,
	[Customer_Id] [int] NOT NULL,
	[Sale_Price] [money] NOT NULL,
	[Date_Sold] [date] NOT NULL,
 CONSTRAINT [PK_Cars_Sold] PRIMARY KEY CLUSTERED 
(
	[Car_Sold_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 22/05/2018 11:47:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[Licence_Number] [nvarchar](30) NOT NULL,
	[Age] [float] NOT NULL,
	[License_Expiry_Date] [date] NOT NULL,
 CONSTRAINT [PK_Cust] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 22/05/2018 11:47:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[Office_Address] [nvarchar](300) NOT NULL,
	[Phone_Extension_Number] [nvarchar](20) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeaturesOnCars]    Script Date: 22/05/2018 11:47:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeaturesOnCars](
	[Car_For_Sale_ID] [int] NOT NULL,
	[Car_Feature_ID] [int] NOT NULL,
 CONSTRAINT [PK_FeaturesOnCars] PRIMARY KEY CLUSTERED 
(
	[Car_For_Sale_ID] ASC,
	[Car_Feature_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndividualCar]    Script Date: 22/05/2018 11:47:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndividualCar](
	[CarID] [int] NOT NULL,
	[Colour] [nvarchar](50) NOT NULL,
	[Current_Mileage] [nvarchar](50) NOT NULL,
	[Date_Imported] [nchar](10) NOT NULL,
	[Manufacture_Year] [int] NOT NULL,
	[Transmission] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Body_Type] [nvarchar](50) NOT NULL,
	[Model_ID] [int] NOT NULL,
 CONSTRAINT [PK_IndividualCar] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Person]    Script Date: 22/05/2018 11:47:41 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](300) NOT NULL,
	[Telephone] [nvarchar](30) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cars_Sold]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Sold_Customer] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Cars_Sold] CHECK CONSTRAINT [FK_Cars_Sold_Customer]
GO
ALTER TABLE [dbo].[Cars_Sold]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Sold_IndividualCar] FOREIGN KEY([Car_For_Sale_Id])
REFERENCES [dbo].[IndividualCar] ([CarID])
GO
ALTER TABLE [dbo].[Cars_Sold] CHECK CONSTRAINT [FK_Cars_Sold_IndividualCar]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Person] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Person]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Person] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Person]
GO
ALTER TABLE [dbo].[FeaturesOnCars]  WITH CHECK ADD  CONSTRAINT [FK_FeaturesOnCars_CarFeature] FOREIGN KEY([Car_Feature_ID])
REFERENCES [dbo].[CarFeature] ([FeatureID])
GO
ALTER TABLE [dbo].[FeaturesOnCars] CHECK CONSTRAINT [FK_FeaturesOnCars_CarFeature]
GO
ALTER TABLE [dbo].[FeaturesOnCars]  WITH CHECK ADD  CONSTRAINT [FK_FeaturesOnCars_IndividualCar] FOREIGN KEY([Car_For_Sale_ID])
REFERENCES [dbo].[IndividualCar] ([CarID])
GO
ALTER TABLE [dbo].[FeaturesOnCars] CHECK CONSTRAINT [FK_FeaturesOnCars_IndividualCar]
GO
ALTER TABLE [dbo].[IndividualCar]  WITH CHECK ADD  CONSTRAINT [FK_IndividualCar_CarModel] FOREIGN KEY([Model_ID])
REFERENCES [dbo].[CarModel] ([ModelID])
GO
ALTER TABLE [dbo].[IndividualCar] CHECK CONSTRAINT [FK_IndividualCar_CarModel]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [CK_Role] CHECK  (([Role]='Admin' OR [Role]='Staff'))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [CK_Role]
GO
ALTER TABLE [dbo].[IndividualCar]  WITH CHECK ADD  CONSTRAINT [CK_BodyType] CHECK  (([Body_Type]='Sedan' OR [Body_Type]='SUV' OR [Body_Type]='Hatchback' OR [Body_Type]='Van' OR [Body_Type]='StationWagon'))
GO
ALTER TABLE [dbo].[IndividualCar] CHECK CONSTRAINT [CK_BodyType]
GO
ALTER TABLE [dbo].[IndividualCar]  WITH CHECK ADD  CONSTRAINT [CK_Status] CHECK  (([Status]='Sold' OR [Status]='Available' OR [Status]='UnderRepair'))
GO
ALTER TABLE [dbo].[IndividualCar] CHECK CONSTRAINT [CK_Status]
GO
ALTER TABLE [dbo].[IndividualCar]  WITH CHECK ADD  CONSTRAINT [CK_Transmission] CHECK  (([Transmission]='Manual' OR [Transmission]='Automatic' OR [Transmission]='Tiptronic'))
GO
ALTER TABLE [dbo].[IndividualCar] CHECK CONSTRAINT [CK_Transmission]
GO
