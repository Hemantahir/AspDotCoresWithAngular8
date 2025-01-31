USE [master]
GO
/****** Object:  Database [WebAPI]    Script Date: 1/28/2019 2:06:44 PM ******/
CREATE DATABASE [WebAPI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebAPI.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebAPI_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebAPI] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebAPI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebAPI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebAPI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebAPI] SET RECOVERY FULL 
GO
ALTER DATABASE [WebAPI] SET  MULTI_USER 
GO
ALTER DATABASE [WebAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebAPI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebAPI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebAPI] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebAPI] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebAPI', N'ON'
GO
USE [WebAPI]
GO
/****** Object:  Table [dbo].[ProductList]    Script Date: 1/28/2019 2:06:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[askingprice] [numeric](18, 0) NOT NULL,
	[cropyear] [int] NOT NULL,
	[freight] [varchar](50) NOT NULL,
	[movement] [varchar](50) NOT NULL,
	[leftday] [nvarchar](50) NOT NULL,
	[ret] [nvarchar](50) NOT NULL,
	[complted] [int] NOT NULL,
	[isactive] [bit] NOT NULL CONSTRAINT [DF_ProductList_isactive]  DEFAULT ((1)),
 CONSTRAINT [PK_ProductList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ProductList] ON 

INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (1, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'erasy', N'5', N'5.4', 5, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (2, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'erasy', N'5', N'5.4', 5, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (3, N'', CAST(0 AS Numeric(18, 0)), 0, N'', N'', N'', N'', 0, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (4, N'', CAST(0 AS Numeric(18, 0)), 0, N'', N'', N'', N'', 0, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (5, N'', CAST(0 AS Numeric(18, 0)), 0, N'', N'', N'', N'', 0, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (6, N'', CAST(0 AS Numeric(18, 0)), 0, N'', N'', N'', N'', 0, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (7, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'erasy', N'5', N'5.4', 5, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (8, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'erasy', N'5', N'5.4', 5, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (9, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'erasy', N'5', N'5.4', 5, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (10, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'erasy', N'5', N'5.4', 5, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (11, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'erasy', N'5', N'5.4', 5, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (12, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'erasy', N'5', N'5.4', 5, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (13, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'erasy', N'5', N'5.4', 5, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (14, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'erasy', N'5', N'5.4', 5, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (15, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'erasy', N'5', N'5.4', 5, 1)
INSERT [dbo].[ProductList] ([Id], [Title], [askingprice], [cropyear], [freight], [movement], [leftday], [ret], [complted], [isactive]) VALUES (16, N'hemant', CAST(2500 AS Numeric(18, 0)), 2018, N'Udn-2015', N'hsdhs', N'5', N'5.4', 5, 1)
SET IDENTITY_INSERT [dbo].[ProductList] OFF
USE [master]
GO
ALTER DATABASE [WebAPI] SET  READ_WRITE 
GO
