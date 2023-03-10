USE [master]
GO
/****** Object:  Database [StudentManagmentSystem]    Script Date: 1/13/2023 11:31:45 PM ******/
CREATE DATABASE [StudentManagmentSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentManagmentSystem', FILENAME = N'D:\Techlift_Contour Software\WEN22WE- Web Engineering - .Net\StudentManagmentSystem\Project\StudentManagment\StudentManagmentSystem\Database\StudentManagmentSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StudentManagmentSystem_log', FILENAME = N'D:\Techlift_Contour Software\WEN22WE- Web Engineering - .Net\StudentManagmentSystem\Project\StudentManagment\StudentManagmentSystem\Database\StudentManagmentSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StudentManagmentSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentManagmentSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentManagmentSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentManagmentSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentManagmentSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentManagmentSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentManagmentSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StudentManagmentSystem] SET  MULTI_USER 
GO
ALTER DATABASE [StudentManagmentSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentManagmentSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentManagmentSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentManagmentSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StudentManagmentSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StudentManagmentSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [StudentManagmentSystem] SET QUERY_STORE = OFF
GO
USE [StudentManagmentSystem]
GO
/****** Object:  Table [dbo].[Batch]    Script Date: 1/13/2023 11:31:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batch](
	[BId] [int] IDENTITY(1,1) NOT NULL,
	[Batch] [varchar](50) NULL,
	[Year] [varchar](50) NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[BId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 1/13/2023 11:31:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CId] [int] IDENTITY(1,1) NOT NULL,
	[Course] [varchar](50) NULL,
	[duration] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registeration]    Script Date: 1/13/2023 11:31:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registeration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [varchar](50) NULL,
	[Last Name] [varchar](50) NULL,
	[CNIC] [varchar](50) NULL,
	[Batch_Id] [int] NULL,
	[Course_Id] [int] NULL,
	[ContactNo] [int] NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_Registeration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/13/2023 11:31:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [varchar](50) NULL,
	[Last Name] [varchar](50) NULL,
	[User Name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Registeration]  WITH CHECK ADD  CONSTRAINT [FK_Registeration_Batch] FOREIGN KEY([Batch_Id])
REFERENCES [dbo].[Batch] ([BId])
GO
ALTER TABLE [dbo].[Registeration] CHECK CONSTRAINT [FK_Registeration_Batch]
GO
ALTER TABLE [dbo].[Registeration]  WITH CHECK ADD  CONSTRAINT [FK_Registeration_Course] FOREIGN KEY([Course_Id])
REFERENCES [dbo].[Course] ([CId])
GO
ALTER TABLE [dbo].[Registeration] CHECK CONSTRAINT [FK_Registeration_Course]
GO
USE [master]
GO
ALTER DATABASE [StudentManagmentSystem] SET  READ_WRITE 
GO
