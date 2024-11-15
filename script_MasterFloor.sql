USE [master]
GO
/****** Object:  Database [MasterFloor]    Script Date: 14.11.2024 14:32:32 ******/
CREATE DATABASE [MasterFloor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterFloor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\MasterFloor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterFloor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\MasterFloor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MasterFloor] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterFloor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterFloor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterFloor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterFloor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterFloor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterFloor] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterFloor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterFloor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterFloor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterFloor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterFloor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterFloor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterFloor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterFloor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterFloor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterFloor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterFloor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterFloor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterFloor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterFloor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterFloor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterFloor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterFloor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterFloor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MasterFloor] SET  MULTI_USER 
GO
ALTER DATABASE [MasterFloor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterFloor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterFloor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterFloor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterFloor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterFloor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MasterFloor] SET QUERY_STORE = OFF
GO
USE [MasterFloor]
GO
/****** Object:  Table [dbo].[City]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] NOT NULL,
	[NameCity] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[id] [int] NOT NULL,
	[DistrictName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[id] [int] NOT NULL,
	[IndexName] [int] NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialTypeImport]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialTypeImport](
	[id] [int] NOT NULL,
	[idPartName] [int] NOT NULL,
	[BrackProcent] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_MaterialTypeImport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerName]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerName](
	[id] [int] NOT NULL,
	[NamePartner] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerName] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProductsImport]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProductsImport](
	[id] [int] NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[idPartner] [int] NOT NULL,
	[CountProduct] [int] NOT NULL,
	[DateSale] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProductsImport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnersImport]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnersImport](
	[id] [int] NOT NULL,
	[idTypeParner] [int] NOT NULL,
	[idPartner] [int] NOT NULL,
	[Director] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phoneNum] [nvarchar](50) NOT NULL,
	[idindex] [int] NOT NULL,
	[idDistrict] [int] NOT NULL,
	[idCity] [int] NOT NULL,
	[idStreet] [int] NOT NULL,
	[Home] [int] NOT NULL,
	[INN] [nvarchar](50) NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_PartnersImport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImports]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImports](
	[id] [int] NOT NULL,
	[idTypeProduct] [int] NOT NULL,
	[NameProduct] [nvarchar](100) NOT NULL,
	[Articul] [int] NOT NULL,
	[MinCost] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ProductImports] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeImport]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeImport](
	[id] [int] NOT NULL,
	[TypeProductName] [nvarchar](50) NOT NULL,
	[idProductType] [int] NULL,
	[CofTypeProd] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ProductTypeImport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[id] [int] NOT NULL,
	[StreetName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[id] [int] NOT NULL,
	[TypePartner] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProductId]    Script Date: 14.11.2024 14:32:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProductId](
	[id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeProductId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[City] ([id], [NameCity]) VALUES (1, N'Приморск')
INSERT [dbo].[City] ([id], [NameCity]) VALUES (2, N'Реутов')
INSERT [dbo].[City] ([id], [NameCity]) VALUES (3, N'Северодвинск')
INSERT [dbo].[City] ([id], [NameCity]) VALUES (4, N'СтарыйОскол')
INSERT [dbo].[City] ([id], [NameCity]) VALUES (5, N'Юрга')
GO
INSERT [dbo].[District] ([id], [DistrictName]) VALUES (1, N' Архангельская область')
INSERT [dbo].[District] ([id], [DistrictName]) VALUES (2, N' Белгородская область')
INSERT [dbo].[District] ([id], [DistrictName]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[District] ([id], [DistrictName]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[District] ([id], [DistrictName]) VALUES (5, N' Московская область')
GO
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (1, 143960)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (2, 164500)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (3, 188910)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (4, 309500)
INSERT [dbo].[Index] ([id], [IndexName]) VALUES (5, 652050)
GO
INSERT [dbo].[MaterialTypeImport] ([id], [idPartName], [BrackProcent]) VALUES (1, 1, CAST(0.10 AS Decimal(18, 2)))
INSERT [dbo].[MaterialTypeImport] ([id], [idPartName], [BrackProcent]) VALUES (2, 2, CAST(0.95 AS Decimal(18, 2)))
INSERT [dbo].[MaterialTypeImport] ([id], [idPartName], [BrackProcent]) VALUES (3, 3, CAST(0.28 AS Decimal(18, 2)))
INSERT [dbo].[MaterialTypeImport] ([id], [idPartName], [BrackProcent]) VALUES (4, 4, CAST(0.55 AS Decimal(18, 2)))
INSERT [dbo].[MaterialTypeImport] ([id], [idPartName], [BrackProcent]) VALUES (5, 5, CAST(0.34 AS Decimal(18, 2)))
GO
INSERT [dbo].[PartnerName] ([id], [NamePartner]) VALUES (1, N'База Строитель')
INSERT [dbo].[PartnerName] ([id], [NamePartner]) VALUES (2, N'МонтажПро')
INSERT [dbo].[PartnerName] ([id], [NamePartner]) VALUES (3, N'Паркет 29')
INSERT [dbo].[PartnerName] ([id], [NamePartner]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[PartnerName] ([id], [NamePartner]) VALUES (5, N'Стройсервис')
GO
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (1, N'Паркетная доска Ясень темный однополосная 14 мм', 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (4, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (6, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (7, N'Паркетная доска Ясень темный однополосная 14 мм', 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (8, N'Паркетная доска Ясень темный однополосная 14 мм', 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (9, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (10, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (11, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (12, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (13, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (14, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (15, N'Паркетная доска Ясень темный однополосная 14 мм', 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProductsImport] ([id], [ProductName], [idPartner], [CountProduct], [DateSale]) VALUES (16, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 2, 25000, CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[PartnersImport] ([id], [idTypeParner], [idPartner], [Director], [email], [phoneNum], [idindex], [idDistrict], [idCity], [idStreet], [Home], [INN], [Rating]) VALUES (1, 1, 1, N'Иванова Александра Ивановна', N'aleksandraivanova@ml.ru', N'+7(493)123-45-67', 5, 3, 5, 1, 15, NULL, 7)
INSERT [dbo].[PartnersImport] ([id], [idTypeParner], [idPartner], [Director], [email], [phoneNum], [idindex], [idDistrict], [idCity], [idStreet], [Home], [INN], [Rating]) VALUES (2, 1, 2, N'Степанов Степан Сергеевич', N'stepanov@stepan.ru', N'+7(912)888-33-33', 4, 2, 4, 3, 122, NULL, 10)
INSERT [dbo].[PartnersImport] ([id], [idTypeParner], [idPartner], [Director], [email], [phoneNum], [idindex], [idDistrict], [idCity], [idStreet], [Home], [INN], [Rating]) VALUES (3, 3, 3, N'Петров Василий Петрович', N'vppetrov@vl.ru', N'+7(987)123-56-78', 2, 1, 3, 5, 18, NULL, 7)
INSERT [dbo].[PartnersImport] ([id], [idTypeParner], [idPartner], [Director], [email], [phoneNum], [idindex], [idDistrict], [idCity], [idStreet], [Home], [INN], [Rating]) VALUES (4, 2, 4, N'Воробьева Екатерина Валерьевна', N'ekaterina.vorobeva@ml.ru', N'+7(444)222-33-11', 1, 5, 2, 4, 51, NULL, 5)
INSERT [dbo].[PartnersImport] ([id], [idTypeParner], [idPartner], [Director], [email], [phoneNum], [idindex], [idDistrict], [idCity], [idStreet], [Home], [INN], [Rating]) VALUES (5, 4, 5, N'Соловьев Андрей Николаевич', N'ansolovev@st.ru', N'+7(812)223-32-00', 3, 4, 1, 2, 21, NULL, 7)
GO
INSERT [dbo].[ProductImports] ([id], [idTypeProduct], [NameProduct], [Articul], [MinCost]) VALUES (1, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 7750282, CAST(1799.33 AS Decimal(18, 2)))
INSERT [dbo].[ProductImports] ([id], [idTypeProduct], [NameProduct], [Articul], [MinCost]) VALUES (2, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 7028748, CAST(3890.41 AS Decimal(18, 2)))
INSERT [dbo].[ProductImports] ([id], [idTypeProduct], [NameProduct], [Articul], [MinCost]) VALUES (3, 2, N'Паркетная доска Ясень темный однополосная 14 мм', 8758385, CAST(4456.90 AS Decimal(18, 2)))
INSERT [dbo].[ProductImports] ([id], [idTypeProduct], [NameProduct], [Articul], [MinCost]) VALUES (4, 2, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 8858958, CAST(7330.99 AS Decimal(18, 2)))
INSERT [dbo].[ProductImports] ([id], [idTypeProduct], [NameProduct], [Articul], [MinCost]) VALUES (5, 3, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 5012543, CAST(5450.59 AS Decimal(18, 2)))
GO
INSERT [dbo].[ProductTypeImport] ([id], [TypeProductName], [idProductType], [CofTypeProd]) VALUES (1, N'Ламинат', 1, CAST(2.35 AS Decimal(18, 2)))
INSERT [dbo].[ProductTypeImport] ([id], [TypeProductName], [idProductType], [CofTypeProd]) VALUES (2, N'Массивная доска', NULL, CAST(5.15 AS Decimal(18, 2)))
INSERT [dbo].[ProductTypeImport] ([id], [TypeProductName], [idProductType], [CofTypeProd]) VALUES (3, N'Паркетная доска', 2, CAST(4.34 AS Decimal(18, 2)))
INSERT [dbo].[ProductTypeImport] ([id], [TypeProductName], [idProductType], [CofTypeProd]) VALUES (4, N'Пробковое покрытие', 3, CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (1, N'Лесная')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (2, N'Парковая')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (3, N'Рабочая')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (4, N'Свободы')
INSERT [dbo].[Street] ([id], [StreetName]) VALUES (5, N'Строителей')
GO
INSERT [dbo].[Type] ([id], [TypePartner]) VALUES (1, N'ЗАО')
INSERT [dbo].[Type] ([id], [TypePartner]) VALUES (2, N'ОАО')
INSERT [dbo].[Type] ([id], [TypePartner]) VALUES (3, N'ООО')
INSERT [dbo].[Type] ([id], [TypePartner]) VALUES (4, N'ПАО')
GO
INSERT [dbo].[TypeProductId] ([id], [Name]) VALUES (1, N'Ламинат')
INSERT [dbo].[TypeProductId] ([id], [Name]) VALUES (2, N'Паркетная доска')
INSERT [dbo].[TypeProductId] ([id], [Name]) VALUES (3, N'Пробковое покрытие')
GO
ALTER TABLE [dbo].[MaterialTypeImport]  WITH CHECK ADD  CONSTRAINT [FK_MaterialTypeImport_PartnerName] FOREIGN KEY([idPartName])
REFERENCES [dbo].[PartnerName] ([id])
GO
ALTER TABLE [dbo].[MaterialTypeImport] CHECK CONSTRAINT [FK_MaterialTypeImport_PartnerName]
GO
ALTER TABLE [dbo].[PartnerProductsImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProductsImport_PartnerName] FOREIGN KEY([idPartner])
REFERENCES [dbo].[PartnerName] ([id])
GO
ALTER TABLE [dbo].[PartnerProductsImport] CHECK CONSTRAINT [FK_PartnerProductsImport_PartnerName]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_City] FOREIGN KEY([idCity])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_City]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_District] FOREIGN KEY([idDistrict])
REFERENCES [dbo].[District] ([id])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_District]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_Index] FOREIGN KEY([idindex])
REFERENCES [dbo].[Index] ([id])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_Index]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_PartnerName] FOREIGN KEY([idPartner])
REFERENCES [dbo].[PartnerName] ([id])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_PartnerName]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_Street] FOREIGN KEY([idStreet])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_Street]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_Type] FOREIGN KEY([idTypeParner])
REFERENCES [dbo].[Type] ([id])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_Type]
GO
ALTER TABLE [dbo].[ProductImports]  WITH CHECK ADD  CONSTRAINT [FK_ProductImports_TypeProductId] FOREIGN KEY([idTypeProduct])
REFERENCES [dbo].[TypeProductId] ([id])
GO
ALTER TABLE [dbo].[ProductImports] CHECK CONSTRAINT [FK_ProductImports_TypeProductId]
GO
ALTER TABLE [dbo].[ProductTypeImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductTypeImport_ProductImports] FOREIGN KEY([idProductType])
REFERENCES [dbo].[ProductImports] ([id])
GO
ALTER TABLE [dbo].[ProductTypeImport] CHECK CONSTRAINT [FK_ProductTypeImport_ProductImports]
GO
ALTER TABLE [dbo].[ProductTypeImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductTypeImport_Type] FOREIGN KEY([idProductType])
REFERENCES [dbo].[Type] ([id])
GO
ALTER TABLE [dbo].[ProductTypeImport] CHECK CONSTRAINT [FK_ProductTypeImport_Type]
GO
USE [master]
GO
ALTER DATABASE [MasterFloor] SET  READ_WRITE 
GO
