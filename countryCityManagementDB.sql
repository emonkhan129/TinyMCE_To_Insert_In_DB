USE [master]
GO
/****** Object:  Database [TinyMceTestDB]    Script Date: 10/19/2016 3:42:36 PM ******/
CREATE DATABASE [TinyMceTestDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TinyMceTestDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TinyMceTestDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TinyMceTestDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TinyMceTestDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TinyMceTestDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TinyMceTestDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TinyMceTestDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TinyMceTestDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TinyMceTestDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TinyMceTestDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TinyMceTestDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TinyMceTestDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TinyMceTestDB] SET  MULTI_USER 
GO
ALTER DATABASE [TinyMceTestDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TinyMceTestDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TinyMceTestDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TinyMceTestDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TinyMceTestDB]
GO
/****** Object:  Table [dbo].[tinyMce]    Script Date: 10/19/2016 3:42:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tinyMce](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_tinyMce] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tinyMce] ON 

INSERT [dbo].[tinyMce] ([id], [description]) VALUES (1, N'dgfdg')
INSERT [dbo].[tinyMce] ([id], [description]) VALUES (2, N'<p>dfholdsof</p>')
INSERT [dbo].[tinyMce] ([id], [description]) VALUES (3, N'&lt;p&gt;dfgfdgfdg&lt;/p&gt;')
INSERT [dbo].[tinyMce] ([id], [description]) VALUES (4, N'&lt;p&gt;Mahamudul &lt;strong&gt;Nobi&lt;/strong&gt; Mohon&lt;/p&gt;')
INSERT [dbo].[tinyMce] ([id], [description]) VALUES (5, N'&lt;p&gt;Hasan is a &lt;strong&gt;student.&lt;/strong&gt;&lt;/p&gt;')
SET IDENTITY_INSERT [dbo].[tinyMce] OFF
USE [master]
GO
ALTER DATABASE [TinyMceTestDB] SET  READ_WRITE 
GO
