USE [master]
GO
/****** 对象:  Database [QPGameScoreDB]    脚本日期: 05/25/2011 20:31:42 ******/
CREATE DATABASE [QPGameScoreDB] ON  PRIMARY 
( NAME = N'QPGameScoreDB', FILENAME = N'D:\数据库\QPGameScoreDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QPGameScoreDB_log', FILENAME = N'D:\数据库\QPGameScoreDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'QPGameScoreDB', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QPGameScoreDB].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [QPGameScoreDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QPGameScoreDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QPGameScoreDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QPGameScoreDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QPGameScoreDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QPGameScoreDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QPGameScoreDB] SET  READ_WRITE 
GO
ALTER DATABASE [QPGameScoreDB] SET RECOVERY FULL 
GO
ALTER DATABASE [QPGameScoreDB] SET  MULTI_USER 
GO
ALTER DATABASE [QPGameScoreDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QPGameScoreDB] SET DB_CHAINING OFF 

if ( ((@@microsoftversion / power(2, 24) = 8) and (@@microsoftversion & 0xffff >= 760)) or 
		(@@microsoftversion / power(2, 24) >= 9) )begin 
	exec dbo.sp_dboption @dbname =  N'QPGameScoreDB', @optname = 'db chaining', @optvalue = 'OFF'
 end