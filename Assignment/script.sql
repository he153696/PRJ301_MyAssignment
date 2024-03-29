USE [master]
GO
/****** Object:  Database [PRJ301]    Script Date: 3/19/2023 3:36:20 PM ******/
CREATE DATABASE [PRJ301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRJ301_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301', N'ON'
GO
ALTER DATABASE [PRJ301] SET QUERY_STORE = OFF
GO
USE [PRJ301]
GO
/****** Object:  Table [dbo].[attended]    Script Date: 3/19/2023 3:36:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attended](
	[roomid] [int] NOT NULL,
	[slotid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[userid] [int] NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roomid] ASC,
	[slotid] ASC,
	[date] ASC,
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class]    Script Date: 3/19/2023 3:36:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 3/19/2023 3:36:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group]    Script Date: 3/19/2023 3:36:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 3/19/2023 3:36:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[session]    Script Date: 3/19/2023 3:36:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[session](
	[roomid] [int] NOT NULL,
	[slotid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[courseid] [int] NOT NULL,
	[userid] [int] NOT NULL,
	[classid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roomid] ASC,
	[slotid] ASC,
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slot]    Script Date: 3/19/2023 3:36:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slot](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 3/19/2023 3:36:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[fullname] [nvarchar](255) NOT NULL,
	[gender] [bit] NOT NULL,
	[is_super] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_class]    Script Date: 3/19/2023 3:36:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_class](
	[classid] [int] NOT NULL,
	[userid] [int] NOT NULL,
	[courseid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[classid] ASC,
	[userid] ASC,
	[courseid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_group]    Script Date: 3/19/2023 3:36:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_group](
	[groupid] [int] NOT NULL,
	[userid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[groupid] ASC,
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[class] ON 

INSERT [dbo].[class] ([id], [name]) VALUES (1, N'SE1610')
INSERT [dbo].[class] ([id], [name]) VALUES (2, N'SE1611')
INSERT [dbo].[class] ([id], [name]) VALUES (3, N'SE1617')
INSERT [dbo].[class] ([id], [name]) VALUES (4, N'SE1618')
SET IDENTITY_INSERT [dbo].[class] OFF
GO
SET IDENTITY_INSERT [dbo].[course] ON 

INSERT [dbo].[course] ([id], [name]) VALUES (2, N'PRN')
INSERT [dbo].[course] ([id], [name]) VALUES (3, N'SWP')
INSERT [dbo].[course] ([id], [name]) VALUES (4, N'SWT')
INSERT [dbo].[course] ([id], [name]) VALUES (5, N'SWR')
INSERT [dbo].[course] ([id], [name]) VALUES (6, N'LAB')
INSERT [dbo].[course] ([id], [name]) VALUES (7, N'PRO')
INSERT [dbo].[course] ([id], [name]) VALUES (8, N'PRF')
SET IDENTITY_INSERT [dbo].[course] OFF
GO
SET IDENTITY_INSERT [dbo].[group] ON 

INSERT [dbo].[group] ([id], [name]) VALUES (1, N'admin')
INSERT [dbo].[group] ([id], [name]) VALUES (2, N'teacher')
INSERT [dbo].[group] ([id], [name]) VALUES (3, N'student')
SET IDENTITY_INSERT [dbo].[group] OFF
GO
SET IDENTITY_INSERT [dbo].[room] ON 

INSERT [dbo].[room] ([id], [name]) VALUES (1, N'D101')
INSERT [dbo].[room] ([id], [name]) VALUES (2, N'D102')
INSERT [dbo].[room] ([id], [name]) VALUES (3, N'D103')
INSERT [dbo].[room] ([id], [name]) VALUES (4, N'D104')
INSERT [dbo].[room] ([id], [name]) VALUES (5, N'D105')
INSERT [dbo].[room] ([id], [name]) VALUES (6, N'D106')
INSERT [dbo].[room] ([id], [name]) VALUES (7, N'D107')
INSERT [dbo].[room] ([id], [name]) VALUES (8, N'D108')
INSERT [dbo].[room] ([id], [name]) VALUES (9, N'D109')
INSERT [dbo].[room] ([id], [name]) VALUES (10, N'D110')
INSERT [dbo].[room] ([id], [name]) VALUES (11, N'D201')
INSERT [dbo].[room] ([id], [name]) VALUES (12, N'D202')
INSERT [dbo].[room] ([id], [name]) VALUES (13, N'D203')
INSERT [dbo].[room] ([id], [name]) VALUES (14, N'D204')
INSERT [dbo].[room] ([id], [name]) VALUES (15, N'D205')
INSERT [dbo].[room] ([id], [name]) VALUES (16, N'D206')
INSERT [dbo].[room] ([id], [name]) VALUES (17, N'D207')
INSERT [dbo].[room] ([id], [name]) VALUES (18, N'D208')
INSERT [dbo].[room] ([id], [name]) VALUES (19, N'D209')
INSERT [dbo].[room] ([id], [name]) VALUES (20, N'D210')
SET IDENTITY_INSERT [dbo].[room] OFF
GO
INSERT [dbo].[session] ([roomid], [slotid], [date], [courseid], [userid], [classid]) VALUES (1, 1, CAST(N'2022-07-16' AS Date), 2, 9, 1)
INSERT [dbo].[session] ([roomid], [slotid], [date], [courseid], [userid], [classid]) VALUES (1, 1, CAST(N'2022-07-20' AS Date), 2, 9, 1)
INSERT [dbo].[session] ([roomid], [slotid], [date], [courseid], [userid], [classid]) VALUES (1, 2, CAST(N'2022-07-16' AS Date), 2, 9, 1)
INSERT [dbo].[session] ([roomid], [slotid], [date], [courseid], [userid], [classid]) VALUES (1, 3, CAST(N'2022-07-16' AS Date), 3, 9, 1)
INSERT [dbo].[session] ([roomid], [slotid], [date], [courseid], [userid], [classid]) VALUES (1, 4, CAST(N'2022-07-16' AS Date), 6, 14, 1)
GO
SET IDENTITY_INSERT [dbo].[slot] ON 

INSERT [dbo].[slot] ([id], [name]) VALUES (1, N'Slot 1')
INSERT [dbo].[slot] ([id], [name]) VALUES (2, N'Slot 2')
INSERT [dbo].[slot] ([id], [name]) VALUES (3, N'Slot 3')
INSERT [dbo].[slot] ([id], [name]) VALUES (4, N'Sot 4')
INSERT [dbo].[slot] ([id], [name]) VALUES (5, N'Slot 5')
INSERT [dbo].[slot] ([id], [name]) VALUES (6, N'Slot 6')
SET IDENTITY_INSERT [dbo].[slot] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (9, N'teacher1', N'123456', N'teacher1@fpt.edu.vn', N'0123456789', N'teacher1', 0, 0)
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (10, N'admin', N'123456', N'admin@gmail.com', N'0123456789', N'admin', 1, 1)
INSERT [dbo].[user] ([id], [username], [password], [email], [phone], [fullname], [gender], [is_super]) VALUES (14, N'teacher2', N'123456', N'teacher2@fpt.edu.vn', N'0123456789', N'teacher2', 1, 0)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (1, 10)
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (2, 9)
INSERT [dbo].[user_group] ([groupid], [userid]) VALUES (2, 14)
GO
/****** Object:  Index [class_id]    Script Date: 3/19/2023 3:36:20 PM ******/
CREATE NONCLUSTERED INDEX [class_id] ON [dbo].[class]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [course_id]    Script Date: 3/19/2023 3:36:20 PM ******/
CREATE NONCLUSTERED INDEX [course_id] ON [dbo].[course]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [group_id]    Script Date: 3/19/2023 3:36:20 PM ******/
CREATE NONCLUSTERED INDEX [group_id] ON [dbo].[group]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [room_id]    Script Date: 3/19/2023 3:36:20 PM ******/
CREATE NONCLUSTERED INDEX [room_id] ON [dbo].[room]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [slot_id]    Script Date: 3/19/2023 3:36:20 PM ******/
CREATE NONCLUSTERED INDEX [slot_id] ON [dbo].[slot]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__user__AB6E6164E9EAFE63]    Script Date: 3/19/2023 3:36:20 PM ******/
ALTER TABLE [dbo].[user] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__user__F3DBC572A8C1E847]    Script Date: 3/19/2023 3:36:20 PM ******/
ALTER TABLE [dbo].[user] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [user_id]    Script Date: 3/19/2023 3:36:20 PM ******/
CREATE NONCLUSTERED INDEX [user_id] ON [dbo].[user]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[attended]  WITH CHECK ADD  CONSTRAINT [session_attended] FOREIGN KEY([roomid], [slotid], [date])
REFERENCES [dbo].[session] ([roomid], [slotid], [date])
GO
ALTER TABLE [dbo].[attended] CHECK CONSTRAINT [session_attended]
GO
ALTER TABLE [dbo].[attended]  WITH CHECK ADD  CONSTRAINT [user_attended] FOREIGN KEY([userid])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[attended] CHECK CONSTRAINT [user_attended]
GO
ALTER TABLE [dbo].[session]  WITH CHECK ADD  CONSTRAINT [class_session] FOREIGN KEY([classid])
REFERENCES [dbo].[class] ([id])
GO
ALTER TABLE [dbo].[session] CHECK CONSTRAINT [class_session]
GO
ALTER TABLE [dbo].[session]  WITH CHECK ADD  CONSTRAINT [couse_session] FOREIGN KEY([courseid])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[session] CHECK CONSTRAINT [couse_session]
GO
ALTER TABLE [dbo].[session]  WITH CHECK ADD  CONSTRAINT [room_session] FOREIGN KEY([roomid])
REFERENCES [dbo].[room] ([id])
GO
ALTER TABLE [dbo].[session] CHECK CONSTRAINT [room_session]
GO
ALTER TABLE [dbo].[session]  WITH CHECK ADD  CONSTRAINT [slot_session] FOREIGN KEY([slotid])
REFERENCES [dbo].[slot] ([id])
GO
ALTER TABLE [dbo].[session] CHECK CONSTRAINT [slot_session]
GO
ALTER TABLE [dbo].[session]  WITH CHECK ADD  CONSTRAINT [user_session_teacher] FOREIGN KEY([userid])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[session] CHECK CONSTRAINT [user_session_teacher]
GO
ALTER TABLE [dbo].[user_class]  WITH CHECK ADD  CONSTRAINT [user_class_class] FOREIGN KEY([classid])
REFERENCES [dbo].[class] ([id])
GO
ALTER TABLE [dbo].[user_class] CHECK CONSTRAINT [user_class_class]
GO
ALTER TABLE [dbo].[user_class]  WITH CHECK ADD  CONSTRAINT [user_class_course] FOREIGN KEY([courseid])
REFERENCES [dbo].[course] ([id])
GO
ALTER TABLE [dbo].[user_class] CHECK CONSTRAINT [user_class_course]
GO
ALTER TABLE [dbo].[user_class]  WITH CHECK ADD  CONSTRAINT [user_user_room] FOREIGN KEY([userid])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[user_class] CHECK CONSTRAINT [user_user_room]
GO
ALTER TABLE [dbo].[user_group]  WITH CHECK ADD  CONSTRAINT [group_user_group] FOREIGN KEY([groupid])
REFERENCES [dbo].[group] ([id])
GO
ALTER TABLE [dbo].[user_group] CHECK CONSTRAINT [group_user_group]
GO
ALTER TABLE [dbo].[user_group]  WITH CHECK ADD  CONSTRAINT [user_user_group] FOREIGN KEY([userid])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[user_group] CHECK CONSTRAINT [user_user_group]
GO
USE [master]
GO
ALTER DATABASE [PRJ301] SET  READ_WRITE 
GO
