USE [master]
GO
/****** Object:  Database [School_ManagementSystem]    Script Date: 10-11-2024 16:21:55 ******/
CREATE DATABASE [School_ManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'School_ManagementSystem', FILENAME = N'C:\Users\Vishal\School_ManagementSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'School_ManagementSystem_log', FILENAME = N'C:\Users\Vishal\School_ManagementSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [School_ManagementSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [School_ManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [School_ManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [School_ManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [School_ManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [School_ManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [School_ManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [School_ManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [School_ManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [School_ManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [School_ManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [School_ManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [School_ManagementSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [School_ManagementSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [School_ManagementSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [School_ManagementSystem] SET QUERY_STORE = OFF
GO
USE [School_ManagementSystem]
GO
/****** Object:  Table [dbo].[Marks]    Script Date: 10-11-2024 16:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marks](
	[MarkId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[Score] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MarkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 10-11-2024 16:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Class] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 10-11-2024 16:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Marks] ON 

INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (1, 1, 1, 85)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (2, 1, 2, 78)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (3, 1, 3, 92)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (4, 2, 1, 88)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (5, 2, 2, 90)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (6, 2, 4, 95)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (7, 3, 1, 75)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (8, 3, 3, 80)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (9, 3, 5, 89)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (10, 4, 2, 94)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (11, 4, 4, 87)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (12, 5, 1, 77)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (13, 5, 2, 82)
INSERT [dbo].[Marks] ([MarkId], [StudentId], [SubjectId], [Score]) VALUES (14, 5, 5, 90)
SET IDENTITY_INSERT [dbo].[Marks] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Class]) VALUES (1, N'Rahul', N'Kumar', N'10th')
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Class]) VALUES (2, N'Vishal', N'Anand', N'10th')
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Class]) VALUES (3, N'Manish', N'Kumar', N'11th')
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Class]) VALUES (4, N'Yash', N'Kumar', N'12th')
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Class]) VALUES (5, N'Santosh', N'Rai', N'11th')
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [Class]) VALUES (6, N'vashu', N'anand', N'8')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([SubjectId], [Name]) VALUES (1, N'Mathematics')
INSERT [dbo].[Subjects] ([SubjectId], [Name]) VALUES (2, N'Science')
INSERT [dbo].[Subjects] ([SubjectId], [Name]) VALUES (3, N'English')
INSERT [dbo].[Subjects] ([SubjectId], [Name]) VALUES (4, N'History')
INSERT [dbo].[Subjects] ([SubjectId], [Name]) VALUES (5, N'Computer Science')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
ALTER TABLE [dbo].[Marks]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
ALTER TABLE [dbo].[Marks]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([SubjectId])
GO
USE [master]
GO
ALTER DATABASE [School_ManagementSystem] SET  READ_WRITE 
GO
