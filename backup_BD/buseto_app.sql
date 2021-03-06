USE [master]
GO
/****** Object:  Database [buseto_app]    Script Date: 19/04/2016 22:19:38 ******/
CREATE DATABASE [buseto_app]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'buseto_app', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\buseto_app.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'buseto_app_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\buseto_app_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [buseto_app] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [buseto_app].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [buseto_app] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [buseto_app] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [buseto_app] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [buseto_app] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [buseto_app] SET ARITHABORT OFF 
GO
ALTER DATABASE [buseto_app] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [buseto_app] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [buseto_app] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [buseto_app] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [buseto_app] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [buseto_app] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [buseto_app] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [buseto_app] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [buseto_app] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [buseto_app] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [buseto_app] SET  DISABLE_BROKER 
GO
ALTER DATABASE [buseto_app] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [buseto_app] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [buseto_app] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [buseto_app] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [buseto_app] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [buseto_app] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [buseto_app] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [buseto_app] SET RECOVERY FULL 
GO
ALTER DATABASE [buseto_app] SET  MULTI_USER 
GO
ALTER DATABASE [buseto_app] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [buseto_app] SET DB_CHAINING OFF 
GO
ALTER DATABASE [buseto_app] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [buseto_app] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'buseto_app', N'ON'
GO
USE [buseto_app]
GO
/****** Object:  Table [dbo].[t0001_users]    Script Date: 19/04/2016 22:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t0001_users](
	[f0001_rowid] [int] IDENTITY(1,1) NOT NULL,
	[f0001_id] [varchar](100) NOT NULL,
	[f0001_name] [varchar](40) NOT NULL,
	[f0001_user_name] [varchar](10) NULL,
	[f0001_cel] [varchar](12) NULL,
	[f0001_password] [varchar](40) NOT NULL,
	[f0001_email] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[f0001_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t0002_sessions]    Script Date: 19/04/2016 22:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t0002_sessions](
	[f0002_rowid] [int] IDENTITY(1,1) NOT NULL,
	[f0002_id_user] [varchar](100) NOT NULL,
	[f0002_date_ini] [datetime] NOT NULL,
	[f0002_date_end] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[f0002_rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t0003_travels]    Script Date: 19/04/2016 22:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t0003_travels](
	[f0003_rowid] [int] IDENTITY(1,1) NOT NULL,
	[f0003_id_travel] [int] NOT NULL,
	[f0003_desc_travel] [varchar](500) NULL,
	[f0003_destiny] [varchar](50) NOT NULL,
	[f0003_opening] [varchar](50) NOT NULL,
	[f0003_quotas] [int] NOT NULL,
	[f0003_price] [money] NOT NULL,
	[f0003_date_ini] [datetime] NOT NULL,
	[f0003_date_end] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[f0003_id_travel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t0004_reserves]    Script Date: 19/04/2016 22:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t0004_reserves](
	[f0004_rowid] [int] IDENTITY(1,1) NOT NULL,
	[f0004_id_travel] [int] NOT NULL,
	[f0004_id_user] [int] NOT NULL,
	[f0004_quotas] [int] NOT NULL,
	[f0004_price] [money] NOT NULL,
	[f0004_date_reserve] [datetime] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[t0002_sessions]  WITH CHECK ADD FOREIGN KEY([f0002_id_user])
REFERENCES [dbo].[t0001_users] ([f0001_id])
GO
ALTER TABLE [dbo].[t0004_reserves]  WITH CHECK ADD FOREIGN KEY([f0004_id_travel])
REFERENCES [dbo].[t0003_travels] ([f0003_id_travel])
GO
USE [master]
GO
ALTER DATABASE [buseto_app] SET  READ_WRITE 
GO
