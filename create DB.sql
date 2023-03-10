USE [master]
GO

/****** Object:  Database [CryptoMadoff]    Script Date: 17/01/2023 23:24:26 ******/
CREATE DATABASE [CryptoMadoff]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CryptoMadoff', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2019\MSSQL\DATA\CryptoMadoff.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CryptoMadoff_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2019\MSSQL\DATA\CryptoMadoff_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CryptoMadoff].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [CryptoMadoff] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [CryptoMadoff] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [CryptoMadoff] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [CryptoMadoff] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [CryptoMadoff] SET ARITHABORT OFF 
GO

ALTER DATABASE [CryptoMadoff] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [CryptoMadoff] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [CryptoMadoff] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [CryptoMadoff] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [CryptoMadoff] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [CryptoMadoff] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [CryptoMadoff] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [CryptoMadoff] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [CryptoMadoff] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [CryptoMadoff] SET  DISABLE_BROKER 
GO

ALTER DATABASE [CryptoMadoff] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [CryptoMadoff] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [CryptoMadoff] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [CryptoMadoff] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [CryptoMadoff] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [CryptoMadoff] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [CryptoMadoff] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [CryptoMadoff] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [CryptoMadoff] SET  MULTI_USER 
GO

ALTER DATABASE [CryptoMadoff] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [CryptoMadoff] SET DB_CHAINING OFF 
GO

ALTER DATABASE [CryptoMadoff] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [CryptoMadoff] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [CryptoMadoff] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [CryptoMadoff] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [CryptoMadoff] SET QUERY_STORE = OFF
GO

ALTER DATABASE [CryptoMadoff] SET  READ_WRITE 
GO

